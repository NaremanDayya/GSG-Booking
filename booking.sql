-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 09:44 AM
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
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(5, 'Developer', 'developer', NULL, '2023-09-24 13:16:46'),
(6, 'Skills', 'skills', NULL, NULL),
(7, 'In-kind partnerships', 'in-kind-partnerships', NULL, NULL),
(9, 'Support our mission', 'support-our-mission', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_titile` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `short_descp` text NOT NULL,
  `long_descp` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `user_id`, `post_titile`, `post_slug`, `post_image`, `short_descp`, `long_descp`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Hire a developer', 'hire-a-developer', 'upload/post/1777936588927336.jpg', 'We provide over 1,000 hours of intensive coding and professional skills training to create Palestine’s best junior developers. Our customer success team will assess your requirements and vet the best candidates for your needs.', '<div class=\"nectar-highlighted-text\" data-style=\"half_text\" data-exp=\"default\" data-user-color=\"true\" data-using-custom-color=\"true\" data-animation-delay=\"false\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h2><em class=\"animated\"><strong>Selection</strong></em></h2>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>GSG developers are only eligible for training in the GSG Code Academy after performing over 1,000 hours of self-learning HTML/CSS and Javascript fundamentals. We actively seek out developers who have a demonstrated capacity for critical inquiry, research, and self-learning. We then ensure that admitted trainees have English proficiency, are adaptable, and have the behavioral mindset for an intensive six-month course.&nbsp;</p>\r\n<div class=\"nectar-highlighted-text\" data-style=\"half_text\" data-exp=\"default\" data-user-color=\"true\" data-using-custom-color=\"true\" data-animation-delay=\"false\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h2><em class=\"animated\"><strong>Training</strong></em></h2>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>GSG developers undergo over 1,000 hours of pair programming, refactoring code, writing algorithms, and delivering prototypes to clients. They focus on Javascript, React, and Node.js to start.</p>\r\n<p>Beyond those technologies, we equip our developers with the skills and attitude to be lifelong self-learners, ready to pick up new technologies and start their careers in local or distributed teams.</p>\r\n<div class=\"nectar-highlighted-text\" data-style=\"half_text\" data-exp=\"default\" data-user-color=\"true\" data-using-custom-color=\"true\" data-animation-delay=\"false\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h2><em class=\"animated\"><strong>Hiring</strong></em></h2>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>Only the top developers who graduate from our six-month training program are presented to our clients. After hire, we continue to provide career coaching and professional development services to our developers. Through our customized recruitment processes and ongoing support, we aim to work in partnership with clients to deliver value for money and long-term growth potential for the next generation of Palestinian tech talent.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2023-09-24 13:21:01', NULL),
(2, 6, 1, 'Volunteer', 'volunteer', 'upload/post/1777936731247699.jpg', 'We are a community-driven organization that values giving back and paying it forward. Join our international community of volunteer mentors consisting of top-tier engineers, marketers, designers, investors, and tech startup leaders.', '<div id=\"fws_650fc6627b877\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row_col_wrap_12_inner col span_12  left\">\r\n<div class=\"vc_col-sm-12 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"nectar-highlighted-text\" data-style=\"half_text\" data-exp=\"default\" data-using-custom-color=\"true\" data-animation-delay=\"150\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h1><strong>About the GSG&nbsp;<em class=\"animated\">Mentorship Network</em></strong></h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"fws_650fc6627bc02\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row-bg-wrap\">\r\n<div class=\"row-bg\">&nbsp;</div>\r\n</div>\r\n<div class=\"row_col_wrap_12_inner col span_12  left\">\r\n<div class=\"vc_col-sm-6 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>The emerging Palestinian tech and startup ecosystem presents a fascinating alternative to the traditional ecosystems found across the world. With a large pool of bright and motivated talent, the biggest obstacle is isolation. Circulation of knowledge is limited and international best practices in technology and leadership are hard to access, leaving little room for career advancement, job opportunities &ndash; or even internships.</p>\r\n</div>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>This is where you can make a difference. Through virtual and in-person mentorship, Gaza Sky Geeks aims to expose aspiring tech professionals to global best practices in software development and entrepreneurship.&nbsp;<strong>We are continuously on the lookout for developers, startup founders, designers, professional skills coaches, angel investors and other experts to join the GSG Mentorship Network.</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"vc_col-sm-6 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>What makes our mentors unique is their love of the tech sector, curiosity of emerging markets and passion for creating new opportunities. Palestine being one of the least accessible tech ecosystems in the world provides a unique challenge for budding and experienced mentors to do meaningful work and develop professional contacts and friendships with like-minded peers in Palestine and internationally.</p>\r\n</div>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p><strong>With an ever-present demand for mentors, our network is a bespoke initiative, continuously reviewing applications and matching skilled mentors with promising mentees. If you are interested in joining the Gaza Sky Geeks network of international mentors submit your application now!</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"fws_650fc6627c121\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row-bg-wrap\">&nbsp;</div>\r\n</div>', '2023-09-24 13:49:13', '2023-09-24 13:49:13'),
(3, 7, 1, 'Sponsorship', 'sponsorship', 'upload/post/1777936815460618.jpg', 'Does your company have in-kind services you can offer or other partnership ideas? Join leading global brands like Google, Amazon, Heroku, Slack, Hubspot, Salesforce, Upwork, Stripe, and more in supporting Palestine’s tech sector.', '<div id=\"fws_650fc6627b877\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row_col_wrap_12_inner col span_12  left\">\r\n<div class=\"vc_col-sm-12 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"nectar-highlighted-text\" data-style=\"half_text\" data-exp=\"default\" data-using-custom-color=\"true\" data-animation-delay=\"150\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h1><strong>About the GSG&nbsp;<em class=\"animated\">Mentorship Network</em></strong></h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"fws_650fc6627bc02\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row-bg-wrap\">\r\n<div class=\"row-bg\">&nbsp;</div>\r\n</div>\r\n<div class=\"row_col_wrap_12_inner col span_12  left\">\r\n<div class=\"vc_col-sm-6 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>The emerging Palestinian tech and startup ecosystem presents a fascinating alternative to the traditional ecosystems found across the world. With a large pool of bright and motivated talent, the biggest obstacle is isolation. Circulation of knowledge is limited and international best practices in technology and leadership are hard to access, leaving little room for career advancement, job opportunities &ndash; or even internships.</p>\r\n</div>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>This is where you can make a difference. Through virtual and in-person mentorship, Gaza Sky Geeks aims to expose aspiring tech professionals to global best practices in software development and entrepreneurship.&nbsp;<strong>We are continuously on the lookout for developers, startup founders, designers, professional skills coaches, angel investors and other experts to join the GSG Mentorship Network.</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"vc_col-sm-6 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>What makes our mentors unique is their love of the tech sector, curiosity of emerging markets and passion for creating new opportunities. Palestine being one of the least accessible tech ecosystems in the world provides a unique challenge for budding and experienced mentors to do meaningful work and develop professional contacts and friendships with like-minded peers in Palestine and internationally.</p>\r\n</div>\r\n</div>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p><strong>With an ever-present demand for mentors, our network is a bespoke initiative, continuously reviewing applications and matching skilled mentors with promising mentees. If you are interested in joining the Gaza Sky Geeks network of international mentors submit your application now!</strong></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"fws_650fc6627c121\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row-bg-wrap\">&nbsp;</div>\r\n</div>', '2023-09-24 13:24:37', NULL),
(4, 9, 1, 'Donate', 'donate', 'upload/post/1777936911388418.jpg', 'Gaza Sky Geeks is a program of Mercy Corps, a US–registered 501(c)3 and EU-registered charity. Your donation is likely eligible for matching through your employer and maybe tax-deductible if you reside in the USA or EU.', '<div id=\"fws_65106304c1b26\" class=\"wpb_row vc_row-fluid vc_row full-width-section\" data-column-margin=\"default\" data-midnight=\"dark\" data-top-percent=\"2%\" data-bottom-percent=\"2%\">\r\n<div class=\"row_col_wrap_12 col span_12 dark left\">\r\n<div class=\"vc_col-sm-12 wpb_column column_container vc_column_container col no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div id=\"fws_65106304c1dfb\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row_col_wrap_12_inner col span_12  left\">\r\n<div class=\"vc_col-sm-12 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"nectar-highlighted-text\" data-style=\"regular_underline\" data-exp=\"default\" data-underline-thickness=\"default\" data-using-custom-color=\"false\" data-animation-delay=\"false\" data-color=\"\" data-color-gradient=\"\">\r\n<h3><strong>Your support empowers the next generation of Palestine&rsquo;s pioneering founders, freelancers, and coders.</strong></h3>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"SupportUs\" class=\"wpb_row vc_row-fluid vc_row full-width-section\" data-column-margin=\"default\" data-midnight=\"dark\" data-top-percent=\"2%\" data-bottom-percent=\"2%\">\r\n<div class=\"row-bg-wrap\" data-bg-animation=\"none\" data-bg-animation-delay=\"\" data-bg-overlay=\"false\">\r\n<div class=\"inner-wrap row-bg-layer\">\r\n<div class=\"row-bg viewport-desktop using-bg-color\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"nectar-shape-divider-wrap no-color \" data-using-percent-val=\"true\" data-height=\"40%\" data-front=\"\" data-style=\"straight_section\" data-position=\"top\">&nbsp;</div>\r\n<div class=\"row_col_wrap_12 col span_12 dark left\">\r\n<div class=\"vc_col-sm-12 wpb_column column_container vc_column_container col no-extra-padding inherit_tablet inherit_phone \" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div id=\"fws_65106304c2468\" class=\"wpb_row vc_row-fluid vc_row inner_row\" data-midnight=\"\" data-column-margin=\"default\">\r\n<div class=\"row-bg-wrap\">\r\n<div class=\"row-bg\">&nbsp;</div>\r\n</div>\r\n<div class=\"row_col_wrap_12_inner col span_12  left\">\r\n<div class=\"vc_col-sm-3 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone  one-fourths clear-both\" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"nectar-highlighted-text\" data-style=\"full_text\" data-exp=\"default\" data-using-custom-color=\"true\" data-animation-delay=\"150\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h2><strong><em class=\"animated\">Donate</em></strong></h2>\r\n</div>\r\n<a class=\"nectar-button large regular accent-color has-icon  regular-button\" href=\"https://fundraise.mercycorps.org/index.cfm?fuseaction=donordrive.personalCampaign&amp;participantID=35227\" target=\"_blank\" rel=\"noopener\" data-color-override=\"false\" data-hover-color-override=\"false\" data-hover-text-color-override=\"#fff\">Give Now</a>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>Gaza Sky Geeks is a program of&nbsp;<a href=\"https://mercycorps.org/\" target=\"_blank\" rel=\"noopener noreferrer\">Mercy Corps</a>, a&nbsp;<strong>US</strong>&ndash;<em><strong>registered&nbsp;</strong><strong>501(c)3 and EU-registered charity.&nbsp;</strong></em>Your donation is likely eligible for matching through your employer and may be tax-deductible if you reside in the USA or EU.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"vc_col-sm-3 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone  one-fourths right-edge\" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"nectar-highlighted-text\" data-style=\"full_text\" data-exp=\"default\" data-using-custom-color=\"true\" data-animation-delay=\"150\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h2><strong><em class=\"animated\">Volunteer</em></strong></h2>\r\n</div>\r\n<a class=\"nectar-button large regular accent-color has-icon  regular-button\" href=\"https://gazaskygeeks.com/mentor/\" data-color-override=\"false\" data-hover-color-override=\"false\" data-hover-text-color-override=\"#fff\">Apply To Mentor</a>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>We are a community-driven organization that values giving back and paying it forward. Join our international community of volunteer mentors consisting of top-tier engineers, marketers, designers, investors, and tech startup leaders.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"vc_col-sm-3 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone  one-fourths clear-both\" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"nectar-highlighted-text\" data-style=\"full_text\" data-exp=\"default\" data-using-custom-color=\"true\" data-animation-delay=\"150\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h2><strong><em class=\"animated\">Hire Talent</em></strong></h2>\r\n</div>\r\n<a class=\"nectar-button large regular accent-color has-icon  regular-button\" href=\"https://gazaskygeeks.com/talent/\" data-color-override=\"false\" data-hover-color-override=\"false\" data-hover-text-color-override=\"#fff\">Meet Our Developers</a>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>We provide over 1,000 hours of intensive coding and professional skills training to create Palestine&rsquo;s best junior developers. Our customer success team will assess your requirements and vet the best candidates for your needs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"vc_col-sm-3 wpb_column column_container vc_column_container col child_column no-extra-padding inherit_tablet inherit_phone  one-fourths right-edge\" data-padding-pos=\"all\" data-has-bg-color=\"false\" data-bg-color=\"\" data-bg-opacity=\"1\" data-animation=\"\" data-delay=\"0\">\r\n<div class=\"vc_column-inner\">\r\n<div class=\"wpb_wrapper\">\r\n<div class=\"nectar-highlighted-text\" data-style=\"full_text\" data-exp=\"default\" data-using-custom-color=\"true\" data-animation-delay=\"150\" data-color=\"#ffa41f\" data-color-gradient=\"\">\r\n<h2><strong><em class=\"animated\">Sponsorship</em></strong></h2>\r\n</div>\r\n<a class=\"nectar-button large regular accent-color has-icon  regular-button\" href=\"mailto:info@gazaskygeeks.com\" target=\"_blank\" rel=\"noopener\" data-color-override=\"false\" data-hover-color-override=\"false\" data-hover-text-color-override=\"#fff\">Get In Touch</a>\r\n<div class=\"wpb_text_column wpb_content_element \">\r\n<div class=\"wpb_wrapper\">\r\n<p>Does your company have in-kind services you can offer or other partnership ideas? Join leading global brands like Google, Amazon, Heroku, Slack, Hubspot, Salesforce, Upwork, Stripe, and more in supporting Palestine&rsquo;s tech sector.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2023-09-24 13:27:31', '2023-09-24 13:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rooms_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `person` int(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `rooms_id`, `user_id`, `check_in`, `check_out`, `person`, `code`, `status`, `created_at`, `updated_at`) VALUES
(22, 14, 2, '09/24/2023', '2023-09-25', 1, 'EM3HFQ', 1, '2023-09-24 04:36:23', '2023-09-24 14:25:28'),
(31, 12, 2, '09/24/2023', '09/25/2023', 1, 'BXlbLX', 1, '2023-09-24 14:23:24', '2023-09-24 14:23:37'),
(32, 14, 2, '09/24/2023', '09/25/2023', 70, '8dQBNV', 0, '2023-09-24 16:23:15', '2023-09-24 16:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `booking_room_lists`
--

CREATE TABLE `booking_room_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_areas`
--

CREATE TABLE `book_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_title` varchar(255) DEFAULT NULL,
  `main_title` varchar(255) DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_areas`
--

INSERT INTO `book_areas` (`id`, `image`, `short_title`, `main_title`, `short_desc`, `link_url`, `created_at`, `updated_at`) VALUES
(1, 'upload/bookarea/1777829109600028.jpg', 'WorkSpace-GSG', 'WorkSpace', 'We want to build an internationally admired and competitive tech sector in Palestine that creates high-salary jobs and future leaders.\r\n\r\nTo get there, we are connecting world-class technical, professional, financial, and community resources to any Palestinian who wants to work online or in tech.', 'https://gazaskygeeks.com/about/', '2023-09-22 21:50:24', '2023-09-23 08:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Test', '1', '2023-09-24 14:07:33', '2023-09-24 14:17:18'),
(2, 2, 1, 'Nice!!!!!!', '1', '2023-09-24 14:17:00', '2023-09-24 14:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rooms_id` bigint(20) UNSIGNED NOT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_22_200905_create_teams_table', 2),
(6, '2023_09_22_202320_create_book_areas_table', 3),
(8, '2023_09_02_202321_create_room_types_table', 4),
(9, '2023_09_21_202113_create_rooms_table', 5),
(10, '2023_09_22_202319_create_multi_images_table (1)', 5),
(11, '2023_09_23_195445_create_facilities_table', 5),
(12, '2023_09_23_202347_create_bookings_table', 6),
(14, '2023_09_23_202324_create_room_booked_dates_table', 7),
(15, '2023_09_23_202336_create_booking_room_lists_table', 8),
(18, '2023_09_24_104255_create_room_lists_table', 9),
(19, '2023_09_24_202336_create_booking_room_lists_table', 9),
(20, '2023_09_24_131339_create_smtp_settings_table', 10),
(21, '2023_09_24_202321_create_testimonials_table', 11),
(22, '2023_09_24_202311_create_blog_categories_table', 12),
(33, '2023_09_24_193141_create_permission_tables', 13),
(34, '2023_09_24_201310_create_notifications_table', 13),
(35, '2023_09_24_202301_create_contacts_table', 13);

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
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rooms_id` bigint(20) UNSIGNED NOT NULL,
  `multi_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'role.permission.menu', 'Role and Permission', 'web', '2023-09-24 16:57:44', '2023-09-24 16:57:44'),
