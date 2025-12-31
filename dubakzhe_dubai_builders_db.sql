-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2025 at 05:48 AM
-- Server version: 11.4.9-MariaDB-cll-lve-log
-- PHP Version: 8.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dubakzhe_dubai_builders_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `our_mission` text DEFAULT NULL,
  `our_vision` text DEFAULT NULL,
  `our_builders` varchar(255) DEFAULT NULL,
  `experience_year` varchar(255) DEFAULT NULL,
  `hero_image` text DEFAULT NULL,
  `about_image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `slug`, `description`, `short_description`, `our_mission`, `our_vision`, `our_builders`, `experience_year`, `hero_image`, `about_image`, `created_at`, `updated_at`) VALUES
(1, 'FOCUS ON SUSTAINABILITY & LEGACY', 'FOCUS ON SUSTAINABILITY & LEGACY', 'The Hardbone Building Contracting & Electromechanical LLC  & Assafeer Building Contracting LLC is a Civil construction company under the registered Name Hardbone Building Contracting & Electromechanical LLC and Assafeer Building Contracting LLC. Hardbone & Assafeer is a united Arab Emirates based privately company Abu Dhabi and Ras Al Khaimah  that was established in June 2017  and August 2025 with Over the years’\r\nexperience and real focus on customer satisfaction in different construction sector.\r\nHardbone & Assafeer both are  delivered efficient construction work. We have team of\r\ndedicated professional that provide integrated solution to ensure quality, safety and on\r\ntime completion of projects. We are expanding our presence by providing world class\r\nconstruction work. Today, Hardbone & Assafeer  Construction takes on the role of main contractor\r\nfor small to medium size projects and performs project management services to\r\ncoordinate specialist trades for commercial projects. We also provide design inputs and\r\nengineering solutions as value-add services to our clients.', 'Combining innovation and craftsmanship to create exceptional residential and commercial & landscaping sustainable  building with a commitment to quality and client satisfaction.', 'We aspire to the most admired construction company in the UAE recognized as a dynamic ,innovative and\r\nclient focus company to procure\r\nproject at competitive pricing provide\r\nsafe working condition and deliver\r\nquality work within reasonable time\r\nframe.', 'To be a prominent construction service provider and assuring the quality\r\nservice in UAE. We build with our clients towards acquiring new projects\r\nvia repeat business and a strong referral program', '15', '18', 'backend/uploads/images/about/1849519623383832.jpg', 'backend/uploads/images/about/1849517941202897.jpg', '2025-11-23 00:22:42', '2025-11-23 00:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_description` text DEFAULT NULL,
  `hero_image` varchar(255) DEFAULT NULL,
  `thumbnail_image` varchar(255) DEFAULT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `youtube_video_link` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `author_slug` text DEFAULT NULL,
  `author_description` text DEFAULT NULL,
  `author_image` varchar(255) DEFAULT NULL,
  `author_fb` varchar(255) DEFAULT NULL,
  `author_twitter` varchar(255) DEFAULT NULL,
  `author_instagram` varchar(255) DEFAULT NULL,
  `author_pinterest` varchar(255) DEFAULT NULL,
  `author_linkedin` varchar(255) DEFAULT NULL,
  `is_publish` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_description`, `hero_image`, `thumbnail_image`, `image_1`, `image_2`, `youtube_video_link`, `author`, `author_slug`, `author_description`, `author_image`, `author_fb`, `author_twitter`, `author_instagram`, `author_pinterest`, `author_linkedin`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Use of modern Technology in Road construction', 'The use of modern technology in road construction has revolutionized the industry, enhancing efficiency, safety, and durability. Advanced machinery and equipment, such as automated pavers and precision grading systems, ensure more accurate and consistent results. Innovative materials, including high-performance asphalt and concrete mixes, extend the lifespan of roads while reducing maintenance costs. Cutting-edge techniques like 3D modeling and GPS-guided construction enable precise planning and execution, minimizing errors and delays. Additionally, the integration of smart technology in road infrastructure, such as sensors and monitoring systems, allows for real-time data collection and analysis, leading to proactive maintenance and improved traffic management. Embracing these technological advancements, the road construction industry is paving the way for smarter, more resilient transportation networks.', 'backend/uploads/images/blogs/1801760723317219.png', 'backend/uploads/images/blogs/1801760723709891.png', 'backend/uploads/images/blogs/1801760723925828.png', 'backend/uploads/images/blogs/1801760724001510.png', NULL, 'Jonathon Hall', 'Install a sensor light to turn on as you enter the driveway and approach the garage. Not only will it prove a burglar deterrent it will also assist.', 'Jonathon Hall is a seasoned construction expert with a passion for integrating modern technology into traditional building practices. With over 20 years in the industry, he has overseen numerous innovative projects that highlight the transformative impact of technology in construction. As a frequent contributor to industry publications, John shares his insights on the latest trends and advancements, helping professionals stay ahead in the ever-evolving construction landscape.', 'backend/uploads/images/blogs/1801760723820948.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 19:35:26', '2024-06-13 19:35:26'),
(2, 'Company Receives Recognition for Excellence', 'We are thrilled to announce that Dubai Builders has been honored with a prestigious recognition for excellence in the construction industry. This esteemed accolade underscores our unwavering commitment to delivering superior quality, innovative solutions, and exceptional customer satisfaction in every project we undertake. Our dedicated team of professionals, whose hard work, expertise, and meticulous attention to detail have set us apart in the field, has made this achievement possible. From residential developments to large-scale commercial projects, our focus on integrating modern technology with traditional craftsmanship has consistently yielded outstanding results. This recognition not only celebrates our past accomplishments but also motivates us to continue striving for excellence in all our future endeavors. We extend our heartfelt gratitude to our clients, partners, and employees for their continued support and trust in Dubai Builders, as we remain committed to building a brighter and more sustainable future.', 'backend/uploads/images/blogs/1801761895844479.png', 'backend/uploads/images/blogs/1801761896187110.png', 'backend/uploads/images/blogs/1801761896281173.png', 'backend/uploads/images/blogs/1801761896373317.png', NULL, 'Jane Doe', 'Jane Doe is a seasoned construction industry writer with over 15 years of experience, specializing in project management, engineering, and construction technology.', 'Jane Doe is a seasoned construction industry writer with over 15 years of experience in project management and engineering. She has a deep understanding of the latest trends and innovations in construction technology and sustainability. Jane’s insightful articles and reports are widely respected for their clarity and depth, making her a trusted voice in the field. Her work at Dubai Builders focuses on highlighting the company’s achievements and industry advancements, contributing to a greater understanding of the construction landscape.', 'backend/uploads/images/blogs/1801763300573850.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 19:54:04', '2024-06-13 20:16:24'),
(3, 'Our firm is built to tackle projects like these', 'Our firm is built to tackle projects like these with unmatched expertise and unwavering commitment to excellence. At Dubai Builders, we pride ourselves on our ability to manage and execute complex, large-scale construction projects that others might find daunting. Our foundation is rooted in years of experience and a relentless pursuit of quality, ensuring that every project we undertake is completed to the highest standards.\r\n\r\nFrom residential developments to expansive commercial infrastructure, our skilled team employs an innovative approach, integrating cutting-edge technology with time-tested craftsmanship. We understand the intricacies and challenges of the construction industry and are adept at navigating them to deliver outstanding results. Our dedication to precision, reliability, and superior workmanship sets us apart as leaders in the field.\r\n\r\nWhether it\'s a high-rise building in the heart of the city or a sprawling industrial complex, Dubai Builders is equipped and ready to bring ambitious visions to life. We are not just builders; we are partners in creating remarkable realities that stand the test of time. Trust us to handle your most demanding projects with the expertise and excellence they deserve.', 'backend/uploads/images/blogs/1801764080073376.png', 'backend/uploads/images/blogs/1801764080506124.png', 'backend/uploads/images/blogs/1801764080728894.png', 'backend/uploads/images/blogs/1801764080803443.png', NULL, 'Emily Larson', 'Emily Larson, Construction Project Specialist', 'Emily Larson is a seasoned construction project specialist with a wealth of experience in managing and executing complex building projects. With a keen eye for detail and a passion for quality craftsmanship, Emily has contributed significantly to the success of numerous construction ventures. Her expertise lies in integrating innovative technologies and sustainable practices into construction processes, ensuring projects are completed efficiently and to the highest standards. Emily\'s commitment to excellence and her ability to navigate challenges make her a trusted authority in the construction industry.', 'backend/uploads/images/blogs/1801764080593698.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 20:28:48', '2025-11-21 00:16:24'),
(4, 'UAE National day', 'Celebrating the spirit, success', 'backend/uploads/images/blogs/1850348052504867.jpg', 'backend/uploads/images/blogs/1850348052700934.jpg', 'backend/uploads/images/blogs/1850348052898604.jpg', 'backend/uploads/images/blogs/1850348053000654.jpg', NULL, 'Mohammad Abdul kader chowdhury', 'UAE national day', 'Celebrating the spirit, success, and journey of the UAE on its National Day 2025! 🎉\r\n\r\nHardbone is dedicated to contributing to the nation\'s incredible Sustainable and Legacy of development. Our roots are here, and our vision is firmly fixed on a prosperous, green future for the Emirates.\r\n\r\nHappy National Day! www.hardbone.ae\r\n\r\n#UAE #NationalDay2025 #SustainableFuture #Legacy #HardboneConstruction', 'backend/uploads/images/blogs/1850348052798725.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2025-12-02 03:50:14', '2025-12-02 03:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `job_description` text DEFAULT NULL,
  `no_of_vacancy` int(11) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `job_location` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `educational_requirement` text DEFAULT NULL,
  `experience_requirement` text DEFAULT NULL,
  `additional_requirement` text DEFAULT NULL,
  `compensations` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `job_title`, `job_description`, `no_of_vacancy`, `poster`, `slug`, `job_type`, `salary`, `job_location`, `experience`, `deadline`, `educational_requirement`, `experience_requirement`, `additional_requirement`, `compensations`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Developer', '<p>description</p>', 12, 'backend/uploads/images/careers/1783545195776937.png', 'slug', 'fulltime', '20000', 'location', '2 years', '2000-01-01', '<p>requirement</p>', '<p>experience</p>', '<p>additionaal</p>', '<p>compansation</p>', 'active', '2023-11-25 02:08:48', '2023-11-25 08:07:26'),
(2, 'Site Engineer', '<p>sdf</p>', 12, 'backend/uploads/images/careers/1784261284453249.png', 'slug', 'fulltime', '12000', 'location', '1 years', '1111-11-11', '<p>sdf</p>', '<p>sf</p>', '<p>sf</p>', '<p>sf</p>', 'active', '2023-11-25 06:12:17', '2023-12-03 05:49:23'),
(3, 'project manager', NULL, 2, NULL, NULL, 'fulltime', '30000', 'abu dhabi', '20 years', '2025-11-29', NULL, NULL, NULL, NULL, 'active', '2025-11-20 23:28:12', '2025-11-20 23:28:12');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_code`, `name`, `organization_name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(46, 'CUS-2025001', 'THALIB AHMED ALI MOHD. AL SHAHMI AL SHEIHI', 'a', 'RAK,UAE', 'info@hardbone.ae', '111', '2025-11-23 00:11:00', '2025-11-23 00:11:00'),
(47, 'CUS-2025047', 'AHMAD MOHAMMED ALMANSOORY', 'owner', 'RAK,UAE', 'assafeeruae@gmail.com', '900', '2025-11-23 00:28:26', '2025-11-23 00:28:26'),
(48, 'CUS-2025048', 'MITHA MOHAMMED SAEED ALHAMAD', 'owner', 'Khat, RAK , UAE', 'assafeeruae@gmail.com', '990', '2025-11-23 00:29:46', '2025-11-23 00:29:46'),
(49, 'CUS-2025049', 'MOHAMMED HAJI MOHAMMED AL HAMOUR ALAHMED', 'owner', 'Al Rifah, Rak , UAE', 'ASSAFEER@GMAIL.COM', 'ooii', '2025-11-23 00:31:00', '2025-11-23 00:31:00'),
(50, 'CUS-2025050', 'Manchester Paper Bags Manufacturing LLC', 'MR. MAJIED', 'AL JAZEERZ FREE ZONE', 'MANCHESTER@HOTMAIL.COM', '33', '2025-11-23 00:32:30', '2025-11-23 00:32:30'),
(51, 'CUS-2025051', 'Kelly Steel Engineering', 'STEEL', 'AL JAZEERA FREE ZONE, RAK , UAE', 'info@kellysteel.ae', '167', '2025-11-23 00:33:54', '2025-11-23 00:33:54'),
(52, 'CUS-2025052', 'Hot Bread Bakery & Confectionary LLC', 'OWNER', 'AL KHUZAM, RAK ,UAE', 'INFO@HOTBREAD.AE', '111', '2025-11-23 00:35:20', '2025-11-23 00:35:20'),
(53, 'CUS-2025053', 'SDF Chemicals FZ LLC', 'OWNER', 'AL HULAILA INDUSTRIAL ZONE, RAKEZ, UAE', 'INFO@SDF.COM', '111', '2025-11-23 00:37:49', '2025-11-23 00:40:46'),
(54, 'CUS-2025054', 'DELIVEROO-abu dhabi', 'OWNER', 'WTC MALL-Abu Dhabi-UAE', 'INFO@DELIVEROO.AE', '11', '2025-11-23 00:38:58', '2025-11-23 00:38:58'),
(55, 'CUS-2025055', 'Dhamma Perfumes LLC', 'OWNER', 'AL GHAIL INDUSTRIAL ZONE, RAKEZ, UAE', 'INFO@DHARMA.AE', '11', '2025-11-23 00:40:11', '2025-11-23 00:40:11'),
(56, 'CUS-2025056', 'Hamad Mohammed HAJI ALHAMOUR ALAHMED', 'OWNER', 'AL RIFAH, RAK ,UAE', 'INFO@HAMOUR.AE', '11', '2025-11-23 00:41:35', '2025-11-23 00:41:35'),
(57, 'CUS-2025057', 'Fahad Mohammed HAJI ALHAMOUR ALAHMED', 'OWNER', 'AL RIFAH,RAK,UAE', 'INFO@FAHAD.AE', '11', '2025-11-23 00:42:58', '2025-11-23 00:42:58'),
(58, 'CUS-2025058', 'Fibrex construction', 'Fibrex construction', 'NOYA PROJECT , ALDAR ,ABU DHABI', 'INFO@FIBREX.AE', '11', '2025-11-23 00:44:24', '2025-11-23 00:44:24'),
(59, 'CUS-2025059', 'GREEN GARDENIA LLC', 'OWNER', 'AL SAADIYAT RESERVE, ABU DHABI', 'INFO@GREEN.AE', '111', '2025-11-23 00:45:30', '2025-11-23 00:45:30'),
(60, 'CUS-2025060', 'Avishek Barua', 'company', '', 'avishekbarua02@gmail.com', '0192222222', '2025-11-24 23:50:51', '2025-11-24 23:50:51'),
(61, 'CUS-2025061', 'Sunny Mollick', 'Hardbone', '', 'sunnymollick72@gmail.com', '01636524141', '2025-12-08 21:08:54', '2025-12-08 21:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Rafig uddin', 'sunnymollickw3@gmail.com', '01608763619', 'House Build', 'Hi', 1, '2024-09-24 20:31:52', '2024-09-24 20:33:09'),
(2, 'Sunny Mollick', 'sunnymollick72@gmail.com', '01608763619', 'House Build', 'Test', 1, '2024-09-30 21:10:20', '2024-09-30 21:11:56'),
(3, 'Sunny Mollick', 'sunnymollick72@gmail.com', '01608763619', 'House Build', 'Sample test', 1, '2024-09-30 21:13:20', '2024-09-30 21:13:31'),
(4, 'Bakery and Confectionery', 'assafeeruae@gmail.com', '00000', 'bvvx', 'DDD', 1, '2025-11-21 16:09:30', '2025-11-21 21:48:24'),
(5, 'Sunny Mollick', 'sunnymollick72@gmail.com', '01608763619', 'House Build', 'ss', 1, '2025-11-22 21:24:35', '2025-11-22 21:29:12'),
(6, 'Sunny Mollick', 'sunnymollick72@gmail.com', '01608763619', 'House Build', 'gg', 1, '2025-12-31 04:03:18', '2025-12-31 04:04:02');

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `paid_amount` double(8,2) DEFAULT 0.00,
  `sub_total` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `invoice_date` date NOT NULL DEFAULT '2024-04-01',
  `bank_details` text DEFAULT NULL,
  `trn` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_code`, `title`, `quotation_id`, `grand_total`, `paid_amount`, `sub_total`, `discount_amount`, `tax`, `invoice_date`, `bank_details`, `trn`, `created_at`, `updated_at`) VALUES
