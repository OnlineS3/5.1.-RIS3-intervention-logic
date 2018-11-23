-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql.s3platform.eu
-- Generation Time: Nov 23, 2018 at 05:27 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interventionlogic`
--

-- --------------------------------------------------------

--
-- Table structure for table `descr_type`
--

CREATE TABLE `descr_type` (
  `type_id` int(1) NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eu_prio`
--

CREATE TABLE `eu_prio` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eu_prio`
--

INSERT INTO `eu_prio` (`id`, `description`) VALUES
(1, 'Smart Growth'),
(2, 'Sustainable Growth'),
(3, 'Inclusive Growth');

-- --------------------------------------------------------

--
-- Table structure for table `inv_prio`
--

CREATE TABLE `inv_prio` (
  `id` varchar(10) NOT NULL,
  `obj_id` varchar(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_prio`
--

INSERT INTO `inv_prio` (`id`, `obj_id`, `description`) VALUES
('IP1.a', 'TO1', 'enhancing research and innovation (R&I) infrastructure and capacities to develop R&I excellence, and promoting centres of competence, in particular those of European interest;'),
('IP1.b', 'TO1', 'promoting business investment in R&I, developing links and synergies between enterprises, research and development centres and the higher education sector, in particular promoting investment in product and service development, technology transfer, social innovation, eco-innovation, public service applications, demand stimulation, networking, clusters and open innovation through smart specialisation, and supporting technological and applied research, pilot lines, early product validation actions, advanced manufacturing capabilities and first production, in particular in key enabling technologies and diffusion of general purpose technologies'),
('IP10.a', 'TO10', 'investing in education, training and vocational training for skills and lifelong learning by developing education and training infrastructure;'),
('IP11.a', 'TO11', 'enhancing institutional capacity of public authorities and stakeholders and efficient public administration through actions to strengthen the institutional capacity and the efficiency of public administrations and public services related to the implementation of the ERDF, and in support of actions under the ESF to strengthen the institutional capacity and the efficiency of public administration.'),
('IP2.a', 'TO2', 'extending broadband deployment and the roll-out of high-speed networks and supporting the adoption of emerging technologies and networks for the digital economy'),
('IP2.b', 'TO2', 'developing ICT products and services, e-commerce, and enhancing demand for ICT;'),
('IP2.c', 'TO2', 'strengthening ICT applications for e-government, e-learning, e-inclusion, e-culture and e-health'),
('IP3.a', 'TO3', 'promoting entrepreneurship, in particular by facilitating the economic exploitation of new ideas and fostering the creation of new firms, including through business incubators'),
('IP3.b', 'TO3', 'developing and implementing new business models for SMEs, in particular with regard to internationalisation'),
('IP3.c', 'TO3', 'supporting the creation and the extension of advanced capacities for product and service development'),
('IP3.d', 'TO3', 'supporting the capacity of SMEs to grow in regional, national and international markets, and to engage in innovation processes;'),
('IP4.a', 'TO4', 'promoting the production and distribution of energy derived from renewable sources;'),
('IP4.b', 'TO4', 'promoting energy efficiency and renewable energy use in enterprises;'),
('IP4.c', 'TO4', 'supporting energy efficiency, smart energy management and renewable energy use in public infrastructure, including in public buildings, and in the housing sector;'),
('IP4.d', 'TO4', 'developing and implementing smart distribution systems that operate at low and medium voltage levels;'),
('IP4.e', 'TO4', 'promoting low-carbon strategies for all types of territories, in particular for urban areas, including the promotion of sustainable multimodal urban mobility and mitigation-relevant adaptation measures;'),
('IP4.f', 'TO4', 'promoting research and innovation in, and adoption of, low-carbon technologies;'),
('IP4.g', 'TO4', 'promoting the use of high-efficiency co-generation of heat and power based on useful heat demand;'),
('IP5.a', 'TO5', 'supporting investment for adaptation to climate change, including ecosystem-based approaches;'),
('IP5.b', 'TO5', 'promoting investment to address specific risks, ensuring disaster resilience and developing disaster management systems;'),
('IP6.a', 'TO6', 'investing in the waste sector to meet the requirements of the Union environmental acquis and to address needs, identified by the Member States, for investment that goes beyond those requirements;'),
('IP6.b', 'TO6', 'investing in the water sector to meet the requirements of the Union environmental acquis and to address needs, identified by the Member States, for investment that goes beyond those requirements;'),
('IP6.c', 'TO6', 'conserving, protecting, promoting and developing natural and cultural heritage;'),
('IP6.d', 'TO6', 'protecting and restoring biodiversity and soil and promoting ecosystem services, including through Natura 2000, and green infrastructure;'),
('IP6.e', 'TO6', 'taking action to improve the urban environment, to revitalise cities, regenerate and decontaminate brownfield sites (including conversion areas), reduce air pollution and promote noise-reduction measures;'),
('IP6.f', 'TO6', 'promoting innovative technologies to improve environmental protection and resource efficiency in the waste sector, water sector and with regard to soil, or to reduce air pollution;'),
('IP6.g', 'TO6', 'supporting industrial transition towards a resource-efficient economy, promoting green growth, eco-innovation and environmental performance management in the public and private sectors;'),
('IP7.a', 'TO7', 'supporting a multimodal Single European Transport Area by investing in the TEN-T;'),
('IP7.b', 'TO7', 'enhancing regional mobility by connecting secondary and tertiary nodes to TEN-T infrastructure, including multimodal nodes;'),
('IP7.c', 'TO7', 'developing and improving environmentally-friendly (including low-noise) and low-carbon transport systems, including inland waterways and maritime transport, ports, multimodal links and airport infrastructure, in order to promote sustainable regional and local mobility;'),
('IP7.d', 'TO7', 'developing and rehabilitating comprehensive, high quality and interoperable railway systems, and promoting noise-reduction measures;'),
('IP7.e', 'TO7', 'improving energy efficiency and security of supply through the development of smart energy distribution, storage and transmission systems and through the integration of distributed generation from renewable sources;'),
('IP8.a', 'TO8', 'supporting the development of business incubators and investment support for self-employment, micro-enterprises and business creation;'),
('IP8.b', 'TO8', 'supporting employment-friendly growth through the development of endogenous potential as part of a territorial strategy for specific areas, including the conversion of declining industrial regions and enhancement of accessibility to, and development of, specific natural and cultural resources;'),
('IP8.c', 'TO8', 'supporting local development initiatives and aid for structures providing neighbourhood services to create jobs, where such actions are outside the scope of Regulation (EU) No 1304/2013 of the European Parliament and of the Council?(10);'),
('IP8.d', 'TO8', 'investing in infrastructure for employment services;'),
('IP9.a', 'TO9', 'investing in health and social infrastructure which contributes to national, regional and local development, reducing inequalities in terms of health status, promoting social inclusion through improved access to social, cultural and recreational services and the transition from institutional to community-based services;'),
('IP9.b', 'TO9', 'providing support for physical, economic and social regeneration of deprived communities in urban and rural areas;'),
('IP9.c', 'TO9', 'providing support for social enterprises;'),
('IP9.d', 'TO9', 'undertaking investment in the context of community-led local development strategies;');

