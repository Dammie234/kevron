-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2024 at 11:40 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kevron`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counts` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `counts`, `created_at`, `updated_at`) VALUES
(1, 'News', 'news', 1, '2023-03-01 16:49:47', '2023-09-12 14:29:35'),
(2, 'Health & Safety', 'health-safety', 1, '2023-03-01 16:55:15', '2023-09-12 12:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate` tinyint(1) DEFAULT NULL,
  `duration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assessment` tinyint(1) DEFAULT NULL,
  `calender` text COLLATE utf8mb4_unicode_ci,
  `video_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syllabus_guide` text COLLATE utf8mb4_unicode_ci,
  `qualification` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_method` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accreditation` text COLLATE utf8mb4_unicode_ci,
  `entry_requirements` mediumtext COLLATE utf8mb4_unicode_ci,
  `qualification_lead_to` mediumtext COLLATE utf8mb4_unicode_ci,
  `qualification_important` mediumtext COLLATE utf8mb4_unicode_ci,
  `quality_standards` mediumtext COLLATE utf8mb4_unicode_ci,
  `mode_of_study` mediumtext COLLATE utf8mb4_unicode_ci,
  `assessment_note` mediumtext COLLATE utf8mb4_unicode_ci,
  `certification_note` mediumtext COLLATE utf8mb4_unicode_ci,
  `support` mediumtext COLLATE utf8mb4_unicode_ci,
  `regulated_qualification` mediumtext COLLATE utf8mb4_unicode_ci,
  `healthcare_information` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `title`, `sub_title`, `slug`, `amount`, `currency`, `description`, `instructor_id`, `featured_image`, `certificate`, `duration`, `assessment`, `calender`, `video_url`, `syllabus_guide`, `qualification`, `study_method`, `accreditation`, `entry_requirements`, `qualification_lead_to`, `qualification_important`, `quality_standards`, `mode_of_study`, `assessment_note`, `certification_note`, `support`, `regulated_qualification`, `healthcare_information`, `created_at`, `updated_at`) VALUES