(29, 'I-2025001', 'Invoice--001', 32, 429.00, 0.00, 330, 1, 100, '2025-12-31', NULL, '5588777', '2025-12-31 04:46:29', '2025-12-31 04:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(255) NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_id`, `item_id`, `category_id`, `unit`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(68, 29, 6, 1, 'LUMP SUM', 10.00, 18.00, 180.00, '2025-12-31 04:46:29', '2025-12-31 04:46:29'),
(69, 29, 21, 8, 'M3', 10.00, 15.00, 150.00, '2025-12-31 04:46:29', '2025-12-31 04:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `paid_amount` double(8,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `cheque_date` varchar(255) DEFAULT NULL,
  `cheque_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_category_id` bigint(20) UNSIGNED NOT NULL,
  `item_work` varchar(255) NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `work_category_id`, `item_work`, `unit_id`, `unit_price`, `created_at`, `updated_at`) VALUES
(6, 1, 'SITE SERVICES ROAD', 7, 1, '2024-10-06 00:00:03', '2024-10-06 00:00:03'),
(7, 1, 'Temporary works-elec ,water, etc', 7, 1, '2024-10-06 00:20:11', '2024-10-06 00:20:11'),
(8, 1, 'site offices according to the specification', 7, 1, '2024-10-06 00:21:06', '2024-10-06 00:21:06'),
(9, 1, 'site fencing/temporary boundary wall', 7, 1, '2024-10-06 00:21:50', '2024-10-06 00:21:50'),
(10, 1, 'soil test works', 7, 1, '2024-10-06 00:22:35', '2024-10-06 00:22:35'),
(11, 1, 'external project signboard', 7, 1, '2024-10-06 00:23:16', '2024-10-06 00:23:16'),
(12, 1, 'materials tests acc. to specification', 7, 1, '2024-10-06 00:24:08', '2024-10-06 00:24:08'),
(13, 1, 'shop drawing electrical', 7, 1, '2024-10-06 00:24:54', '2024-10-06 00:24:54'),
(14, 1, 'shop drawing plumbing', 7, 1, '2024-10-06 00:25:21', '2024-10-06 00:25:21'),
(15, 1, 'shop drawing  HVAC', 7, 1, '2024-10-06 00:26:12', '2024-10-06 00:26:12'),
(16, 1, 'wc +guard room', 7, 1, '2024-10-06 00:27:03', '2024-10-06 00:27:03'),
(17, 1, 'spraying the soil with insecticide', 7, 1, '2024-10-06 00:28:18', '2024-10-06 00:28:18'),
(18, 1, 'demolition of existing structure', 7, 1, '2024-10-06 00:29:06', '2024-10-06 00:29:06'),
(19, 1, 'site cleaning', 7, 1, '2024-10-06 00:29:49', '2024-10-06 00:29:49'),
(20, 8, 'excavation', 6, 1, '2024-10-06 00:30:56', '2024-10-06 00:30:56'),
(21, 8, 'backfill', 6, 1, '2024-10-06 00:31:25', '2024-10-06 00:31:25'),
(22, 8, 'plain concrete', 6, 1, '2024-10-06 00:32:07', '2024-10-06 00:32:07'),
(23, 8, '1000 gage plastic', 12, 1, '2024-10-06 00:33:21', '2024-10-06 00:33:21'),
(24, 8, 'foundation footing concrete', 6, 1, '2024-10-06 00:34:05', '2024-10-06 00:34:05'),
(25, 8, 'pile cap concrete', 6, 1, '2024-10-06 00:34:43', '2024-10-06 00:34:43'),
(26, 8, 'pile concrete', 6, 1, '2024-10-06 00:35:05', '2024-10-06 00:35:05'),
(27, 8, 'foundation beam concrete', 6, 1, '2024-10-06 00:35:57', '2024-10-06 00:35:57'),
(28, 8, 'stair concrete', 6, 1, '2024-10-06 00:36:33', '2024-10-06 00:36:33'),
(29, 8, 'ground slab concrete', 6, 1, '2024-10-06 00:37:09', '2024-10-06 00:37:09'),
(30, 8, 'pile steel-8mm', 10, 1, '2024-10-06 00:38:08', '2024-10-06 00:38:08'),
(31, 8, 'antitermite treatment', 7, 1, '2024-10-06 00:39:15', '2024-10-06 00:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `int_date` date DEFAULT NULL,
  `reply_message` text DEFAULT NULL,
  `is_replied` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `name`, `email`, `mobile`, `address`, `file`, `job_id`, `int_date`, `reply_message`, `is_replied`, `created_at`, `updated_at`) VALUES
(7, 'MOHAMMAD ABDUL KADER', 'PM@HARDBONE.AE', '+971564323442', 'ABU DHABI', 'backend/uploads/files/cv/1763841273.pdf', 2, '2025-11-28', 'ASS', 1, '2025-11-23 00:54:33', '2025-11-23 00:55:52'),
(8, 'DR RAHFIDA SULTANA', 'rahfidasultan86@gmail.com', '+971509519877', 'abu dhabi', 'backend/uploads/files/cv/1763880096.pdf', 1, '2025-11-30', 'thank you for your EOI', 1, '2025-11-23 11:41:36', '2025-11-23 11:43:05'),
(9, 'adeeba kader', 'rahfidasultana86@gmail.com', '+971564323442', 'abu dhabi', 'backend/uploads/files/cv/1763884180.pdf', 2, '2025-11-29', 'thanks for your EOI', 1, '2025-11-23 12:49:40', '2025-11-23 12:50:18'),
(10, 'MD', 'assafeeruae@gmail.com', '0192222222', 'Abu Dhabi', 'backend/uploads/files/cv/1764009733.pdf', 3, '2025-11-28', 'You are welcome', 1, '2025-11-24 23:42:13', '2025-11-24 23:43:16'),
(11, 'feroz', 'assafeeruae@gmail.com', '45678', 'dubai', 'backend/uploads/files/cv/1764097428.pdf', 3, NULL, NULL, 0, '2025-11-26 00:03:48', '2025-11-26 00:03:48');

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
(5, '2023_09_01_191815_create_clients_table', 1),
(6, '2023_09_01_192000_create_projects_table', 1),
(7, '2023_09_03_052701_create_settings_table', 1),
(9, '2023_09_08_095029_create_abouts_table', 1),
(10, '2023_09_08_170923_create_teams_table', 1),
(11, '2023_09_14_060155_create_contacts_table', 1),
(12, '2023_09_15_072553_create_blogs_table', 1),
(13, '2023_09_17_151823_create_careers_table', 1),
(17, '2023_11_14_063222_create_work_categories_table', 1),
(18, '2023_11_14_064804_create_units_table', 1),
(19, '2023_11_14_064904_create_items_table', 1),
(20, '2023_12_05_105401_create_job_applications_table', 1),
(25, '2023_10_31_181438_create_sliders_table', 2),
(26, '2023_09_04_181515_create_services_table', 3),
(30, '2023_09_28_055128_create_quotations_table', 5),
(32, '2024_01_28_085505_create_quotation_details_table', 7),
(33, '2023_11_08_192000_create_projects_table', 8),
(35, '2024_02_07_053913_create_invoice_details_table', 10),
(36, '2023_11_07_074720_create_quotation_applications_table', 11),
(39, '2024_02_06_050022_create_invoices_table', 12),
(40, '2023_11_20_064904_create_items_table', 13),
(41, '2024_03_07_071713_create_quotation_details_table', 14),
(43, '2024_04_23_130648_create_invoice_payments_table', 15),
(44, '2025_11_14_113607_create_project_types_table', 16),
(45, '2025_11_14_192518_create_project_images_table', 17);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_title` varchar(255) DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `project_permit` varchar(255) DEFAULT NULL,
  `project_location` varchar(255) DEFAULT NULL,
  `handover_time` varchar(255) DEFAULT NULL,
  `client_rating` varchar(255) DEFAULT NULL,
  `client_testimonial` varchar(255) DEFAULT NULL,
  `project_type` tinyint(4) DEFAULT NULL,
  `project_status` tinyint(4) DEFAULT NULL,
  `hero_image` varchar(255) DEFAULT 'backend/uploads/images/projects/default/p_details.png',
  `thumbnail_image` varchar(255) DEFAULT 'backend/uploads/images/projects/default/1.png',
  `image_1` varchar(255) DEFAULT 'backend/uploads/images/projects/default/p1.png',
  `image_2` varchar(255) DEFAULT 'backend/uploads/images/projects/default/p2.png',
  `video_link` text DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `is_frontend` tinyint(4) NOT NULL DEFAULT 0,
  `is_popular` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `client_id`, `quotation_id`, `project_title`, `project_description`, `project_code`, `project_permit`, `project_location`, `handover_time`, `client_rating`, `client_testimonial`, `project_type`, `project_status`, `hero_image`, `thumbnail_image`, `image_1`, `image_2`, `video_link`, `is_active`, `is_frontend`, `is_popular`, `created_at`, `updated_at`) VALUES
(21, 59, NULL, 'landscaping & irrigation', '<p>fff</p>', 'DB-2025021', NULL, 'saadiyat reserve, ABU DHABI', '30/8/2025', NULL, NULL, 1, 2, 'backend/uploads/images/projects/1849696549771976.jpg', 'backend/uploads/images/projects/thumbnail/1849696549127589.jpg', 'backend/uploads/images/projects/1849696550585052.jpg', 'backend/uploads/images/projects/1849696551258208.jpg', NULL, 1, 1, 1, '2025-11-14 17:32:45', '2025-12-10 00:28:25'),
(23, 46, NULL, 'Villa extension al dhait', NULL, 'DB-2025022', NULL, 'Dhait,Rak', '2018', NULL, NULL, 4, 2, 'backend/uploads/images/projects/1849519487330360.jpg', 'backend/uploads/images/projects/thumbnail/1849519487282310.jpg', 'backend/uploads/images/projects/1849519487444067.jpg', 'backend/uploads/images/projects/1849519487517879.jpg', NULL, 1, 1, 1, '2025-11-23 00:20:33', '2025-11-23 00:24:11'),
(24, 54, NULL, 'INTERIOR FITOUT WORK', NULL, 'DB-2025024', NULL, 'WTC MALL ABU DHABI', '2022', NULL, NULL, 5, 2, 'backend/uploads/images/projects/1849522137151449.jpg', 'backend/uploads/images/projects/thumbnail/1849522137093747.jpg', 'backend/uploads/images/projects/1849522137251617.jpg', 'backend/uploads/images/projects/1849522137344503.jpg', NULL, 1, 1, 1, '2025-11-23 01:02:40', '2025-11-23 01:02:40'),
(25, 54, NULL, 'WATERPROOF WORK', NULL, 'DB-2025025', NULL, 'WTC ABU DHABI', '2022', NULL, NULL, 11, 2, 'backend/uploads/images/projects/1849522507165235.jpg', 'backend/uploads/images/projects/thumbnail/1849522506994676.jpg', 'backend/uploads/images/projects/1849522507370644.jpg', 'backend/uploads/images/projects/1849522507417507.jpg', NULL, 1, 1, 1, '2025-11-23 01:08:33', '2025-11-23 01:08:33'),
(26, 51, NULL, 'OFFICE BUILDING', NULL, 'DB-2025026', NULL, 'AL JAZEERA AL HAMRA ,RAKEZ,RAK', NULL, NULL, NULL, 7, 2, 'backend/uploads/images/projects/1849522929412103.jpg', 'backend/uploads/images/projects/thumbnail/1849522929205591.jpg', 'backend/uploads/images/projects/1849522929658781.jpg', 'backend/uploads/images/projects/1849522929699648.jpg', NULL, 1, 1, 1, '2025-11-23 01:15:15', '2025-12-10 00:29:44'),
(27, 52, NULL, 'BAKERY SHOP', '<p>II</p>', 'DB-2025027', NULL, 'KHUZAM, RAK', '2022', NULL, NULL, 6, 2, 'backend/uploads/images/projects/1849697163057259.jpg', 'backend/uploads/images/projects/thumbnail/1849697160942004.jpg', 'backend/uploads/images/projects/1849697165407409.jpg', 'backend/uploads/images/projects/1849697165520939.jpg', NULL, 1, 1, 1, '2025-11-24 23:21:00', '2025-11-24 23:24:40'),
(28, 58, NULL, 'ELECTROMECHANICAL WORK', '<p>DD</p>', 'DB-2025028', NULL, 'NOYA, YAS ISLAND, ABU DHABI', NULL, NULL, NULL, 8, 2, 'backend/uploads/images/projects/1849697845371940.jpg', 'backend/uploads/images/projects/thumbnail/1849697845255608.jpeg', 'backend/uploads/images/projects/1849697845543132.jpg', 'backend/uploads/images/projects/1849697845668881.jpg', NULL, 1, 1, 1, '2025-11-24 23:35:28', '2025-12-10 00:28:51'),
(29, 50, NULL, 'INDUSTRIAL WAREHOUSE', NULL, 'DB-2025029', NULL, 'RAKEZ, RAK', NULL, NULL, NULL, 9, 2, 'backend/uploads/images/projects/1851059502155077.jpg', 'backend/uploads/images/projects/thumbnail/1851059502011769.jpg', 'backend/uploads/images/projects/1851059502359789.jpg', 'backend/uploads/images/projects/1851059502519514.jpg', NULL, 1, 1, 1, '2025-12-10 00:18:25', '2025-12-10 00:18:25'),
(30, 56, NULL, 'RESIDENTIAL VILLA', NULL, 'DB-2025030', NULL, 'AL RIFFA, RAK', '2023', NULL, NULL, 4, 2, 'backend/uploads/images/projects/1851059795584701.jpg', 'backend/uploads/images/projects/thumbnail/1851059795442566.jpeg', 'backend/uploads/images/projects/1851059795849824.jpg', 'backend/uploads/images/projects/1851059795960762.jpg', NULL, 1, 1, 1, '2025-12-10 00:23:06', '2025-12-10 00:29:20'),
(31, 57, NULL, 'RESIDENTIAL VILLA', NULL, 'DB-2025031', NULL, 'AL RIFFA, RAK', '2023', NULL, NULL, 4, 2, 'backend/uploads/images/projects/1851060022460187.jpg', 'backend/uploads/images/projects/thumbnail/1851060022345883.jpeg', 'backend/uploads/images/projects/1851060022627798.jpg', 'backend/uploads/images/projects/1851060023305290.jpg', NULL, 1, 1, 1, '2025-12-10 00:26:43', '2025-12-10 00:29:07'),
(32, 46, NULL, '2 STOREY RESIDENTIAL VILLA', NULL, 'DB-2025032', NULL, 'NEW RIFFA , RAK', '2022', NULL, NULL, 4, 2, 'backend/uploads/images/projects/1851060474564650.jpg', 'backend/uploads/images/projects/thumbnail/1851060474466345.jpeg', 'backend/uploads/images/projects/1851060474699635.jpg', 'backend/uploads/images/projects/1851060474808503.jpg', NULL, 1, 1, 1, '2025-12-10 00:33:53', '2025-12-10 00:33:53'),
(33, 61, 32, 'New road construction project', NULL, 'DB-2025033', 'project-0012544', 'Chattogram', '1 month', NULL, NULL, 1, NULL, 'backend/uploads/images/projects/default/p_details.png', 'backend/uploads/images/projects/default/1.png', 'backend/uploads/images/projects/default/p1.png', 'backend/uploads/images/projects/default/p2.png', NULL, 1, 0, 0, '2025-12-31 04:43:56', '2025-12-31 04:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `project_images`
--

CREATE TABLE `project_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_images`
--

INSERT INTO `project_images` (`id`, `project_id`, `image_path`, `image_description`, `created_at`, `updated_at`) VALUES
(13, 23, 'backend/uploads/images/projects/1849519487886335.jpg', NULL, '2025-11-23 00:20:33', '2025-11-23 00:20:33'),
(12, 23, 'backend/uploads/images/projects/1849519487725678.jpg', NULL, '2025-11-23 00:20:33', '2025-11-23 00:20:33'),
(11, 23, 'backend/uploads/images/projects/1849519487662218.jpg', NULL, '2025-11-23 00:20:33', '2025-11-23 00:20:33'),
(4, 21, 'backend/uploads/images/projects/1849384477909481.jpg', NULL, '2025-11-21 12:34:38', '2025-11-21 12:34:38'),
(5, 21, 'backend/uploads/images/projects/1849384478793459.jpg', NULL, '2025-11-21 12:34:39', '2025-11-21 12:34:39'),
(6, 21, 'backend/uploads/images/projects/1849384479553695.jpg', NULL, '2025-11-21 12:34:40', '2025-11-21 12:34:40'),
(7, 21, 'backend/uploads/images/projects/1849384480320075.jpg', NULL, '2025-11-21 12:34:40', '2025-11-21 12:34:40'),
(8, 21, 'backend/uploads/images/projects/1849384481166461.jpg', NULL, '2025-11-21 12:34:41', '2025-11-21 12:34:41'),
(9, 21, 'backend/uploads/images/projects/1849384481988373.jpg', NULL, '2025-11-21 12:34:42', '2025-11-21 12:34:42'),
(10, 21, 'backend/uploads/images/projects/1849384482797970.jpg', NULL, '2025-11-21 12:34:43', '2025-11-21 12:34:43'),
(14, 23, 'backend/uploads/images/projects/1849519488054548.jpg', NULL, '2025-11-23 00:20:33', '2025-11-23 00:20:33'),
(15, 23, 'backend/uploads/images/projects/1849519488141512.jpg', NULL, '2025-11-23 00:20:33', '2025-11-23 00:20:33'),
(16, 23, 'backend/uploads/images/projects/1849519488238789.jpg', NULL, '2025-11-23 00:20:33', '2025-11-23 00:20:33'),
(17, 23, 'backend/uploads/images/projects/1849519488325481.jpg', NULL, '2025-11-23 00:20:33', '2025-11-23 00:20:33'),
(18, 24, 'backend/uploads/images/projects/1849522137430448.jpg', NULL, '2025-11-23 01:02:40', '2025-11-23 01:02:40'),
(19, 24, 'backend/uploads/images/projects/1849522137614760.jpg', NULL, '2025-11-23 01:02:40', '2025-11-23 01:02:40'),
(20, 24, 'backend/uploads/images/projects/1849522137679876.jpg', NULL, '2025-11-23 01:02:40', '2025-11-23 01:02:40'),
(21, 24, 'backend/uploads/images/projects/1849522137853537.jpg', NULL, '2025-11-23 01:02:40', '2025-11-23 01:02:40'),
(22, 24, 'backend/uploads/images/projects/1849522137919859.jpg', NULL, '2025-11-23 01:02:40', '2025-11-23 01:02:40'),
(23, 24, 'backend/uploads/images/projects/1849522138090147.jpg', NULL, '2025-11-23 01:02:40', '2025-11-23 01:02:40'),
(24, 24, 'backend/uploads/images/projects/1849522138153482.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(25, 24, 'backend/uploads/images/projects/1849522138403717.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(26, 24, 'backend/uploads/images/projects/1849522138468773.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(27, 24, 'backend/uploads/images/projects/1849522138530321.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(28, 24, 'backend/uploads/images/projects/1849522138599718.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(29, 24, 'backend/uploads/images/projects/1849522138666202.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(30, 24, 'backend/uploads/images/projects/1849522138813417.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(31, 24, 'backend/uploads/images/projects/1849522138933699.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(32, 24, 'backend/uploads/images/projects/1849522139054896.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(33, 24, 'backend/uploads/images/projects/1849522139173864.jpg', NULL, '2025-11-23 01:02:41', '2025-11-23 01:02:41'),
(34, 24, 'backend/uploads/images/projects/1849522139295655.jpg', NULL, '2025-11-23 01:02:42', '2025-11-23 01:02:42'),
(35, 25, 'backend/uploads/images/projects/1849522507557706.jpg', NULL, '2025-11-23 01:08:33', '2025-11-23 01:08:33'),
(36, 25, 'backend/uploads/images/projects/1849522507649827.jpg', NULL, '2025-11-23 01:08:33', '2025-11-23 01:08:33'),
(37, 25, 'backend/uploads/images/projects/1849522507778716.jpg', NULL, '2025-11-23 01:08:33', '2025-11-23 01:08:33'),
(38, 25, 'backend/uploads/images/projects/1849522507875842.jpg', NULL, '2025-11-23 01:08:33', '2025-11-23 01:08:33'),
(39, 26, 'backend/uploads/images/projects/1849522929837573.jpg', NULL, '2025-11-23 01:15:16', '2025-11-23 01:15:16'),
(40, 26, 'backend/uploads/images/projects/1849522930119034.jpg', NULL, '2025-11-23 01:15:16', '2025-11-23 01:15:16'),
(41, 26, 'backend/uploads/images/projects/1849522930315007.jpg', NULL, '2025-11-23 01:15:16', '2025-11-23 01:15:16'),
(42, 26, 'backend/uploads/images/projects/1849522930499250.jpg', NULL, '2025-11-23 01:15:16', '2025-11-23 01:15:16'),
(43, 26, 'backend/uploads/images/projects/1849522930724067.jpg', NULL, '2025-11-23 01:15:16', '2025-11-23 01:15:16'),
(44, 26, 'backend/uploads/images/projects/1849522930932154.jpg', NULL, '2025-11-23 01:15:17', '2025-11-23 01:15:17'),
(45, 26, 'backend/uploads/images/projects/1849522931201348.jpg', NULL, '2025-11-23 01:15:17', '2025-11-23 01:15:17'),
(46, 21, 'backend/uploads/images/projects/1849696641245372.jpg', NULL, '2025-11-24 23:16:20', '2025-11-24 23:16:20'),
(47, 21, 'backend/uploads/images/projects/1849696642015356.jpg', NULL, '2025-11-24 23:16:21', '2025-11-24 23:16:21'),
(48, 21, 'backend/uploads/images/projects/1849696642852367.jpg', NULL, '2025-11-24 23:16:22', '2025-11-24 23:16:22'),
(49, 21, 'backend/uploads/images/projects/1849696643624758.jpg', NULL, '2025-11-24 23:16:22', '2025-11-24 23:16:22'),
(51, 27, 'backend/uploads/images/projects/1849697453696923.jpg', NULL, '2025-11-24 23:29:14', '2025-11-24 23:29:14'),
(52, 27, 'backend/uploads/images/projects/1849697453939596.jpg', NULL, '2025-11-24 23:29:15', '2025-11-24 23:29:15'),
(53, 27, 'backend/uploads/images/projects/1849697454123037.jpg', NULL, '2025-11-24 23:29:15', '2025-11-24 23:29:15'),
(54, 27, 'backend/uploads/images/projects/1849697454342125.jpg', NULL, '2025-11-24 23:29:15', '2025-11-24 23:29:15'),
(55, 27, 'backend/uploads/images/projects/1849697454544288.jpg', NULL, '2025-11-24 23:29:15', '2025-11-24 23:29:15'),
(56, 27, 'backend/uploads/images/projects/1849697454702140.jpg', NULL, '2025-11-24 23:29:15', '2025-11-24 23:29:15'),
(57, 27, 'backend/uploads/images/projects/1849697454909820.jpg', NULL, '2025-11-24 23:29:16', '2025-11-24 23:29:16'),
(58, 27, 'backend/uploads/images/projects/1849697455105930.jpg', NULL, '2025-11-24 23:29:18', '2025-11-24 23:29:18'),
(59, 27, 'backend/uploads/images/projects/1849697457492960.jpg', NULL, '2025-11-24 23:29:20', '2025-11-24 23:29:20'),
(60, 27, 'backend/uploads/images/projects/1849697460038553.jpg', NULL, '2025-11-24 23:29:23', '2025-11-24 23:29:23'),
(61, 28, 'backend/uploads/images/projects/1849697845771278.jpg', NULL, '2025-11-24 23:35:28', '2025-11-24 23:35:28'),
(62, 28, 'backend/uploads/images/projects/1849697845911166.jpg', NULL, '2025-11-24 23:35:28', '2025-11-24 23:35:28'),
(63, 28, 'backend/uploads/images/projects/1849697846020987.jpg', NULL, '2025-11-24 23:35:29', '2025-11-24 23:35:29'),
(64, 28, 'backend/uploads/images/projects/1849697846249924.jpg', NULL, '2025-11-24 23:35:29', '2025-11-24 23:35:29'),
(65, 28, 'backend/uploads/images/projects/1849697846393089.jpg', NULL, '2025-11-24 23:35:29', '2025-11-24 23:35:29'),
(66, 28, 'backend/uploads/images/projects/1849697846563175.jpg', NULL, '2025-11-24 23:35:29', '2025-11-24 23:35:29'),
(67, 28, 'backend/uploads/images/projects/1849697846737928.jpg', NULL, '2025-11-24 23:35:29', '2025-11-24 23:35:29'),
(68, 28, 'backend/uploads/images/projects/1849697846916153.jpg', NULL, '2025-11-24 23:35:29', '2025-11-24 23:35:29'),
(69, 29, 'backend/uploads/images/projects/1851059502721633.jpg', NULL, '2025-12-10 00:18:26', '2025-12-10 00:18:26'),
(70, 29, 'backend/uploads/images/projects/1851059502962145.jpg', NULL, '2025-12-10 00:18:26', '2025-12-10 00:18:26'),
(71, 29, 'backend/uploads/images/projects/1851059503150978.jpg', NULL, '2025-12-10 00:18:26', '2025-12-10 00:18:26'),
(72, 29, 'backend/uploads/images/projects/1851059503300912.jpg', NULL, '2025-12-10 00:18:26', '2025-12-10 00:18:26'),
(73, 29, 'backend/uploads/images/projects/1851059503436921.jpg', NULL, '2025-12-10 00:18:26', '2025-12-10 00:18:26'),
(74, 29, 'backend/uploads/images/projects/1851059503582709.jpg', NULL, '2025-12-10 00:18:26', '2025-12-10 00:18:26'),
(75, 30, 'backend/uploads/images/projects/1851059796721159.jpg', NULL, '2025-12-10 00:23:06', '2025-12-10 00:23:06'),
(76, 30, 'backend/uploads/images/projects/1851059796808991.jpg', NULL, '2025-12-10 00:23:06', '2025-12-10 00:23:06'),
(77, 30, 'backend/uploads/images/projects/1851059796866428.jpg', NULL, '2025-12-10 00:23:06', '2025-12-10 00:23:06'),
(78, 31, 'backend/uploads/images/projects/1851060024039758.jpg', NULL, '2025-12-10 00:26:43', '2025-12-10 00:26:43'),
(79, 31, 'backend/uploads/images/projects/1851060024125273.jpg', NULL, '2025-12-10 00:26:43', '2025-12-10 00:26:43'),
(80, 31, 'backend/uploads/images/projects/1851060024196851.jpg', NULL, '2025-12-10 00:26:43', '2025-12-10 00:26:43'),
(81, 31, 'backend/uploads/images/projects/1851060024845775.jpg', NULL, '2025-12-10 00:26:44', '2025-12-10 00:26:44'),
(82, 32, 'backend/uploads/images/projects/1851060475021675.jpg', NULL, '2025-12-10 00:33:53', '2025-12-10 00:33:53'),
(83, 32, 'backend/uploads/images/projects/1851060475170382.jpg', NULL, '2025-12-10 00:33:53', '2025-12-10 00:33:53'),
(84, 32, 'backend/uploads/images/projects/1851060475310389.jpg', NULL, '2025-12-10 00:33:53', '2025-12-10 00:33:53'),
(85, 32, 'backend/uploads/images/projects/1851060475464061.jpg', NULL, '2025-12-10 00:33:53', '2025-12-10 00:33:53'),
(86, 32, 'backend/uploads/images/projects/1851060475621051.jpg', NULL, '2025-12-10 00:33:53', '2025-12-10 00:33:53'),
(87, 32, 'backend/uploads/images/projects/1851060475770188.jpg', NULL, '2025-12-10 00:33:54', '2025-12-10 00:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LANDSCAPING', 1, '2025-11-21 12:09:39', '2025-11-21 16:02:01'),
(2, 'IRRIGATION', 1, '2025-11-21 12:09:53', '2025-11-21 16:02:16'),
(3, 'INTERIOR FIT OUT', 1, '2025-11-21 12:10:24', '2025-11-21 16:02:36'),
(4, 'RESIDENTIAL VILLA', 1, '2025-11-21 12:10:50', '2025-11-21 16:02:57'),
(5, 'RESTAURANTS', 1, '2025-11-21 15:58:58', '2025-11-21 16:04:22'),
(6, 'BAKERY & CONFECTIONERY', 1, '2025-11-21 16:00:00', '2025-11-21 16:04:57'),
(7, 'OFFICE', 1, '2025-11-21 16:00:23', '2025-11-21 16:03:32'),
(8, 'electromechanical work', 1, '2025-11-21 16:00:44', '2025-11-21 16:00:44'),
(9, 'WAREHOUSE', 1, '2025-11-21 16:00:59', '2025-11-21 16:05:12'),
(10, 'FACTORIES', 1, '2025-11-21 16:01:27', '2025-11-21 16:05:29'),
(11, 'SWIMMING POOL', 1, '2025-11-21 16:05:44', '2025-11-21 16:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `project_type` varchar(255) DEFAULT NULL,
  `evaluate_budget` varchar(255) DEFAULT NULL,
  `project_time` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `is_replied` tinyint(4) NOT NULL DEFAULT 0,
  `is_confirmed` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `client_id`, `name`, `email`, `mobile`, `location`, `project_type`, `evaluate_budget`, `project_time`, `company_name`, `file`, `message`, `is_read`, `is_replied`, `is_confirmed`, `created_at`, `updated_at`) VALUES
(31, 60, 'Avishek Barua', 'avishekbarua02@gmail.com', '0192222222', 'chittagong', '1', '12222', '12', 'company', 'backend/uploads/images/quotation_request/1764010251.pdf', 'Message for quotation', 1, 0, 0, '2025-11-24 23:50:51', '2025-11-25 00:28:22'),
(32, 61, 'Sunny Mollick', 'sunnymollick72@gmail.com', '01636524141', 'Chattogram', '1', '12000', '1 month', 'Hardbone', 'backend/uploads/images/quotation_request/1765210134.pdf', 'This is a test message', 1, 1, 0, '2025-12-08 21:08:54', '2025-12-31 04:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_applications`
--

CREATE TABLE `quotation_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_request_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `quotation_code` varchar(255) NOT NULL,
  `tax` double(8,2) DEFAULT 0.00,
  `currency` varchar(255) DEFAULT NULL,
  `discount_amount` double(8,2) DEFAULT 0.00,
  `grand_total` double(8,2) NOT NULL,
  `terms_conditions` text DEFAULT NULL,
  `is_confirmed` tinyint(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_applications`
--

INSERT INTO `quotation_applications` (`id`, `quotation_request_id`, `client_id`, `quotation_code`, `tax`, `currency`, `discount_amount`, `grand_total`, `terms_conditions`, `is_confirmed`, `created_at`, `updated_at`) VALUES
(32, 32, 61, 'QT-2025001', 10.00, 'TK', 2.00, 1100.00, 'ee', 1, '2025-12-31 04:39:16', '2025-12-31 04:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(255) NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_details`
--

INSERT INTO `quotation_details` (`id`, `quotation_id`, `item_id`, `category_id`, `unit`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(55, 32, 6, 1, 'LUMP SUM', 34.00, 18.00, 612.00, '2025-12-31 04:39:16', '2025-12-31 04:39:16'),
(56, 32, 21, 8, 'M3', 26.00, 15.00, 390.00, '2025-12-31 04:39:16', '2025-12-31 04:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_title` varchar(255) DEFAULT NULL,
  `service_details` text DEFAULT NULL,
  `slogan` text DEFAULT NULL,
  `hero_image` varchar(255) NOT NULL DEFAULT 'backend/uploads/images/services/default_images/default_hero.png',
  `thumbnail_image` varchar(255) NOT NULL DEFAULT 'backend/uploads/images/services/default_images/default_thumbnail.png',
  `image_1` varchar(255) NOT NULL DEFAULT 'backend/uploads/images/services/default_images/default_first.png',
  `image_2` varchar(255) NOT NULL DEFAULT 'backend/uploads/images/services/default_images/default_second.png',
  `logo` varchar(255) NOT NULL DEFAULT 'backend/uploads/images/services/default_images/default_logo.png',
  `home_image` varchar(255) NOT NULL DEFAULT 'backend/uploads/images/services/default_images/default_home.png',
  `video_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_details`, `slogan`, `hero_image`, `thumbnail_image`, `image_1`, `image_2`, `logo`, `home_image`, `video_link`, `created_at`, `updated_at`) VALUES
(2, 'WATERPROOFING', '<p>Burglars prefer to work in the cover of dark. By setting up lighting around your garage can aid in keeping burglars at bay. Install a sensor light to turn on as you enter the driveway and approach the garage. Not only will it prove a burglar deterrent it will also assist you with seeing better to come home late.</p>\r\n\r\n<p>As the world continues to fight COVID-19 some property owners are searching for way they can improve the security of their buildings whilst decreasing the spread of germs and bacteria. The following 3 hygienic security solutions are suitable for use within high traffic areas across both residential and commercial buildings.</p>\r\n\r\n<p>&nbsp;</p>', 'Dubai Builder is the safe, reliable & cost effective construction company.', 'backend/uploads/images/services/1801810563765834.png', 'backend/uploads/images/services/thumbnail/1801809342158193.jpg', 'backend/uploads/images/services/1801809342401770.png', 'backend/uploads/images/services/1801809342537318.png', 'backend/uploads/images/services/1801809342633040.png', 'backend/uploads/images/services/1801809342635996.png', 'https://www.youtube.com/embed/TPyXCFmG2Ws?si=JUYZEJUcuRvs9u7M', '2024-06-14 08:28:13', '2025-11-23 11:01:11'),
(4, 'Landscaping & Soft scaping', '<p>Burglars prefer to work in the cover of dark. By setting up lighting around your garage can aid in keeping burglars at bay. Install a sensor light to turn on as you enter the driveway and approach the garage. Not only will it prove a burglar deterrent it will also assist you with seeing better to come home late.</p>\r\n\r\n<p>As the world continues to fight COVID-19 some property owners are searching for way they can improve the security of their buildings whilst decreasing the spread of germs and bacteria. The following 3 hygienic security solutions are suitable for use within high traffic areas across both residential and commercial buildings.</p>', 'Dubai Builder is the safe, reliable & cost effective construction company.', 'backend/uploads/images/services/1803665783450770.png', 'backend/uploads/images/services/thumbnail/1803665783394101.jpg', 'backend/uploads/images/services/1803665783601184.png', 'backend/uploads/images/services/1803665783685516.png', 'backend/uploads/images/services/1803665783755991.png', 'backend/uploads/images/services/1803665783758656.png', 'https://www.youtube.com/embed/zVdHCvCxtTg?si=-WpMRT3ocuxBRT98', '2024-07-04 20:15:33', '2025-11-23 11:00:12'),
(7, 'SWIMMING POOL WORK & MAINTENANCE', '<p>dd</p>', 'FOCUS ON SUSTAINABILITY & LEGACY', 'backend/uploads/images/services/1849612114187715.jpg', 'backend/uploads/images/services/thumbnail/1849612113550994.jpg', 'backend/uploads/images/services/1849612114950152.jpg', 'backend/uploads/images/services/1849612115587507.jpg', 'backend/uploads/images/services/1849612116196294.jpg', 'backend/uploads/images/services/1849612116818456.jpg', NULL, '2025-11-24 00:52:51', '2025-11-24 00:52:51'),
(9, 'INTERIOR FIT OUT PROJECT', '<p>WW</p>', 'FOCUS ON SUSTAINABILITY & LEGACY', 'backend/uploads/images/services/1849743547657825.jpg', 'backend/uploads/images/services/thumbnail/1849743547605677.jpg', 'backend/uploads/images/services/1849743547715368.jpg', 'backend/uploads/images/services/1849743547880787.jpg', 'backend/uploads/images/services/1849743550339690.jpg', 'backend/uploads/images/services/1849743550507888.jpg', 'WW', '2025-11-25 11:41:56', '2025-11-25 11:45:19'),
(10, 'OFFICE BUILDING', '<p>SS</p>', 'FOCUS ON SUSTAINABILITY & LEGACY', 'backend/uploads/images/services/1849744348940205.jpg', 'backend/uploads/images/services/thumbnail/1849744348891144.jpg', 'backend/uploads/images/services/1849744349122567.jpg', 'backend/uploads/images/services/1849744349230560.jpg', 'backend/uploads/images/services/1849744349496059.jpg', 'backend/uploads/images/services/1849744349621489.jpg', NULL, '2025-11-25 11:54:38', '2025-11-25 11:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(255) DEFAULT NULL,
  `app_logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_secondary` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_secondary` varchar(255) DEFAULT NULL,
  `phone_1` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `trn_number` varchar(255) DEFAULT NULL,
  `opening_time` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `dribble_link` varchar(255) DEFAULT NULL,
  `instragram_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `maps` text DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `app_name`, `app_logo`, `address`, `address_secondary`, `email`, `email_secondary`, `phone_1`, `phone_2`, `trn_number`, `opening_time`, `fb_link`, `twitter_link`, `dribble_link`, `instragram_link`, `linkedin_link`, `footer_text`, `maps`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Hardbone Building Contracting & Electromechanical LLC-S.P.C', 'backend/uploads/images/logo/1849507546402695.png', 'OFFICE #01, PLOT-C3, SECTOR W6, ZONE -AL HISN, REMAH TOWER, ABU DHABI CITY', NULL, 'info@hardbone.ae', NULL, '+971569704323', NULL, '123456', 'Monday-Friday (10am - 6pm)', 'https://www.facebook.com/profile.php?id=615829607043106070431030142', 'https://x.com/hardbone25', NULL, 'https://www.instagram.com/hardbone71', 'https://www.linkedin.com/company/109728345/admin/dashboard/', 'All rights reserved Hardbone & Assafeer', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3631.193371493198!2d54.35152327441637!3d24.4787559604269!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5e67c86ae06059%3A0xf1d4f048d8e1a6e6!2sRemah%20Tower!5e0!3m2!1sen!2sit!4v1763665842916!5m2!1sen!2sit\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, '2025-11-22 21:10:45', '2025-11-22 21:10:45'),
(2, 'ASSAFEER BUILDING CONTRACTING LLC', 'backend/uploads/images/logo/1850199568734809.jpg', 'office #136, ground floor ALRIYADI BUSINESS CENTER , ALQASIDAT , RAS AL KHAIMAH', NULL, 'info@assafeerrak.com', NULL, '00971564323442', NULL, '100527139800003', NULL, NULL, NULL, NULL, NULL, NULL, 'a', NULL, NULL, '2025-11-30 12:30:09', '2025-11-30 12:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `video` varchar(255) NOT NULL DEFAULT 'backend/uploads/videos/slider/default_slider/pexels_videos_3925 (1080p).mp4',
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `video`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'slider 1', NULL, '', 1, NULL, '2024-02-12 01:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `x_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `image`, `email`, `phone`, `fb_link`, `x_link`, `linkedin_link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(3, 'Mohammad Abdul Kader Chowdhury', 'PROJECT MANAGER', 'backend/uploads/images/team/1849341786383059.jpg', 'pm@hardbone.ae', '+971564323442', 'https://www.facebook.com/mohammad.chowdhury.129/', 'https://x.com/mchowdhury1983', 'https://www.linkedin.com/in/mohammadchowdhury/', '<p>With over 17 years of experience in the construction industry, I am a dedicated Construction Project Manager and LEED Accredited Professional (LEED AP) passionate about driving sustainability and excellence in every project. My career spans diverse sectors, including residential, commercial, and industrial construction, where I have successfully delivered projects on time, within budget, and to the highest quality standards.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As a LEED AP, I am committed to implementing green building practices and strategies that promote energy efficiency, reduce environmental impact, and enhance occupant well-being. My strong background in project planning, risk management, and team leadership has been instrumental in achieving these goals Sustainable Construction: Expertise in incorporating LEED principles and green building practices to create environmentally responsible and resource-efficient projects.</p>\r\n\r\n<p>Project Planning &amp; Execution: Proficient in developing detailed project plans, scheduling, and resource allocation to ensure smooth project execution.</p>\r\n\r\n<p>Risk Management: Skilled in identifying potential risks and devising effective mitigation strategies to minimize their impact.</p>\r\n\r\n<p>Team Leadership: Proven ability to lead multidisciplinary teams, fostering collaboration and achieving project goals. Stakeholder Communication: Strong communicator adept at managing relationships with clients, subcontractors, and suppliers. Innovative Solutions: Passionate about integrating advanced technologies and sustainable practices to enhance project outcomes.</p>', 1, '2024-09-24 19:01:01', '2025-11-21 01:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `title`, `created_at`, `updated_at`) VALUES
(5, 'M2', '2024-10-04 10:39:14', '2024-10-04 10:41:51'),
(6, 'M3', '2024-10-04 10:39:29', '2024-10-04 10:41:35'),
(7, 'LUMP SUM', '2024-10-04 10:39:43', '2024-10-04 11:28:24'),
(8, 'RM', '2024-10-04 10:40:14', '2024-10-04 11:29:49'),
(9, 'PC', '2024-10-04 10:40:33', '2024-10-04 10:40:33'),
(10, 'TON', '2024-10-04 10:40:48', '2024-10-04 10:40:48'),
(11, 'NO.', '2024-10-04 10:41:02', '2024-10-04 11:27:43'),
(12, 'BUNDLE', '2024-10-04 11:30:54', '2024-10-04 11:30:54');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'superadmin@email.com', NULL, '$2a$12$ijbNDwvXN5n1iK8Nw86Se.0z7oPAN7qRYyi7/K/pijXuoe/W8eEgG', NULL, NULL, '2023-08-27 19:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `work_categories`
--

CREATE TABLE `work_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_categories`
--

INSERT INTO `work_categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'PRELIMINARIES WORK', '2023-12-30 12:46:53', '2024-10-04 11:12:26'),
(8, 'UNDERGROUND LEVEL EXCAVATION AND CONCRETE WORK', '2024-10-04 11:11:32', '2024-10-04 11:11:32'),
(9, 'SUPERSTRUCTURE CONCRETE WORK', '2024-10-04 11:13:35', '2024-10-04 11:25:08'),
(10, 'BLOCK WORKS', '2024-10-04 11:13:54', '2024-10-04 11:13:54'),
(11, 'INSULATION WORK', '2024-10-04 11:14:51', '2024-10-04 11:14:51'),
(12, 'FINISHING WORK', '2024-10-04 11:15:46', '2024-10-04 11:15:46'),
(13, 'CARPENTARY WORK', '2024-10-04 11:16:09', '2024-10-04 11:16:09'),
(14, 'ALUMINIUM & GLASS WORKS', '2024-10-04 11:16:39', '2024-10-04 11:23:28'),
(15, 'JOINERY & IRONMONGERY WORK', '2024-10-04 11:18:02', '2024-10-04 11:18:02'),
(16, 'ELECTRICAL WORKS', '2024-10-04 11:19:03', '2024-10-04 11:19:03'),
(17, 'PLUMBING WORKS', '2024-10-04 11:19:30', '2024-10-04 11:19:30'),
(18, 'AIR CONDITIONING WORKS', '2024-10-04 11:20:02', '2024-10-04 11:23:47'),
(19, 'INTERIOR WORKS', '2024-10-04 11:20:39', '2024-10-04 11:20:39'),
(20, 'EXTERNAL WORKS', '2024-10-04 11:21:21', '2024-10-04 11:21:21'),
(21, 'Miscellaneous Work', '2024-10-04 11:22:49', '2024-10-04 11:22:49'),
(22, 'LANDSCAPE WORKS', '2024-10-04 11:27:09', '2024-10-04 11:27:09'),
(23, 'HEAVY EQUIPMENTS', '2024-10-05 23:56:11', '2024-10-05 23:56:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_quotation_id_foreign` (`quotation_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_details_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_details_item_id_foreign` (`item_id`),
  ADD KEY `invoice_details_category_id_foreign` (`category_id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_payments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_work_category_id_foreign` (`work_category_id`),
  ADD KEY `items_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_id_index` (`client_id`),
  ADD KEY `projects_quotation_id_index` (`quotation_id`);

--
-- Indexes for table `project_images`
--
ALTER TABLE `project_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_images_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_client_id_foreign` (`client_id`);

--
-- Indexes for table `quotation_applications`
--
ALTER TABLE `quotation_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_applications_quotation_request_id_foreign` (`quotation_request_id`),
  ADD KEY `quotation_applications_client_id_foreign` (`client_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation_details_quotation_id_foreign` (`quotation_id`),
  ADD KEY `quotation_details_item_id_foreign` (`item_id`),
  ADD KEY `quotation_details_category_id_foreign` (`category_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_categories`
--
ALTER TABLE `work_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project_images`
--
ALTER TABLE `project_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `quotation_applications`
--
ALTER TABLE `quotation_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_categories`
--
ALTER TABLE `work_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotation_applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `work_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_details_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD CONSTRAINT `invoice_payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_work_category_id_foreign` FOREIGN KEY (`work_category_id`) REFERENCES `work_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotation_applications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotation_applications`
--
ALTER TABLE `quotation_applications`
  ADD CONSTRAINT `quotation_applications_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quotation_applications_quotation_request_id_foreign` FOREIGN KEY (`quotation_request_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation_details_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `work_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quotation_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quotation_details_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotation_applications` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