-- --------------------------------------------------------

--
-- Table structure for table `objective`
--

CREATE TABLE `objective` (
  `id` varchar(10) NOT NULL,
  `eu_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objective`
--

INSERT INTO `objective` (`id`, `eu_id`, `description`) VALUES
('TO1', 1, 'Strengthening research, technological development and innovation'),
('TO10', 3, 'Investing in education, skills and lifelong learning'),
('TO11', 3, 'Enhancing institutional capacity and an efficient public administration'),
('TO2', 1, 'Enhancing access to, and use and quality of, information and communication technologies'),
('TO3', 1, 'Enhancing the competitiveness of small and medium-sized enterprises, the agricultural sector (for the EAFRD) and the fisheries and aquaculture sector (for the EMFF)'),
('TO4', 2, 'Supporting the shift towards a low-carbon economy in all sectors'),
('TO5', 2, 'Promoting climate change adaptation, risk prevention and management'),
('TO6', 2, 'Protecting the environment and promoting resource efficiency'),
('TO7', 2, 'Promoting sustainable transport and removing bottlenecks in key network infrastructures'),
('TO8', 3, 'Promoting employment and supporting labour mobility'),
('TO9', 3, 'Promoting social inclusion and combating poverty');

-- --------------------------------------------------------

--
-- Table structure for table `prio_data`
--

CREATE TABLE `prio_data` (
  `box_id` bigint(20) NOT NULL,
  `up_id` bigint(20) NOT NULL,
  `box_type` varchar(3) NOT NULL,
  `box_order` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prio_descr`
--

CREATE TABLE `prio_descr` (
  `descr_id` bigint(20) NOT NULL,
  `up_id` bigint(20) NOT NULL,
  `descr_type` int(1) NOT NULL,
  `descr_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prio_types`
--

CREATE TABLE `prio_types` (
  `id` varchar(3) NOT NULL,
  `parent_id` varchar(3) DEFAULT NULL,
  `label` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prio_types`
--

INSERT INTO `prio_types` (`id`, `parent_id`, `label`, `description`) VALUES
('act', 'pol', 'Action plan implementation', 'Action plan implementation'),
('con', NULL, 'Context', 'Context'),
('def', 'pol', 'Definition of actions', 'Definition of actions'),
('edp', 'vis', 'EDP', 'EDP'),
('ext', 'vis', 'Extroversion Analysis', 'Extroversion Analysis'),
('for', 'vis', 'Foresight', 'Foresight'),
('mon', NULL, 'Monitoring', 'Monitoring'),
('out', 'mon', 'Output indicators', 'Output indicators'),
('pol', NULL, 'Policy Mix', 'Policy Mix'),
('rel', 'vis', 'Related Variety', 'Related Variety'),
('res', 'mon', 'Result indicators', 'Result indicators'),
('vis', NULL, 'Vision/Priority', 'Vision Statement / Priority Settings');

-- --------------------------------------------------------

--
-- Table structure for table `user_prio`
--

CREATE TABLE `user_prio` (
  `up_id` bigint(20) NOT NULL,
  `inv_id` varchar(10) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `creation_dt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_dt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `has_report` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2017-03-27 09:40:06', '2017-03-27 08:40:06', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://interventionlogic.s3platform.eu', 'yes'),
(2, 'home', 'https://interventionlogic.s3platform.eu', 'yes'),
(3, 'blogname', 'Intervention Logic', 'yes'),
(4, 'blogdescription', 'OnlineS3 Platform', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'elvi.galanaki@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'jS F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:6:\"^auth0\";s:17:\"index.php?auth0=1\";s:41:\"^\\.well-known/oauth2-client-configuration\";s:33:\"index.php?a0_action=oauth2-config\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"wbcr-snippets/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"wbcr-snippets/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"wbcr-snippets/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wbcr-snippets/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wbcr-snippets/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"wbcr-snippets/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"wbcr-snippets/([^/]+)/embed/?$\";s:61:\"index.php?post_type=wbcr-snippets&name=$matches[1]&embed=true\";s:34:\"wbcr-snippets/([^/]+)/trackback/?$\";s:55:\"index.php?post_type=wbcr-snippets&name=$matches[1]&tb=1\";s:42:\"wbcr-snippets/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?post_type=wbcr-snippets&name=$matches[1]&paged=$matches[2]\";s:49:\"wbcr-snippets/([^/]+)/comment-page-([0-9]{1,})/?$\";s:68:\"index.php?post_type=wbcr-snippets&name=$matches[1]&cpage=$matches[2]\";s:38:\"wbcr-snippets/([^/]+)(?:/([0-9]+))?/?$\";s:67:\"index.php?post_type=wbcr-snippets&name=$matches[1]&page=$matches[2]\";s:30:\"wbcr-snippets/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"wbcr-snippets/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"wbcr-snippets/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wbcr-snippets/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"wbcr-snippets/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"wbcr-snippets/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:58:\"wbcr-snippet-tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:70:\"index.php?taxonomy=wbcr-snippet-tags&term=$matches[1]&feed=$matches[2]\";s:53:\"wbcr-snippet-tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:70:\"index.php?taxonomy=wbcr-snippet-tags&term=$matches[1]&feed=$matches[2]\";s:34:\"wbcr-snippet-tags/([^/]+)/embed/?$\";s:64:\"index.php?taxonomy=wbcr-snippet-tags&term=$matches[1]&embed=true\";s:46:\"wbcr-snippet-tags/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?taxonomy=wbcr-snippet-tags&term=$matches[1]&paged=$matches[2]\";s:28:\"wbcr-snippet-tags/([^/]+)/?$\";s:53:\"index.php?taxonomy=wbcr-snippet-tags&term=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:18:\"auth0/WP_Auth0.php\";i:1;s:25:\"insert-php/insert_php.php\";i:2;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:3;s:25:\"sucuri-scanner/sucuri.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:84:\"/home/intelelv1/interventionlogic.s3platform.eu/wp-content/themes/onlineS3/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'onlineS322', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:18:\"auth0/WP_Auth0.php\";a:2:{i:0;s:8:\"WP_Auth0\";i:1;s:9:\"uninstall\";}s:25:\"sucuri-scanner/sucuri.php\";s:19:\"sucuriscanUninstall\";}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:68:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"edit_wbcr-snippets\";b:1;s:18:\"read_wbcr-snippets\";b:1;s:20:\"delete_wbcr-snippets\";b:1;s:19:\"edit_wbcr-snippetss\";b:1;s:26:\"edit_others_wbcr-snippetss\";b:1;s:22:\"publish_wbcr-snippetss\";b:1;s:27:\"read_private_wbcr-snippetss\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'WPLANG', 'en_GB', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";N;s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";N;s:9:\"sidebar-3\";N;s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'cron', 'a:7:{i:1542981866;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542986263;a:1:{s:25:\"sucuriscan_scheduled_scan\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543005607;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543048816;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543048972;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543050267;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'nonce_key', 't)<=w[4iqe!5&D)]y5t=B2*)c:Y@4cK+9`?E52#O?MOcck;1(w)4@$zCl6tM]{? ', 'yes'),
(108, 'nonce_salt', 'R&BSaxj`8|$k@VI6%Qqk{LE ZSb:N=0c]qvYP&>ef*aT)plt4So!54i,Qls`# [I', 'yes'),
(117, 'auth_key', '8BzqRGn@=`9oTu[;.c``vBJW)69h(tZSq4QVlX>H]3__N &H[f-T|!%PDdM{]V63', 'yes'),
(118, 'auth_salt', 'Q2<W2hro^53{Q {|gM%Ze.b&h0R;^&F67t_0m>/7giJGwrQ|uU[Q#hOC/Bg[&h27', 'yes'),
(119, 'logged_in_key', 'eL8i/QF,,M[tj+qCN)97?b$]zrL@~e~3F)WW^{A SrC5cby^(OsBg&o=ic|y<]<8', 'yes'),
(120, 'logged_in_salt', '6=t?B`Wn24gE+~uEW&~!QeI{< r-b[e.(^VJ8eYQ OX6:>v,(C%US)KM$p.eA=mW', 'yes'),
(146, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"elvi.galanaki@gmail.com\";s:7:\"version\";s:5:\"4.8.7\";s:9:\"timestamp\";i:1530812489;}', 'no'),
(148, 'recently_activated', 'a:1:{s:18:\"auth0/WP_Auth0.php\";i:1542901802;}', 'yes'),
(155, 'theme_mods_twentysixteen', 'a:3:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542901763;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";N;s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";N;s:9:\"sidebar-3\";N;}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'current_theme', 'OnlineS3', 'yes'),
(157, 'theme_mods_onlineS3', 'a:5:{i:0;b:0;s:16:\"header_textcolor\";s:6:\"1a1a1a\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1542901094;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";N;s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";N;s:9:\"sidebar-3\";N;}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(1339, 'wp_auth0_settings', 'a:74:{s:7:\"version\";i:1;s:9:\"last_step\";i:1;s:18:\"migration_token_id\";N;s:20:\"jwt_auth_integration\";i:0;s:11:\"auth0js-cdn\";s:47:\"https://cdn.auth0.com/js/auth0/9.4/auth0.min.js\";s:6:\"domain\";s:21:\"onlines3.eu.auth0.com\";s:13:\"custom_domain\";s:0:\"\";s:9:\"client_id\";s:32:\"nTg51nSqsVSrxOowY9IRB61vvhGyt7ni\";s:13:\"client_secret\";s:64:\"H9BIEEotD8ozlmrePQgTc0pMFDaP-PNaBiU_B5vvi0U6TGrzPB5pFBjeVGlS6shD\";s:25:\"client_secret_b64_encoded\";b:0;s:24:\"client_signing_algorithm\";s:5:\"HS256\";s:16:\"cache_expiration\";i:1440;s:15:\"auth0_app_token\";N;s:23:\"wordpress_login_enabled\";s:1:\"1\";s:15:\"password_policy\";s:4:\"fair\";s:3:\"sso\";s:1:\"1\";s:12:\"singlelogout\";i:0;s:3:\"mfa\";N;s:11:\"fullcontact\";N;s:18:\"fullcontact_apikey\";s:0:\"\";s:8:\"geo_rule\";N;s:11:\"income_rule\";N;s:19:\"override_wp_avatars\";s:1:\"1\";s:8:\"icon_url\";s:74:\"http://interventionlogic.s3platform.eu/wp-content/uploads/2017/11/logo.png\";s:10:\"form_title\";s:22:\"5.1 Intervention Logic\";s:18:\"social_big_buttons\";i:0;s:8:\"gravatar\";i:0;s:10:\"custom_css\";s:0:\"\";s:9:\"custom_js\";s:0:\"\";s:14:\"username_style\";s:0:\"\";s:13:\"primary_color\";s:16:\"rgb(0, 111, 180)\";s:8:\"language\";s:0:\"\";s:19:\"language_dictionary\";s:0:\"\";s:23:\"requires_verified_email\";s:1:\"1\";s:15:\"skip_strategies\";s:0:\"\";s:22:\"remember_users_session\";b:0;s:25:\"default_login_redirection\";s:56:\"http://interventionlogic.s3platform.eu/index.php?auth0=1\";s:20:\"passwordless_enabled\";b:0;s:20:\"force_https_callback\";i:0;s:7:\"cdn_url\";s:46:\"https://cdn.auth0.com/js/lock/11.5/lock.min.js\";s:14:\"cdn_url_legacy\";s:40:\"https://cdn.auth0.com/js/lock-9.2.min.js\";s:20:\"passwordless_cdn_url\";s:46:\"https://cdn.auth0.com/js/lock/11.5/lock.min.js\";s:16:\"lock_connections\";s:0:\"\";s:16:\"link_auth0_users\";N;s:17:\"auto_provisioning\";i:0;s:12:\"migration_ws\";i:0;s:15:\"migration_token\";N;s:20:\"migration_ips_filter\";i:0;s:13:\"migration_ips\";s:0:\"\";s:10:\"auto_login\";i:0;s:17:\"auto_login_method\";s:0:\"\";s:23:\"auth0_implicit_workflow\";i:0;s:14:\"ip_range_check\";i:0;s:9:\"ip_ranges\";s:0:\"\";s:14:\"valid_proxy_ip\";s:0:\"\";s:20:\"custom_signup_fields\";s:0:\"\";s:10:\"extra_conf\";s:0:\"\";s:18:\"social_twitter_key\";s:0:\"\";s:21:\"social_twitter_secret\";s:0:\"\";s:19:\"social_facebook_key\";s:0:\"\";s:22:\"social_facebook_secret\";s:0:\"\";s:19:\"auth0_server_domain\";s:15:\"auth0.auth0.com\";s:14:\"chart_idp_type\";s:5:\"donut\";s:17:\"chart_gender_type\";s:5:\"donut\";s:14:\"chart_age_type\";s:5:\"donut\";s:14:\"chart_age_from\";s:2:\"10\";s:12:\"chart_age_to\";s:2:\"70\";s:14:\"chart_age_step\";s:1:\"5\";s:11:\"use_lock_10\";s:1:\"1\";s:25:\"wpa0_passwordless_cdn_url\";s:47:\"//cdn.auth0.com/js/lock-passwordless-2.2.min.js\";s:7:\"metrics\";s:1:\"1\";s:11:\"connections\";a:0:{}s:12:\"allow_signup\";i:0;s:19:\"remember_last_login\";i:0;}', 'yes'),
(1340, 'auth0_db_version', '19', 'yes'),
(1341, 'widget_wp_auth0_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1342, 'widget_wp_auth0_popup_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1343, 'widget_wp_auth0_social_amplification_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1344, 'auth0_error_log', 'a:15:{i:0;a:4:{s:7:\"section\";s:37:\"WP_Auth0_Api_Client::get_client_token\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:272:\"{\"error\":\"access_denied\",\"error_description\":\"Client is not authorized to access \\\"https://onlines3.eu.auth0.com/api/v2/\\\". You might probably want to create a \\\"client-grant\\\" associated to this API. See: https://auth0.com/docs/api/v2#!/Client_Grants/post_client_grants\"}\";s:4:\"date\";i:1538737002;}i:1;a:4:{s:7:\"section\";s:37:\"WP_Auth0_Api_Client::get_client_token\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:272:\"{\"error\":\"access_denied\",\"error_description\":\"Client is not authorized to access \\\"https://onlines3.eu.auth0.com/api/v2/\\\". You might probably want to create a \\\"client-grant\\\" associated to this API. See: https://auth0.com/docs/api/v2#!/Client_Grants/post_client_grants\"}\";s:4:\"date\";i:1538736999;}i:2;a:4:{s:7:\"section\";s:37:\"WP_Auth0_Api_Client::get_client_token\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:272:\"{\"error\":\"access_denied\",\"error_description\":\"Client is not authorized to access \\\"https://onlines3.eu.auth0.com/api/v2/\\\". You might probably want to create a \\\"client-grant\\\" associated to this API. See: https://auth0.com/docs/api/v2#!/Client_Grants/post_client_grants\"}\";s:4:\"date\";i:1538736953;}i:3;a:4:{s:7:\"section\";s:37:\"WP_Auth0_Api_Client::get_client_token\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:272:\"{\"error\":\"access_denied\",\"error_description\":\"Client is not authorized to access \\\"https://onlines3.eu.auth0.com/api/v2/\\\". You might probably want to create a \\\"client-grant\\\" associated to this API. See: https://auth0.com/docs/api/v2#!/Client_Grants/post_client_grants\"}\";s:4:\"date\";i:1538736944;}i:4;a:4:{s:7:\"section\";s:37:\"WP_Auth0_Api_Client::get_client_token\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:272:\"{\"error\":\"access_denied\",\"error_description\":\"Client is not authorized to access \\\"https://onlines3.eu.auth0.com/api/v2/\\\". You might probably want to create a \\\"client-grant\\\" associated to this API. See: https://auth0.com/docs/api/v2#!/Client_Grants/post_client_grants\"}\";s:4:\"date\";i:1538736912;}i:5;a:4:{s:7:\"section\";s:37:\"WP_Auth0_Api_Client::get_client_token\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:272:\"{\"error\":\"access_denied\",\"error_description\":\"Client is not authorized to access \\\"https://onlines3.eu.auth0.com/api/v2/\\\". You might probably want to create a \\\"client-grant\\\" associated to this API. See: https://auth0.com/docs/api/v2#!/Client_Grants/post_client_grants\"}\";s:4:\"date\";i:1536833621;}i:6;a:4:{s:7:\"section\";s:30:\"WP_Auth0_DBManager::install_db\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:205:\"Unable to automatically update Client Grant Type. Please go to your Auth0 Dashboard and add Client Credentials to your Application settings > Advanced > Grant Types for ID nTg51nSqsVSrxOowY9IRB61vvhGyt7ni \";s:4:\"date\";i:1536833620;}i:7;a:4:{s:7:\"section\";s:30:\"WP_Auth0_DBManager::install_db\";s:4:\"code\";s:12:\"unknown_code\";s:7:\"message\";s:321:\"Unable to automatically create Client Grant. Please go to your Auth0 Dashboard and authorize your Application nTg51nSqsVSrxOowY9IRB61vvhGyt7ni for management API scopes update:clients, update:connections, create:connections, read:connections, create:rules, delete:rules, read:users, update:users, update:guardian_factors.\";s:4:\"date\";i:1536833620;}i:8;a:4:{s:7:\"section\";s:22:\"init_auth0_oauth/token\";s:4:\"code\";s:15:\"invalid_request\";s:7:\"message\";s:32:\"Missing required parameter: code\";s:4:\"date\";i:1507983595;}i:9;a:4:{s:7:\"section\";s:22:\"init_auth0_oauth/token\";s:4:\"code\";s:15:\"invalid_request\";s:7:\"message\";s:32:\"Missing required parameter: code\";s:4:\"date\";i:1504622317;}i:10;a:4:{s:7:\"section\";s:22:\"init_auth0_oauth/token\";s:4:\"code\";s:15:\"invalid_request\";s:7:\"message\";s:32:\"Missing required parameter: code\";s:4:\"date\";i:1504024109;}i:11;a:4:{s:7:\"section\";s:22:\"init_auth0_oauth/token\";s:4:\"code\";s:15:\"invalid_request\";s:7:\"message\";s:32:\"Missing required parameter: code\";s:4:\"date\";i:1504013269;}i:12;a:4:{s:7:\"section\";s:30:\"WP_Auth0_Api_Client::get_token\";s:4:\"code\";s:19:\"http_request_failed\";s:7:\"message\";s:43:\"Resolving timed out after 5514 milliseconds\";s:4:\"date\";i:1504003704;}i:13;a:4:{s:7:\"section\";s:30:\"WP_Auth0_Api_Client::get_token\";s:4:\"code\";s:19:\"http_request_failed\";s:7:\"message\";s:43:\"Resolving timed out after 5517 milliseconds\";s:4:\"date\";i:1503937158;}i:14;a:4:{s:7:\"section\";s:34:\"WP_Auth0_Api_Client::update_client\";s:4:\"code\";s:3:\"N/A\";s:7:\"message\";s:111:\"{\"statusCode\":400,\"error\":\"Bad Request\",\"message\":\"Bad HTTP authentication header format\",\"errorCode\":\"Bearer\"}\";s:4:\"date\";i:1503935877;}}', 'yes'),
(2459, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2460, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2461, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2462, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2463, 'db_upgraded', '', 'yes'),
(2466, 'can_compress_scripts', '0', 'no'),
(4171, 'fresh_site', '0', 'yes'),
(6176, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(6186, 'wbcr_inp_cache_options', 'a:3:{s:25:\"factory_dismissed_notices\";b:0;s:44:\"factory_404_plugin_activated_wbcr_insert_php\";i:1536833617;s:17:\"upgrade_up_to_201\";i:1;}', 'yes'),
(6187, 'wbcr_inp_factory_404_plugin_activated_wbcr_insert_php', '1536833617', 'yes'),
(6188, 'factory_plugin_versions', 'a:1:{s:15:\"wbcr_insert_php\";s:10:\"free-2.0.6\";}', 'yes'),
(6189, 'wbcr_inp_upgrade_up_to_201', '1', 'yes'),
(6529, 'secure_auth_key', 'Bx=X2QHF|;7o%7AJWy`rccfWvJ}SKenV-!Il!m];_=6$E[rS5cE@G **g<i^{I-v', 'no'),
(6530, 'secure_auth_salt', 'eM&B8`[RFEWLggdPJY~6f%Sqa2J=OrtkTj/EZ[ZgX5[ x|t]hS921yb?%qzk^tK#', 'no'),
(6555, 'rlrsssl_options', 'a:14:{s:12:\"site_has_ssl\";b:1;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:19:\"review_notice_shown\";b:0;s:25:\"ssl_success_message_shown\";b:0;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:5:\"3.1.2\";s:5:\"debug\";b:0;s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:1;s:19:\"javascript_redirect\";b:1;s:11:\"wp_redirect\";b:1;s:31:\"switch_mixed_content_fixer_hook\";b:0;}', 'yes'),
(7309, '_site_transient_timeout_browser_4f580420fc30ef32385315403354ff54', '1543318913', 'no'),
(7310, '_site_transient_browser_4f580420fc30ef32385315403354ff54', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"63.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(7326, '_transient_is_multi_author', '0', 'yes'),
(7378, '_transient_timeout_plugin_slugs', '1542990313', 'no'),
(7379, '_transient_plugin_slugs', 'a:4:{i:0;s:18:\"auth0/WP_Auth0.php\";i:1;s:25:\"insert-php/insert_php.php\";i:2;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:3;s:25:\"sucuri-scanner/sucuri.php\";}', 'no'),
(7385, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542962439;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(7386, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1542962439;s:7:\"checked\";a:4:{s:18:\"auth0/WP_Auth0.php\";s:5:\"3.8.1\";s:25:\"insert-php/insert_php.php\";s:5:\"2.0.6\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"3.1.2\";s:25:\"sucuri-scanner/sucuri.php\";s:6:\"1.8.18\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:18:\"auth0/WP_Auth0.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:19:\"w.org/plugins/auth0\";s:4:\"slug\";s:5:\"auth0\";s:6:\"plugin\";s:18:\"auth0/WP_Auth0.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/auth0/\";s:7:\"package\";s:48:\"https://downloads.wordpress.org/plugin/auth0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:58:\"https://ps.w.org/auth0/assets/icon-256x256.png?rev=1194871\";s:2:\"1x\";s:58:\"https://ps.w.org/auth0/assets/icon-128x128.png?rev=1194871\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/auth0/assets/banner-1544x500.png?rev=1194880\";s:2:\"1x\";s:60:\"https://ps.w.org/auth0/assets/banner-772x250.png?rev=1194880\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"insert-php/insert_php.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/insert-php\";s:4:\"slug\";s:10:\"insert-php\";s:6:\"plugin\";s:25:\"insert-php/insert_php.php\";s:11:\"new_version\";s:5:\"2.0.6\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/insert-php/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/insert-php.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/insert-php/assets/icon-256x256.jpg?rev=1891898\";s:2:\"1x\";s:63:\"https://ps.w.org/insert-php/assets/icon-128x128.jpg?rev=1891898\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/insert-php/assets/banner-1544x500.jpg?rev=1891898\";s:2:\"1x\";s:65:\"https://ps.w.org/insert-php/assets/banner-772x250.jpg?rev=1891898\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"3.1.2\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/really-simple-ssl.3.1.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.jpg?rev=1881345\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"sucuri-scanner/sucuri.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/sucuri-scanner\";s:4:\"slug\";s:14:\"sucuri-scanner\";s:6:\"plugin\";s:25:\"sucuri-scanner/sucuri.php\";s:11:\"new_version\";s:6:\"1.8.18\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/sucuri-scanner/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/sucuri-scanner.1.8.18.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/sucuri-scanner/assets/icon-256x256.png?rev=1235419\";s:2:\"1x\";s:67:\"https://ps.w.org/sucuri-scanner/assets/icon-128x128.png?rev=1235419\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/sucuri-scanner/assets/banner-772x250.png?rev=1235419\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(7387, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542962439;s:7:\"checked\";a:2:{s:10:\"onlineS322\";s:5:\"1.0.0\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(7408, 'theme_mods_onlineS322', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(7432, '_site_transient_timeout_theme_roots', '1542964239', 'no'),
(7433, '_site_transient_theme_roots', 'a:2:{s:10:\"onlineS322\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1495456978:1'),
(4, 9, '_edit_last', '1'),
(5, 9, '_edit_lock', '1493225894:1'),
(6, 12, '_edit_last', '1'),
(7, 12, '_edit_lock', '1495802975:1'),
(8, 15, '_edit_last', '9'),
(9, 15, '_edit_lock', '1522937278:9'),
(10, 23, '_wp_attached_file', '2017/11/logo.png'),
(11, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:353;s:6:\"height\";i:258;s:4:\"file\";s:16:\"2017/11/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x219.png\";s:5:\"width\";i:300;s:6:\"height\";i:219;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 1, '_edit_lock', '1531820204:1'),
(13, 1, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-03-27 09:40:06', '2017-03-27 08:40:06', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'private', 'open', 'open', '', 'hello-world', '', '', '2018-07-17 10:38:24', '2018-07-17 09:38:24', '', 0, 'http://interventionlogic.s3platform.eu/?p=1', 0, 'post', '', 1),
(2, 1, '2017-03-27 09:40:06', '2017-03-27 08:40:06', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://interventionlogic.s3platform.eu/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-03-27 09:40:06', '2017-03-27 08:40:06', '', 0, 'http://interventionlogic.s3platform.eu/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-03-27 09:43:02', '2017-03-27 08:43:02', '[insert_php]include \'php-src/templates/home.php\';[/insert_php]', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-04-25 09:54:54', '2017-04-25 08:54:54', '', 0, 'http://interventionlogic.s3platform.eu/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-03-27 09:43:02', '2017-03-27 08:43:02', '', 'home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-03-27 09:43:02', '2017-03-27 08:43:02', '', 4, 'http://interventionlogic.s3platform.eu/2017/03/27/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-03-27 10:21:50', '2017-03-27 09:21:50', '[insert_php]include \'php-src/templates/home.php\';[/insert_php]', 'home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-03-27 10:21:50', '2017-03-27 09:21:50', '', 4, 'http://interventionlogic.s3platform.eu/2017/03/27/4-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-04-26 17:57:54', '2017-04-26 16:57:54', '[insert_php]include \'php-src/templates/priorities.php\';[/insert_php]', 'priorities', '', 'publish', 'closed', 'closed', '', 'priorities', '', '', '2017-04-26 17:57:54', '2017-04-26 16:57:54', '', 0, 'http://interventionlogic.s3platform.eu/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-04-26 17:57:54', '2017-04-26 16:57:54', '[insert_php]include \'php-src/templates/priorities.php\';[/insert_php]', 'priorities', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-04-26 17:57:54', '2017-04-26 16:57:54', '', 9, 'http://interventionlogic.s3platform.eu/2017/04/26/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-05-22 12:59:59', '2017-05-22 11:59:59', '[insert_php]include \'php-src/templates/post_result.php\';[/insert_php]', 'post_result', '', 'publish', 'closed', 'closed', '', 'post_result', '', '', '2017-05-22 13:01:36', '2017-05-22 12:01:36', '', 0, 'http://interventionlogic.s3platform.eu/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-05-22 12:59:59', '2017-05-22 11:59:59', '', 'post_result', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-05-22 12:59:59', '2017-05-22 11:59:59', '', 12, 'http://interventionlogic.s3platform.eu/2017/05/22/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-05-22 13:01:36', '2017-05-22 12:01:36', '[insert_php]include \'php-src/templates/post_result.php\';[/insert_php]', 'post_result', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-05-22 13:01:36', '2017-05-22 12:01:36', '', 12, 'http://interventionlogic.s3platform.eu/2017/05/22/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-05-26 13:49:45', '2017-05-26 12:49:45', '<p>test</test>', 'export_report', '', 'publish', 'closed', 'closed', '', 'export_report', '', '', '2018-04-05 14:42:48', '2018-04-05 13:42:48', '', 0, 'http://interventionlogic.s3platform.eu/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-05-26 13:49:45', '2017-05-26 12:49:45', '[insert_php]include \'php-src/templates/export_report.php\';[/insert_php]', 'export_report', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-05-26 13:49:45', '2017-05-26 12:49:45', '', 15, 'http://interventionlogic.s3platform.eu/2017/05/26/15-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-11-07 14:31:57', '2017-11-07 14:31:57', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-11-07 14:31:57', '2017-11-07 14:31:57', '', 0, 'http://interventionlogic.s3platform.eu/wp-content/uploads/2017/11/logo.png', 0, 'attachment', 'image/png', 0),
(26, 9, '2018-04-05 14:42:48', '2018-04-05 13:42:48', '<p>test</test>', 'export_report', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-04-05 14:42:48', '2018-04-05 13:42:48', '', 15, 'http://interventionlogic.s3platform.eu/2018/04/05/15-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-07-17 10:38:24', '2018-07-17 09:38:24', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-07-17 10:38:24', '2018-07-17 09:38:24', '', 1, 'http://interventionlogic.s3platform.eu/2018/07/17/1-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-11-20 11:41:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-20 11:41:53', '0000-00-00 00:00:00', '', 0, 'https://interventionlogic.s3platform.eu/?p=32', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `descr_type`
--
ALTER TABLE `descr_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `eu_prio`
--
ALTER TABLE `eu_prio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_prio`
--
ALTER TABLE `inv_prio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obj_inv_fk_idx` (`obj_id`);

--
-- Indexes for table `objective`
--
ALTER TABLE `objective`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eu_pr_obj_idx` (`eu_id`);

--
-- Indexes for table `prio_data`
--
ALTER TABLE `prio_data`
  ADD PRIMARY KEY (`box_id`),
  ADD KEY `prio_data_fk_indx` (`up_id`);

--
-- Indexes for table `prio_descr`
--
ALTER TABLE `prio_descr`
  ADD PRIMARY KEY (`descr_id`),
  ADD KEY `prio_descr_fk_indx` (`up_id`);

--
-- Indexes for table `prio_types`
--
ALTER TABLE `prio_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label_UNIQUE` (`label`),
  ADD KEY `logic_parent_fk_idx` (`parent_id`);

--
-- Indexes for table `user_prio`
--
ALTER TABLE `user_prio`
  ADD PRIMARY KEY (`up_id`),
  ADD KEY `up_inv_fk_idx` (`inv_id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prio_data`
--
ALTER TABLE `prio_data`
  MODIFY `box_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prio_descr`
--
ALTER TABLE `prio_descr`
  MODIFY `descr_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_prio`
--
ALTER TABLE `user_prio`
  MODIFY `up_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7438;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inv_prio`
--
ALTER TABLE `inv_prio`
  ADD CONSTRAINT `obj_inv_fk` FOREIGN KEY (`obj_id`) REFERENCES `objective` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `objective`
--
ALTER TABLE `objective`
  ADD CONSTRAINT `eu_pr_obj` FOREIGN KEY (`eu_id`) REFERENCES `eu_prio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prio_data`
--
ALTER TABLE `prio_data`
  ADD CONSTRAINT `prio_data_fk` FOREIGN KEY (`up_id`) REFERENCES `user_prio` (`up_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `prio_descr`
--
ALTER TABLE `prio_descr`
  ADD CONSTRAINT `prio_descr_fk` FOREIGN KEY (`up_id`) REFERENCES `user_prio` (`up_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_prio`
--
ALTER TABLE `user_prio`
  ADD CONSTRAINT `up_inv_fk` FOREIGN KEY (`inv_id`) REFERENCES `inv_prio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