(1, 3, 'IOSH Managing Safely', NULL, 'iosh-managing-safely', '75000', NULL, 'Managing safely is a flexible course for managers, team leaders, and supervisors in any sector, and any organization. It brings managers up to speed on the practical actions they need to take to handle health and safety in their teams.\r\n<br>\r\nManaging safely won\'t turn learners into health and safety experts – but it will give them the knowledge and tools to tackle the health and safety issues they’re responsible for. Importantly – it brings home why health and safety are such an essential part of their job.', '2', 'assets/img/courses/1676706599.jpeg', 1, '2 weeks', 0, 'https://drive.google.com/file/d/1t9HkX459wBQr17malrfATn2Atzfp_erp/view?usp=share_link', 'https://www.youtube.com/embed/LqlkO_hxoiA', 'https://drive.google.com/file/d/1ThgYc4nHGfefobJt-Csn44LyzDO8rz9l/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-17 14:31:39', '2023-07-20 10:43:00'),
(2, 3, 'IOSH Working Safely Course', NULL, 'iosh-working-safely-course', '85000', NULL, 'Everyone at work should have an understanding of why they must \'work safely\'. Working safely is a one-day course for people at any level, in any sector, needing a grounding of health and safety. It focuses on why health and safety is important, and how you can make a real difference to the wellbeing of yourself and others through changing your behaviour.\r\n<br>\r\nIt focuses on best practice rather than legislation, it\'s suitable for delegates from around the world, and not just those from the UK. The course is a 100% match to the Health and Safety Executive\'s \'Passport\' syllabus. Working safely is recognised as an equivalent to a level 1 award in health and safety in a construction environment. This means that delegates who successfully complete it can apply for a Construction Skills Certification Scheme (CSCS) green Labourer card once they’ve passed the CITB Health, Safety and Environment Operatives Test.', '2', 'assets/img/courses/xDsFB7xqoa.jpeg', 1, '2 weeks', 1, 'https://drive.google.com/file/d/1t9HkX459wBQr17malrfATn2Atzfp_erp/view?usp=share_link', NULL, 'https://drive.google.com/file/d/1ThgYc4nHGfefobJt-Csn44LyzDO8rz9l/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-18 11:07:45', '2023-07-20 10:42:49'),
(6, 8, 'OTHM Level 3 Foundation Diploma in Health and Social Care', 'OFQUAL Regulated Qualification, Equivalent to GCEAS / A Levels / Level 3 NVQ', 'othm-level-3-foundation-diploma-in-health-and-social-care', '750', 'Pounds', '<p>This&nbsp;course aim to develop the knowledge, skills and competence of anyone who works in or desire to work in various roles in the health and social care sector.</p><p>The OTHM qualification is perfect for anyone who presently work in the health and social care sector and would like to develop their skills and knowledge to become a future manager. The course is also perfect for people from diverse professional backgrounds seeking to pursue a career in the health and social care industry in care roles within Hospitals, Care Homes, Residential settings, Domiciliary services or Daycare services. </p><p>OTHM qualification is regulated by Ofqual (Office of Qualifications and Examinations Regulation) and it is a recognized as a qualification for care workers and senior care workers in health and social care.</p><p> </p><p> </p>', NULL, 'assets/img/courses/w6nSfAr9df.jpeg', 1, 'Can be completed within 3 – 6 Months (Fast Track)', 0, NULL, NULL, NULL, 'Level 3 Foundation Diploma in Health and Social Care. Regulated Qualification', 'Virtual, Self-paced', '<p>OTHM Level 3 Foundation Diploam in Health and Social Care is regulated by Ofqual <strong>(Office of Qualifications and Examinations Regulation)</strong> and it is a recognized as a qualification for care workers and senior care workers in health and social care.</p>', '<p>OTHM Level 3 qualifications can be offered to learners from age 18 or above. While OTHM does not specify entry requirements for these qualifications, we encourage those undertaking the course to have a minimum level of English language competency. This is to ensures that learners admitted to the programme have sufficient capability at the right level to undertake the learning and assessment criteria.&nbsp;</p>', '<p>Individuals pursuing this qualification may grow to become manager in their present role within the health and social care setting or find employment in positions such as:</p><ul><li>Adult or Domiciliary Care Worker</li><li>Health Worker</li><li>Care Worker</li><li>Support Worker</li><li>Social Care Worker</li></ul>', '<p>OTHM Qualifications in Health and Social Care are regulated by Ofqual (Office of Qualifications and Examinations Regulation).</p><p>OTHM Qualifications equip learners with the underpinning knowledge, understanding and skills required for a career in the health and social care sector as a support worker, senior support worker, care assistant level and managerial positions in this sector.</p><p>The programme enables learners to demonstrate their skills by producing evidence from their work activities, to meet national occupational standards. Learners will acquire skills to support a role in the Health and Social Care sector or progress to further study.</p><p>OTHM has progression arrangements with several UK universities that acknowledges the ability of learners after studying Level 3-7 qualifications to be considered for advanced entry into corresponding degree year/top up and Master’s/top-up programmes in Nursing and other related field / courses. Health and Social Care qualifications are also of high demand globally including in US and Canada.</p>', '<p>OTHM Qualifications are approved and regulated by Ofqual (Office of Qualifications and Examinations Regulation). Visit register of Regulated Qualifications. </p><p>OTHM has progression arrangements with several UK universities that acknowledges the ability of learners after studying Level 3-7 qualifications to be considered for advanced entry into corresponding degree year/top up and Master’s/top-up programmes.&nbsp;</p>', '<p>Lecture will be held ones a week via classroom or virtual and runs for 4 months (16 weekends) and there after you will be required to undertake a work experience in a health and social care setting. At least you will be required to provide evidence of not less than 200hrs of work experience in form of practical experience and portfolio completion.</p><p>The OTHM Level 3 Foundation Diploma in Health and Social Care qualification consists of 6 mandatory units, for a combined total of 60 credits, 600 hours Total Qualification Time (TQT) and 120 Guided Learning Hours (GLH) for the completed qualification.&nbsp;</p>', '<p>No exams are necessary for this programme. Assessment is based on both written work only. Learners will be expected to produce assignments which are assessed by the assessor to cover the underpinning knowledge. </p><p>All units within this qualification are internally assessed by the centre and externally verified by OTHM. To achieve a ‘pass’ for a unit, learners must provide evidence to demonstrate that they have fulfilled all the learning outcomes and meet the standards specified by all assessment criteria. Judgement that the learners have successfully fulfilled the assessment criteria is made by the assessor.&nbsp;</p>', '<p>Upon successfully passing the qualification<strong>,</strong>&nbsp;the learner will get an Ofqual Regulated PDF Certificate from OTHM. OTHM Qualifications (Awarding Body) only issues verifiable certificates and Transcripts electronically and securely in&nbsp;PDF format without an extra fee.</p><p> If you like to get a hard copy of the Certificate and Transcript so you can claim it by paying the extra fee.</p><ul><li>Certificate and Transcript + Standard postage charges local = £60</li><li>Certificate and Transcript + Standard postage charges International = £70</li><li>Certificate and Transcript + Courier Services charges International = £100</li></ul>', '<p>We will prepare and guide you through the entire process of the course to ensure you achieve the OTHM qualification and help you build the skills and experience required to qualify you as a health and social care worker.</p><p>We will also provide you with information on how you can progress in this field including how to apply for jobs within the UK or from your country of residence.</p><p>We also help with CV reviews and provide information on potential UK recruiters to send your CV to and how you can stand out in your application and increase your chance for success in your interview. We will also provide information about career progression including information about the industry and opportunities available in the UK, US and Canada etc</p>', '<p>A regulated qualification is delivered by a learning institution which is regulated by a government body. In England, the government body which regulates courses is Ofqual. Ofqual regulated qualifications sit on the Regulated Qualifications Framework (RQF), which can help students understand how different qualifications in different fields compare to each other. The framework also helps students to understand what qualifications they need to progress towards a higher learning goal, such as a university degree or equivalent higher education award.</p>', '<p>You can learn more about the UK Health and Care Worker Visa and the UK Shortage Occupations, please visit the UK Government website using the links below:</p><p><a href=\"https://www.gov.uk/health-care-worker-visa/your-job\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.gov.uk/health-care-worker-visa/your-job</a></p><p>&nbsp;<a href=\"https://www.gov.uk/health-care-worker-visa\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.gov.uk/health-care-worker-visa</a></p><p><a href=\"https://www.gov.uk/government/publications/skilled-worker-visa-shortage-occupations/skilled-worker-visa-shortage-occupations\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.gov.uk/government/publications/skilled-worker-visa-shortage-occupations/skilled-worker-visa-shortage-occupations</a></p>', '2024-01-09 07:38:24', '2024-01-12 16:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

CREATE TABLE `course_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_categories`
--

INSERT INTO `course_categories` (`id`, `title`, `slug`, `featured_image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'AOSH Courses', 'aosh-courses', 'assets/img/course_category/health-and-safety.jpg', 'Courses on First Aid, Health & Safety, Fire Safety, Food Safety', '2023-02-04 19:15:08', '2023-02-04 19:15:08'),
(2, 'ABIOSH Accredited Courses', 'abiosh-accredited-courses', 'assets/img/course_category/abiosh.jpg', 'Courses on ABIOSH International Certificate in Occupational Health and', '2023-02-04 19:18:58', '2023-02-04 19:18:58'),
(3, 'IOSH Courses', 'iosh-courses', 'assets/img/course_category/project-safety-management.jpg', 'Courses on IOSH Working Safely, IOSH Managing Safely', '2023-02-05 02:37:26', '2023-02-05 02:37:26'),
(4, 'ISO Lead Auditor Courses', 'iso-lead-auditor-courses', 'assets/img/course_category/iso.jpg', 'Courses on QMS Auditor/Lead Auditor ( ISO 9001:2015 CQI & IRCA),OH&S MS Auditor/Lead Auditor', '2023-02-05 02:49:26', '2023-02-05 02:49:26'),
(5, 'Specialized HSE Training Courses', 'specialized-hse-training-courses', 'assets/img/course_category/hse.jpg', 'Courses on Behavioural Based Safety and Leadership, Design Risk Management and Coordination,', '2023-02-05 03:15:01', '2023-02-05 03:15:01'),
(6, 'Software Training Courses', 'software-training-courses', 'assets/img/course_category/software-training.jpg', 'Courses on Advanced Excel, Advanced PowerPoint, Best Practice in Building Operations Maintenance', '2023-02-05 04:37:34', '2023-02-05 04:37:34'),
(7, 'Technical Training Courses', 'technical-training-courses', 'assets/img/course_category/technical.jpg', 'Courses on Advanced Excel, Advanced PowerPoint, Best Practice in Building Operations Maintenance', '2023-02-05 04:41:06', '2023-02-05 04:41:06'),
(8, 'OTHM Qualifications', 'othm-qualifications', 'assets/img/course_category/othm.jpg', 'Courses on OTHM qualifications for engineering, occupational health and safety, project management, etc.', '2024-01-08 16:20:02', '2024-01-08 16:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `course_outlines`
--

CREATE TABLE `course_outlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_outlines`
--

INSERT INTO `course_outlines` (`id`, `course_id`, `name`, `level`, `credit`, `created_at`, `updated_at`) VALUES
(2, '2', 'Introducing working safely', NULL, NULL, '2023-02-18 20:54:58', '2023-09-12 14:25:11'),
(3, '2', 'Defining hazard and risk', NULL, NULL, '2023-02-18 20:54:58', '2023-02-18 20:54:58'),
(4, '2', 'Identifying common hazards', NULL, NULL, '2023-02-18 20:54:58', '2023-09-12 14:25:17'),
(6, '2', 'Protecting our environment.', NULL, NULL, '2023-02-18 20:54:58', '2023-02-20 08:33:09'),
(7, '1', NULL, NULL, NULL, '2023-02-20 06:03:36', '2023-02-20 06:03:36'),
(8, '1', 'Introducing managing safely', NULL, NULL, '2023-02-20 06:03:36', '2023-02-20 06:03:36'),
(9, '1', 'Assessing risks', NULL, NULL, '2023-02-20 06:03:36', '2023-02-20 06:03:36'),
(10, '1', 'Controlling risks', NULL, NULL, '2023-02-20 06:03:36', '2023-02-20 06:03:36'),
(11, '1', 'Understanding your responsibilities', NULL, NULL, '2023-02-20 06:03:36', '2023-02-20 06:03:36'),
(13, '6', 'Responsibilities of a Health and Social Care worker', '3', '10', '2024-01-09 07:58:16', '2024-01-09 07:58:16'),
(14, '6', 'Personal and Professional Development in Health and Social Care', '3', '10', '2024-01-09 07:58:16', '2024-01-09 07:58:16'),
(15, '6', 'Effective Communication and Ethical Practice in Health and Social Care', '3', '10', '2024-01-09 07:58:16', '2024-01-09 07:58:16'),
(16, '6', 'Health, Safety, and Wellbeing in Health and Social Care Settings.', '3', '10', '2024-01-09 07:58:16', '2024-01-09 08:11:36'),
(17, '6', NULL, NULL, NULL, '2024-01-09 08:12:52', '2024-01-09 08:12:52'),
(18, '6', 'Person-centred Approaches in Health and Social Care Settings', '3', '10', '2024-01-09 08:12:52', '2024-01-09 08:12:52'),
(19, '6', 'Effective Handling of Information in Health and Social Care Settings', '3', '10', '2024-01-09 08:12:52', '2024-01-09 08:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualifications` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` mediumtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `slug`, `qualifications`, `about`, `email`, `facebook`, `twitter`, `linkedin`, `profile_picture`, `created_at`, `updated_at`) VALUES
(2, 'Damilare Odusanya', 'damilare-odusanya', 'HND, Bsc', 'I am fine', 'joy.dammie@yahoo.com', NULL, NULL, NULL, 'assets/img/instructors/1676185027.jpeg', '2023-02-11 23:32:24', '2023-02-12 05:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_25_025706_create_user_verifies_table', 1),
(5, '2023_02_04_200744_create_course_categories_table', 2),
(6, '2023_02_06_113801_create_courses_table', 3),
(7, '2023_02_06_115733_create_course_outlines_table', 4),
(8, '2023_02_09_074951_create_instructors_table', 5),
(9, '2023_02_25_180118_create_projects_table', 6),
(10, '2023_03_01_095315_create_categories_table', 7),
(11, '2023_03_02_022854_create_posts_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `content`, `featured_image`, `created_at`, `updated_at`) VALUES
(2, 2, 'CONSIDERING TAKING SHORTCUTS?', 'considering-taking-shortcuts', '<p>There are many things that can affect whether or not you decide to take a shortcut. Nevertheless, taking short routes is a decision made by a person. Realizing this and taking precautions to prevent doing so are crucial, especially when it comes to workplace safety.</p><p><br></p><p><strong>COMMON SAFETY SHORTCUTS</strong></p><p>Shortcuts can take many different forms when it comes to safety. Here are a few typical shortcuts to safety in numerous workplaces:</p><p><br></p><ol><li><strong>Not taking all essential Safety Precautions: </strong>Nearly all labour tasks include a number of safety measures that must be put in place before work begins. Every safety measure you put in place is another technique to prevent harm to you and other people.</li><li><strong>Not using the required PPE: </strong>PPE is a worker’s final line of defense. Who knows when you might need it?</li><li><strong>Rushing Tasks or Skipping Crucial Breaks when Performing Job Functions: </strong>Rushing through a task at work might cause many things to be missed. This may result in unfortunate events.</li></ol><p><br></p><p><strong>WAYS TO AVOID TAKING SHORTCUTS</strong></p><ol><li>Be more demanding of yourself. Avoid taking the simple route. Spend the necessary time and effort to do jobs properly. Make it a habit to adhere to safety regulations and instructions.</li><li>Set the standard that taking shortcuts is unacceptable in terms of safety. Coworkers are more prone to take shortcuts themselves if they observe you doing so.</li><li>Understand that shortcuts don’t simply affect just you. They may result in injuries, property damage, and negative effects on the organization.</li><li>If you are under time pressure, consider whether you are putting a strain on yourself. When there is no true external pressure to finish a work activity, people frequently put pressure on themselves to accomplish it more quickly.</li><li>Plan your job tasks out well in advance to ensure that you have access to the essential personnel, tools, training, safety gear, time, etc. It can be easier to resist the temptation to cut corners when you have all you need for your job.</li></ol><p><br></p><p><strong>Think about this…</strong></p><p>In the end, choosing to take shortcuts is just a personal decision. Although there are various circumstances that may influence a person’s decision, it is still a choice that is made in the end. Although it can be challenging to never compromise on safety, there are various strategies that can be used to overcome the impulse to do so.</p><p>What are some more elements that could influence a worker to take a shortcut? Let’s discuss&nbsp;&nbsp;</p>', 'assets/img/posts/weRGLmuJiY.jpeg', '2023-09-12 12:28:17', '2023-09-12 12:28:17'),
(3, 1, 'Do You know You Can Qualify for GradIOSH in 2 Weeks!', 'do-you-know-you-can-qualify-for-gradiosh-in-2-weeks', '<p>Level 6 International Diploma in Safety Engineering is certified by Qualifi and Accredited by IOSH for Graduate Membership<em>(</em><strong><em>GradIOSH)</em></strong>. It is based on skill-oriented&nbsp;basic engineering&nbsp;knowledge necessary for day to day occupational safety and&nbsp;health affairs&nbsp;of the organizations, along with the emphasis on continual&nbsp;improvement&nbsp;approach in Occupational Safety and Health (OH&amp;S) Management&nbsp;systems.</p><p>The&nbsp;existing&nbsp;diplomas in OH&amp;S provide general information about&nbsp;occupational health&nbsp;and safety and are more information oriented.</p><p>However, both units of&nbsp;<strong>IDSE</strong>&nbsp;have&nbsp;been designed in such a way that with the successful completion of&nbsp;Unit 1, professionals will&nbsp;be able to establish, implement, maintain,&nbsp;manage and continually improve the&nbsp;OH&amp;S Management system based on any&nbsp;standard including OHSAS 18001 or ISO&nbsp;45001.</p><p><em>Unit&nbsp;2</em>&nbsp;emphasizes the engineering&nbsp;related skill,&nbsp;knowledge and information for the requirement of occupational&nbsp;safety and&nbsp;health provisions at the workplace. It provides the&nbsp;professionals&nbsp;with the core knowledge of Engineering which they can translate&nbsp;into skill&nbsp;base for engineering design assessments, material failure modes,&nbsp;incident&nbsp;investigations, reliability engineering, structure analysis,&nbsp;equipment&nbsp;selection, engineering risk assessments, engineering control&nbsp;designs and&nbsp;assessments, mathematical and geometric calculations and much more.</p><p><br></p><h3><strong>Reasons Why You Should Do IDSE</strong></h3><p>IDSE is a distance learning course that allows you to study at your own pace and convenience. Your online trainer will&nbsp;guide you whenever you are faced with a difficulty.</p><p>It has 2 Units assessed through 2 subjective type written classroom exams and no projects or reports.</p><p>You can sit both exams together or separately with a gap of 2&nbsp;months between each unit.</p><p>The results are out within 15 working days of the exam and the certificate two weeks after the results</p><p>You can&nbsp;apply for Masters in OH&amp;S with IDSE certification</p><p>Qualification is recognised by BCSP for TSP status</p><p>Accredited by IOSH for GradIOSH Membership</p><p><br></p><h3><strong>Who Should Do This Course?</strong></h3><p>Safety Advisor</p><p>HSE Training Officer</p><p>Senior Health</p><p>EHS Specialist</p><p>Project Health &amp; Safety</p><h3><strong>Registration Requirements</strong></h3><h6><strong>Please visit the course page here:&nbsp;</strong><a href=\"http://bit.ly/2lOFPJQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 122, 124); background-color: initial;\"><strong>http://bit.ly/2lOFPJQ</strong></a></h6><h6><strong>If you want to leave a message or want us to contact you, you can click here: http:</strong><a href=\"https://bit.ly/2CPGMHG\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 122, 124); background-color: initial;\"><strong>//bit.ly/2CPGMHG</strong></a></h6><p><br></p>', 'assets/img/posts/sodLAtQwGV.jpeg', '2023-09-12 14:29:35', '2023-09-12 14:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commence_date` date NOT NULL,
  `completed_date` date NOT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_ci,
  `role` tinyint(4) NOT NULL DEFAULT '2',
  `phone_number` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `token`, `role`, `phone_number`, `gender`, `city`, `state`, `country`, `email_verified_at`, `is_email_verified`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@kevrongroup.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE3MDUwNzY4OTAsImV4cCI6MTcwNTEwNTY5MCwibmJmIjoxNzA1MDc2ODkwLCJqdGkiOiJNRFAyR21odHkwaWt4RUYyIiwic3ViIjoiMSIsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.yWi4vBdRLV3sQDdP2zEiu9BHDIHwi2ZD-jczTc9FGcc', 1, NULL, NULL, NULL, NULL, NULL, '2023-02-09 04:22:05', 1, '$2y$10$tJHXmU//IRsgbEW6CTNSruMewhB51b3HMD/IaFiJBB3.r34SeJbpC', NULL, '2023-02-06 11:22:38', '2024-01-12 15:28:11'),
(2, 'Blogger', 'blogger@kevrongroup.com', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 0, '$2y$10$L/rbKk6k40lq0BARiXzXKO/kbP9aDm2qIqDLr/XJStaqTB6n4WZNC', NULL, '2023-11-19 22:17:23', '2023-11-19 22:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Indexes for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_outlines`
--
ALTER TABLE `course_outlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_verifies_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_categories`
--
ALTER TABLE `course_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_outlines`
--
ALTER TABLE `course_outlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `course_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD CONSTRAINT `user_verifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