(4, 'contact.message.menu', 'Contact Message', 'web', '2023-09-24 16:58:03', '2023-09-24 16:58:03'),
(5, 'comment.menu', 'Manage Comment', 'web', '2023-09-24 16:59:02', '2023-09-24 16:59:02'),
(6, 'blog.post.list', 'Blog', 'web', '2023-09-24 16:59:23', '2023-09-24 16:59:23'),
(7, 'blog.category', 'Blog', 'web', '2023-09-24 16:59:47', '2023-09-24 16:59:47'),
(8, 'tesimoinal.menu', 'Tesimonial', 'web', '2023-09-24 17:00:08', '2023-09-24 17:00:08'),
(9, 'room.list', 'RoomList', 'web', '2023-09-24 17:00:38', '2023-09-24 17:00:38'),
(10, 'booking.menu', 'Booking', 'web', '2023-09-24 17:00:49', '2023-09-24 17:00:49'),
(11, 'room.menu', 'Manage Room', 'web', '2023-09-24 17:01:11', '2023-09-24 17:01:11'),
(12, 'book.area', 'Book Area', 'web', '2023-09-24 17:01:30', '2023-09-24 17:01:30'),
(13, 'team.menu', 'Team', 'web', '2023-09-24 17:01:42', '2023-09-24 17:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
(1, 'Super Admin', 'web', '2023-09-24 17:04:06', '2023-09-24 17:04:06'),
(3, 'Manager', 'web', '2023-09-24 17:04:27', '2023-09-24 17:04:27'),
(5, 'Admin', 'web', '2023-09-24 17:20:31', '2023-09-24 17:20:31');

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
(3, 1),
(3, 5),
(4, 1),
(4, 3),
(4, 5),
(5, 1),
(5, 3),
(5, 5),
(6, 1),
(6, 3),
(6, 5),
(7, 1),
(7, 3),
(7, 5),
(8, 1),
(8, 3),
(8, 5),
(9, 1),
(9, 3),
(9, 5),
(10, 1),
(10, 3),
(10, 5),
(11, 1),
(11, 3),
(11, 5),
(12, 1),
(12, 3),
(12, 5),
(13, 1),
(13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `room_type` enum('meetingroom','room','workspace') NOT NULL DEFAULT 'workspace',
  `room_capacity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` enum('sinaea','capital_mall','khan_younes') NOT NULL,
  `short_desc` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `room_type`, `room_capacity`, `image`, `location`, `short_desc`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Meeting Room', 'meetingroom', '20', 'upload/roomimg/1777829760760394.jpeg', 'sinaea', '<p>We want to build an internationally admired and competitive tech sector in Palestine that creates high-salary jobs and future leaders.</p>', 1, '2023-09-23 09:03:01', '2023-09-23 09:45:40'),
(12, 'Work Space', 'workspace', '1', 'upload/roomimg/1777830175123684.jpeg', 'capital_mall', '<p>We want to build an internationally admired and competitive tech sector in Palestine that creates high-salary jobs and future leaders.</p>', 1, '2023-09-23 09:09:37', '2023-09-23 13:26:07'),
(14, 'Room', 'workspace', '70', 'upload/roomimg/1777912160911380.jpeg', 'khan_younes', '<table id=\"example\" class=\"table table-striped table-bordered dataTable no-footer\" role=\"grid\" aria-describedby=\"example_info\">\r\n<tbody>\r\n<tr class=\"odd\" role=\"row\">\r\n<td>\r\n<p>We want to build an internationally admired and competitive tech sector in Palestine that creates high-salary jobs and future leaders.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, '2023-09-24 06:52:44', '2023-09-24 06:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `room_booked_dates`
--

CREATE TABLE `room_booked_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `book_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_lists`
--

CREATE TABLE `room_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name_room` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_code` varchar(255) NOT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_lists`
--

INSERT INTO `room_lists` (`id`, `room_id`, `name_room`, `room_type`, `location`, `booking_id`, `booking_code`, `check_in`, `check_out`, `person`, `user_id`, `name_user`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Room', 'Room', 'Capetal Mall', NULL, 'IriKJs', '2023-09-24', '2023-09-24', '1', 1, 'admin@gmail.com', 'admin@gmail.com', '+9874123251', 'palestian', '2023-09-24 08:38:12', '2023-09-24 08:38:12'),
(10, NULL, 'Room', 'Room', '', NULL, '1URdaN', '2023-09-24', '2023-09-24', '1', 1, 'admin@gmail.com', 'admin@gmail.com', '+9874123251', 'palestian', '2023-09-24 08:38:28', '2023-09-24 08:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(7, 'Work Space', '2023-09-22 19:40:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `mailer`, `host`, `port`, `username`, `password`, `encryption`, `from_address`, `created_at`, `updated_at`) VALUES
(2, 'test', 'test', '5252', 'test', 'test', 'testt', 'test@gmail.com', '2023-09-24 15:12:31', '2023-09-24 12:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `postion` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `postion`, `facebook`, `created_at`, `updated_at`) VALUES
(2, 'upload/team/1777774754796958.png', 'Ali', 'assistent', 'www.facebook.com//', '2023-09-22 18:40:51', '2023-09-22 18:40:51'),
(3, 'upload/team/1777828631564001.png', 'Saraa', 'assistentt', 'www.facebook.com', '2023-09-23 08:45:05', '2023-09-23 08:45:05'),
(4, 'upload/team/1777828661809866.png', 'Mohammed', 'Developer', 'www.facebook.com', '2023-09-23 08:45:37', '2023-09-23 08:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `city`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Heba', 'Gaza', 'upload/testimonial/1777934179374035.jpg', 'Workspace is a very comfortable, quiet and suitable place to work!', '2023-09-24 12:42:43', NULL),
(2, 'Ahmed', 'Gaza', 'upload/testimonial/1777934227842724.jpg', 'Meeting Roomoomis a very comfortable, quiet and suitable place to meeting', '2023-09-24 12:45:58', '2023-09-24 12:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `code` varchar(10) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$nsVUfCDr9fEyTayLfGkfXeo7dEc1JgWNoLqS55q6OXdsqRVyrhNKi', '202309222016202203112055download.jpg', '+972006841', 'Gaza', 'admin', 'active', '', NULL, NULL, '2023-09-22 17:16:41'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$Me466DyjReZ1BDjL6H3rDePJGZD7Jhf/ZaHvcEQ4yNQD77r2B2qym', '202309222019202203112055download.jpg', '+684124878', 'Gaza', 'user', 'active', '', NULL, NULL, '2023-09-22 17:19:47'),
(3, 'test', 'test@gmail.com', NULL, '$2y$10$wa4q75VWsOjxbMH7nuGxYOpiFm00rYLj9oyt90Fd9K9sVW1YalDrG', '202309242029team-img4.jpg', '+9874123251', 'palestian', 'admin', 'active', NULL, NULL, '2023-09-24 17:27:49', '2023-09-24 17:29:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blogcat_id` (`blogcat_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_rooms_id_foreign` (`rooms_id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`);

--
-- Indexes for table `booking_room_lists`
--
ALTER TABLE `booking_room_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_room_lists_booking_id_foreign` (`booking_id`),
  ADD KEY `booking_room_lists_room_id_foreign` (`room_id`);

--
-- Indexes for table `book_areas`
--
ALTER TABLE `book_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facilities_rooms_id_foreign` (`rooms_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multi_images_rooms_id_foreign` (`rooms_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_booked_dates`
--
ALTER TABLE `room_booked_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_booked_dates_booking_id_foreign` (`booking_id`),
  ADD KEY `room_booked_dates_room_id_foreign` (`room_id`);

--
-- Indexes for table `room_lists`
--
ALTER TABLE `room_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_lists_room_id_foreign` (`room_id`),
  ADD KEY `room_lists_booking_id_foreign` (`booking_id`),
  ADD KEY `room_lists_user_id_foreign` (`user_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `booking_room_lists`
--
ALTER TABLE `booking_room_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_areas`
--
ALTER TABLE `book_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `room_booked_dates`
--
ALTER TABLE `room_booked_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_lists`
--
ALTER TABLE `room_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `blog_posts_ibfk_2` FOREIGN KEY (`blogcat_id`) REFERENCES `blog_categories` (`id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `booking_room_lists`
--
ALTER TABLE `booking_room_lists`
  ADD CONSTRAINT `booking_room_lists_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `booking_room_lists_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `blog_posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `facilities`
--
ALTER TABLE `facilities`
  ADD CONSTRAINT `facilities_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD CONSTRAINT `multi_images_rooms_id_foreign` FOREIGN KEY (`rooms_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_booked_dates`
--
ALTER TABLE `room_booked_dates`
  ADD CONSTRAINT `room_booked_dates_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `room_booked_dates_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `room_lists`
--
ALTER TABLE `room_lists`
  ADD CONSTRAINT `room_lists_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `room_lists_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `room_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
