-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wawa_cms
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `refinery_blog_categories`
--

DROP TABLE IF EXISTS `refinery_blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cached_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_categories_on_id` (`id`),
  KEY `index_refinery_blog_categories_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_categories`
--

LOCK TABLES `refinery_blog_categories` WRITE;
/*!40000 ALTER TABLE `refinery_blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_categories_blog_posts`
--

DROP TABLE IF EXISTS `refinery_blog_categories_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_categories_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) DEFAULT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_categories_blog_posts_on_bc_and_bp` (`blog_category_id`,`blog_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_categories_blog_posts`
--

LOCK TABLES `refinery_blog_categories_blog_posts` WRITE;
/*!40000 ALTER TABLE `refinery_blog_categories_blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_blog_categories_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_comments`
--

DROP TABLE IF EXISTS `refinery_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) DEFAULT NULL,
  `spam` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_comments_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9982 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_comments`
--

LOCK TABLES `refinery_blog_comments` WRITE;
/*!40000 ALTER TABLE `refinery_blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_posts`
--

DROP TABLE IF EXISTS `refinery_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `draft` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cached_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_teaser` text COLLATE utf8_unicode_ci,
  `source_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_url_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_count` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_posts_on_id` (`id`),
  KEY `index_refinery_blog_posts_on_access_count` (`access_count`),
  KEY `index_refinery_blog_posts_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_posts`
--

LOCK TABLES `refinery_blog_posts` WRITE;
/*!40000 ALTER TABLE `refinery_blog_posts` DISABLE KEYS */;
INSERT INTO `refinery_blog_posts` VALUES (306,'23232323232','<p>3232</p>',0,'2014-07-25 09:39:00','2014-07-25 09:39:10','2014-07-25 09:39:10',1,NULL,'','','','',1,'23232323232');
/*!40000 ALTER TABLE `refinery_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`),
  KEY `index_f9716c4215584edbca2557e32706a5ae084a15ef` (`refinery_page_part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (1,1,'en','<p>娃娃的首页</p>','2012-08-04 06:36:47','2014-07-24 06:47:51'),(2,2,'en','','2012-08-04 06:36:47','2012-08-09 07:35:59'),(3,3,'en','<style>\r\n.highlight { color: blue; font-weight:bold; font-family: Arial, Courier, Verdana; background-color:white}\r\n</style>\r\n<p>lalala</p>\r\n\r\n<div style=\"display:none\">\r\n<p>Language Skills</p>\r\n<p>English：Fluent speaking and strong abilities of reading&amp;writing. </p>\r\n<p>Work Experience<br />2010/01 -- now： Motorola (contractor) | Senior Rails Engineer </p>\r\n<p>2008/09 -- 2009/02：	Advanced Systems Development Co., Ltd. | Senior Software Engineer<br />As a senior developer, my job is to design and develop some sofeware systems, including testing, optimizing and ect.</p>\r\n<p>2007/05 -- 2008/05：	Beijing BidLink Info-Tech Co., LTD | Senior Software Engineer<br />Working as a developer, my job is to design and develop some sofeware systems.</p>\r\n<p>2005/07 -- 2007/04：	 freelancer <br />I was doing a short-period fulll time job. For example, I worked full-time for a company for three month , and as soon as its project finished, I would go to find another company to begin a new project.</p>\r\n<p>2011/03 -- now: Babble Portal, a sub-system of Moto Blur.</p>\r\n<p><br />Responsibilities: core developer</p>\r\n<p>Project Description: a Middle layer between operators and Motorola phone users, which is used for synchorizing data from server to client. e.g. to control the client phone by pushing some data from Moto server to it. And there are many webservice calls in this system. </p>\r\n<p>Severial modules: devices, device groups, cloudsets management.</p>\r\n<p>Technologies：Rails 3.0.5, Sqlite3, MySQL5 , jQuery, httparty, delayed_jobs.</p>\r\n<p><br />2010/10 -- 2012/3: Zurich contractor management system.(https://focusbeijing.com)</p>\r\n<p><br />Responsibilities: core developer</p>\r\n<p>Project Description: This project is a management system for Zurich Insurance Company to manage all the information of their customers, e.g.: register, contract, and other useful data. It is growing bigger and now consists of several sub-modules: <br />1. Contractor Depot: to manage the stuffs related to user\'s information.<br />2. Focus Application: Core module, where the contractor could fill all the forms and finish all the operations that is needed to an insurance contract. <br />3. Approval Module: Core module, where the employees from the insurance company could verify and approve the contracts.</p>\r\n<p>Feel free to click the demo link, register an user account to take a look at it~</p>\r\n\r\n<p>Technologies：Rails 2.3.5 =&gt; 3.0.1, MySQL5 , jQuery, CruiseControl.rb ...</p>\r\n<p><br />2010/05 -- 2010/10: Smart Start Project for Focussi. (cc.focusbeijing.com) </p>\r\n<p>Responsibilities: core developer</p>\r\n<p>Project Description: It\'s anther contractor management system, very similar with the previous project(Zurich), used for managing the user, contractor for an insurance company. It\'s small however the business inside is complex. It consists of: <br />1. user module: user\'s register, switching status, invitation...<br />2. organization module: to manage an organization and also all the members in it.<br />3. contract module: contract\'s management and approval.<br />Technologies：Rails 2.3.5, MySQL5 , Prototype</p>\r\n<p>2010/04 -- 2011/11 ：Motorola Arkitek</p>\r\n<p>Responsibilities: core developer</p>\r\n<p>Project Description: Arkitek is a light weight ERP system, it is aiming to help moto\'s engineers build the system of mobile phones, and it is becoming a core application which communicates and works with other motorola web applications. It consists of these modules:</p>\r\n<p>1. Build Package: user can specify a product and build its package, or config its Hudson\'s jobs.(Hudson is a continuous integration tool, and in Moto every prototype mobile phone have to build its system by the Hudson server)</p>\r\n<p>2. Product Matrix: where user can select products, edit its customers and commit.</p>\r\n<p>3. Blur module: including configuration, location, versions management. I am not familiar about this module, because it\'s implemented by others.</p>\r\n<p>4. Google online approval module: Because of the copyright of Android, once a Motorola\'s engineer changed something special of Android, he has to fill a form and submit to Google to request for approval. This module is used to automatically fill most fields of a google\'s form from the hudson\'s build result files, and submit it to Google for approval.</p>\r\n<p>5. Admin module: to manage everything in Arkitek. (products, customers, hudson jobs, blur server\'s informations...)</p>\r\n<p>6. Some webservice interfaces for transfering data, in RESTful style.</p>\r\n<p>Technologies：Rails 2.3.5, MySQL5 , JQuery, plugin: will-paginate, TinyMCE editor.</p>\r\n<p>.</p>\r\n<p>2010/03 -- 2010/04：Motorola FlexRay comparison system</p>\r\n<p>Responsibilities: developer, maintainer</p>\r\n<p>Project Description: FlexRay is a comparison system to compare moto\'s products about detailed build information. User is able to choose a [model package] in the list, then he will get all the versions of this [model package] and compare two or more of them. It just like a WEB enhenced version of \"diff\" command. :-) In this project, a comparison tool from Google is used as core algorithm.</p>\r\n<p>In this project, there is a program which is constantly running to fetch data from a remote server.</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , JQuery, Google\'s comparison tool, Webservice, plugin: willing-paginate</p>\r\n<p>.</p>\r\n<p>2010/02 -- 2010/03：Motorola Reflex report system</p>\r\n<p>Responsibilities: core developer, maintainer</p>\r\n<p>Project Description: Reflex is a report system for Motorola\'s all products. The report is generated by date(weekly, monthly, yearly), by platform(such as Android platform), by a period of time, and the result shows the amount of products in different status and other necessary information.</p>\r\n<p>As well as FlexRay, there is a synchronizer program running to synchronize and fetch data from a remote server.</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , JQuery, Webservice, plugin: willing-paginate, Open flash chart</p>\r\n<p>.</p>\r\n<p>2010/01 -- 2010/02：Motorola Product Library</p>\r\n<p>Responsibilities: core developer, maintainer</p>\r\n<p>Project Description: This project is used to manage all the products of motorola. It consists of these modules:</p>\r\n<p>1. List and Search products: user can search or list product by criteria.</p>\r\n<p>2. Favorites: manage one\'s favorite products.</p>\r\n<p>3. History: show a detailed history of a product, including internal name, status, updated date, the gate it passed ...</p>\r\n<p>4. Analysis: display the detailed information of products, comparison results and generate an Excel file.</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , JQuery, plugin: willing-paginate, exception-notification, customized ruby libs.</p>\r\n<p>.</p>\r\n<p>2009/09 -- 2010/01：<a target=\"_blank\" title=\"http://www.archcy.com\" href=\"http://www.archcy.com\">www.archcy.com</a>\r\n</p>\r\n<p>Responsibilities: core developer, CSS developer.</p>\r\n<p>Project Description: This is a portal website in construnction domain in China, it is being maitained by RCCChina, which is a top X construction consultant company. This website is based on Radiant CMS( a very famous open source project ), it has all the basical features that a CMS should have(Post text and images, comment, manage the hierachy of pages, user-role system ..) as well as more special features: gallery module, special topic module, rank module and so on.</p>\r\n<p>It is worth mentionning that I played a CSS developer role in this project and did well.</p>\r\n<p>Technologies：Rails 2.3, Oracle11, Prototype, plugin: willing-paginate, FCKEditor</p>\r\n<p>.</p>\r\n<p>2009/05 -- 2009/07：Silly Crow bug management system <br />Responsibilities: core developer</p>\r\n<p>Project Description: a bug management system just like Jira, very easy to use and to be modified. The \"tester\" rises a bug , \"admin\" assign this bug to a \"developer\", and the \"developer\" can resolve this bug after resolution.At last the \"tester\" can close or reopen it . It\'s small and stupid but effective. :-)</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , plugin: willing-paginate, log4r.</p>\r\n<p>2009/04 -- 2009/04：a web crawller that can fetch information ( http://shappy.sourceforge.net) <br />Responsibilities: core developer.</p>\r\n<p>Project Description: a pure ruby application that can fetch the specificate informations, such as : email address or qq number and so on. It recursively scan the url that user gives and compare the page content to the Regular Expression. It\'s small but useful, used by myself for helping others.</p>\r\n<p>Plateform and Tools: Linux(Slackware) , Apatana RadRails, Ruby 1.8.6</p>\r\n<p>2009/02 -- 2009/04：Ruby on Rails Content Management System<br />Responsibilities：core developer. designer.</p>\r\n<p>Project Description：a CMS with basic functions such as :category management , content management, user-role subsystem, file upload and download. It\'s in simply architecture and easy to modify and maintain.<br />used technologies: Ruby on Rails, MySQL, RAD, Linux(Slackware)<br />plugins: log4r, cache_fu, will_paginate. FckEditor.</p>\r\n<p>2008/01 -- 2009/02：Dudufish -- a Forum System<br />Responsibilities：core developer, desinger.</p>\r\n<p>Project Description：a lightweight-level Forum with basic functions: post, reply, thread management, category management , user-role subsystem. It\'s very easy to maintain or extend.<br />Used plugins: log4r, cache_fu, restful_authenticate, will_paginate, FckEditor</p>\r\n<p>2008/12 -- 2009/01：Optimization for a big music website</p>\r\n<p>Responsibilities: core tester</p>\r\n<p>Project Description: this website went down after 1 month\'s running, its response time falled from less then 1 sencond to more than 60 seconds. After many testing and profiling, the root causes were found from the view layer to the database layer, total in 10+ places. I resolved these errors and so that this website became fine. Now it supports more than 1000+ users online. <br />Platform &amp; Tools：J2EE, Tomcat, MySQL5, Windows, JProfiler, Jmeter. </p>\r\n<p>2008/09 -- 2008/12：Performance Management System of Beijing Mobile</p>\r\n<p>Responsibilities：coding, writing unit test, and organize requirements.<br />Project Description：It can manage most kinds of performances , manage user, role, department and process some complex work flows. This system can also communicate with other servers which is implemented by WebService.<br />Platform &amp; Tools : DB2, Websphere, IBM Server, Eclipse. SVN. Ant,JUnit, Log4j, FreeMarker, Sitemesh, SSH. JBPM. CXF.</p>\r\n<p>2008/04 -- 2008/05：Big Screen Advertise Management System for Digital Radio Express Co.Ltd<br />Responsibilities：coding. Writing unit test and help newcomers.<br />Project Description：It is a Content Management System which contains special function: hardware interface . It can manage the content , screen, cluster and user-role. It is used by two super markets in China : Gome and Sunning. The models done by me are: user management, device management and cluster management.<br />Platform &amp; Tools :Eclipse, Windows, SVN, JSP+ Struts2 + Hibernate + Spring IOC. TDD. Role :core developer</p>\r\n<p>2007/10 -- 2008/01：Bid management system for Shanghai Volkswagen<br />Responsibilities：coding and writing unit test.<br />Project Description：It can support numbers of supplier to bid, and at the same time it can communicate with other servers to exchange the bid-date or bid-result. The model finished by me was the WebService, with Axis1.4, Tomcat4.<br />Platform &amp; Tools :Linux, Postgres, JSP，Struts1, Hibenrate2, WebService., TDD.</p>\r\n<p>2007/09 -- 2007/10：Purchase Website for Bidlink, Beijing . Co.Ltd.</p>\r\n<p>Responsibilities：coding and writing unit test.<br />Project Description：It is similar to an ERP, contains many models and functions . My job is to finish a model called Order Management, which consists of an order\'s creation, management, and process.<br />Platform &amp; Tools :Eclipse, JSP, Aceigi ,Velocity, Hibenrate2, WebService., TDD. Role :developer</p>\r\n<p>2007/05 -- 2007/08：Medicine Website for Bidlink , Beijing, Co.Ltd.</p>\r\n<p>Responsibilities：coding and unit testing, optimize performance .<br />Project Description：This system is more complex than the Purchase Website introduced above. It contains models such as: urse-role management, product management, data and bidding management, enterprise space. I was full participate in it.<br />Platform &amp; Tools :Velocity 1.4, Spring 2.0 IOC, Hibernate3 ，Lucene 2.0，Acegi，Javascript. TDD , CruiseControl</p>\r\n<p>2007/03 -- 2007/04：Production Management System for State Grid, China.<br />Responsibilities：It is used for State Grid to manage this corperation\'s devices all over China. .<br />Platform &amp; Tools :Eclipse, JSP，Struts, Hibenrate2, Jprofiler.<br />Project Description：Mainly optimize the server\'s performance ,also do some testing and coding .</p>\r\n<p>2006/11 – 2006/12： Java implementation of Inheritance arithmetic and L-F encryption arithmetic <br />Project Description : The both two projects are used by a team of Hamburg University in Germany. They are not web applications: one is for calculation and the other is for encryption. Platform &amp; Tools :Eclipse, Swing, Log4j, Junit, TDD<br />Responsibility : coding and unit testing </p>\r\n<p>2006/07 – 2006/09： Blog and Wiki System for Rightlinker Beijing. Co.Ltd Project <br />Description : This system consists of Blog and Wiki, it also has other features like album, media player , message management.</p>\r\n<p>Platform &amp; Tools :Eclipse, JSP，Struts, Hibenrate. <br />Responsibility : coding, code review, and process control. </p>\r\n<p>2006/02 – 2006/04： Contract Management System for Xianming Hongkong Co.Ltd. <br />Project Description : There are a mass of contracts to manage in Xianming company, so this system was required strongly. This System can manage the save, update, delete and other operations such as input or modify orders, input samples and photos of a contract.</p>\r\n<p>Platform &amp; Tools :Dreamweaver, JSP，Struts1.2, MySQL <br />Responsibility : coding and organize requirements. </p>\r\n<p>2005/07 -- 2005/08： Finance Management System for someone Company in Guangdong , China <br />Project Description : This system consists of models like: finance management, people and production management, monthly and yearly bonus management.</p>\r\n<p>Platform &amp; Tools :Struts, Hibernate, Spring IOC. MySQL. Jbuilder. Tomcat <br />Responsibility : coding and writing documents. </p>\r\n<p>2005/03 -- 2005/07 :Remote Education System for South China University of Tech . <br />Project Description : Using SMIL technology developed by RealNetWorks.co , this system can play diffrent parts of the lesson videos according to the students condition. It is a smart video player. It knows what a student already have learned and what not learned by checking his exam papers.</p>\r\n<p>Platform &amp; Tools :Dreamweaver, JSP，MSSQL2000 <br />Responsibility : coding</p>\r\n</div>\r\n','2012-08-04 06:36:48','2014-07-24 06:48:25'),(22,22,'en','<p>111</p>','2012-08-11 23:46:36','2014-07-24 06:48:58'),(23,23,'en','','2012-08-11 23:46:36','2012-08-11 23:53:35');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (1,1,'Body','<p>娃娃的首页</p>',0,'2012-08-04 06:36:47','2014-07-24 06:47:51'),(2,1,'Side Body','',1,'2012-08-04 06:36:47','2014-07-24 06:47:51'),(3,2,'Body','<style>\r\n.highlight { color: blue; font-weight:bold; font-family: Arial, Courier, Verdana; background-color:white}\r\n</style>\r\n<p>lalala</p>\r\n\r\n<div style=\"display:none\">\r\n<p>Language Skills</p>\r\n<p>English：Fluent speaking and strong abilities of reading&amp;writing. </p>\r\n<p>Work Experience<br />2010/01 -- now： Motorola (contractor) | Senior Rails Engineer </p>\r\n<p>2008/09 -- 2009/02：	Advanced Systems Development Co., Ltd. | Senior Software Engineer<br />As a senior developer, my job is to design and develop some sofeware systems, including testing, optimizing and ect.</p>\r\n<p>2007/05 -- 2008/05：	Beijing BidLink Info-Tech Co., LTD | Senior Software Engineer<br />Working as a developer, my job is to design and develop some sofeware systems.</p>\r\n<p>2005/07 -- 2007/04：	 freelancer <br />I was doing a short-period fulll time job. For example, I worked full-time for a company for three month , and as soon as its project finished, I would go to find another company to begin a new project.</p>\r\n<p>2011/03 -- now: Babble Portal, a sub-system of Moto Blur.</p>\r\n<p><br />Responsibilities: core developer</p>\r\n<p>Project Description: a Middle layer between operators and Motorola phone users, which is used for synchorizing data from server to client. e.g. to control the client phone by pushing some data from Moto server to it. And there are many webservice calls in this system. </p>\r\n<p>Severial modules: devices, device groups, cloudsets management.</p>\r\n<p>Technologies：Rails 3.0.5, Sqlite3, MySQL5 , jQuery, httparty, delayed_jobs.</p>\r\n<p><br />2010/10 -- 2012/3: Zurich contractor management system.(https://focusbeijing.com)</p>\r\n<p><br />Responsibilities: core developer</p>\r\n<p>Project Description: This project is a management system for Zurich Insurance Company to manage all the information of their customers, e.g.: register, contract, and other useful data. It is growing bigger and now consists of several sub-modules: <br />1. Contractor Depot: to manage the stuffs related to user\'s information.<br />2. Focus Application: Core module, where the contractor could fill all the forms and finish all the operations that is needed to an insurance contract. <br />3. Approval Module: Core module, where the employees from the insurance company could verify and approve the contracts.</p>\r\n<p>Feel free to click the demo link, register an user account to take a look at it~</p>\r\n\r\n<p>Technologies：Rails 2.3.5 =&gt; 3.0.1, MySQL5 , jQuery, CruiseControl.rb ...</p>\r\n<p><br />2010/05 -- 2010/10: Smart Start Project for Focussi. (cc.focusbeijing.com) </p>\r\n<p>Responsibilities: core developer</p>\r\n<p>Project Description: It\'s anther contractor management system, very similar with the previous project(Zurich), used for managing the user, contractor for an insurance company. It\'s small however the business inside is complex. It consists of: <br />1. user module: user\'s register, switching status, invitation...<br />2. organization module: to manage an organization and also all the members in it.<br />3. contract module: contract\'s management and approval.<br />Technologies：Rails 2.3.5, MySQL5 , Prototype</p>\r\n<p>2010/04 -- 2011/11 ：Motorola Arkitek</p>\r\n<p>Responsibilities: core developer</p>\r\n<p>Project Description: Arkitek is a light weight ERP system, it is aiming to help moto\'s engineers build the system of mobile phones, and it is becoming a core application which communicates and works with other motorola web applications. It consists of these modules:</p>\r\n<p>1. Build Package: user can specify a product and build its package, or config its Hudson\'s jobs.(Hudson is a continuous integration tool, and in Moto every prototype mobile phone have to build its system by the Hudson server)</p>\r\n<p>2. Product Matrix: where user can select products, edit its customers and commit.</p>\r\n<p>3. Blur module: including configuration, location, versions management. I am not familiar about this module, because it\'s implemented by others.</p>\r\n<p>4. Google online approval module: Because of the copyright of Android, once a Motorola\'s engineer changed something special of Android, he has to fill a form and submit to Google to request for approval. This module is used to automatically fill most fields of a google\'s form from the hudson\'s build result files, and submit it to Google for approval.</p>\r\n<p>5. Admin module: to manage everything in Arkitek. (products, customers, hudson jobs, blur server\'s informations...)</p>\r\n<p>6. Some webservice interfaces for transfering data, in RESTful style.</p>\r\n<p>Technologies：Rails 2.3.5, MySQL5 , JQuery, plugin: will-paginate, TinyMCE editor.</p>\r\n<p>.</p>\r\n<p>2010/03 -- 2010/04：Motorola FlexRay comparison system</p>\r\n<p>Responsibilities: developer, maintainer</p>\r\n<p>Project Description: FlexRay is a comparison system to compare moto\'s products about detailed build information. User is able to choose a [model package] in the list, then he will get all the versions of this [model package] and compare two or more of them. It just like a WEB enhenced version of \"diff\" command. :-) In this project, a comparison tool from Google is used as core algorithm.</p>\r\n<p>In this project, there is a program which is constantly running to fetch data from a remote server.</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , JQuery, Google\'s comparison tool, Webservice, plugin: willing-paginate</p>\r\n<p>.</p>\r\n<p>2010/02 -- 2010/03：Motorola Reflex report system</p>\r\n<p>Responsibilities: core developer, maintainer</p>\r\n<p>Project Description: Reflex is a report system for Motorola\'s all products. The report is generated by date(weekly, monthly, yearly), by platform(such as Android platform), by a period of time, and the result shows the amount of products in different status and other necessary information.</p>\r\n<p>As well as FlexRay, there is a synchronizer program running to synchronize and fetch data from a remote server.</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , JQuery, Webservice, plugin: willing-paginate, Open flash chart</p>\r\n<p>.</p>\r\n<p>2010/01 -- 2010/02：Motorola Product Library</p>\r\n<p>Responsibilities: core developer, maintainer</p>\r\n<p>Project Description: This project is used to manage all the products of motorola. It consists of these modules:</p>\r\n<p>1. List and Search products: user can search or list product by criteria.</p>\r\n<p>2. Favorites: manage one\'s favorite products.</p>\r\n<p>3. History: show a detailed history of a product, including internal name, status, updated date, the gate it passed ...</p>\r\n<p>4. Analysis: display the detailed information of products, comparison results and generate an Excel file.</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , JQuery, plugin: willing-paginate, exception-notification, customized ruby libs.</p>\r\n<p>.</p>\r\n<p>2009/09 -- 2010/01：<a target=\"_blank\" title=\"http://www.archcy.com\" href=\"http://www.archcy.com\">www.archcy.com</a>\r\n</p>\r\n<p>Responsibilities: core developer, CSS developer.</p>\r\n<p>Project Description: This is a portal website in construnction domain in China, it is being maitained by RCCChina, which is a top X construction consultant company. This website is based on Radiant CMS( a very famous open source project ), it has all the basical features that a CMS should have(Post text and images, comment, manage the hierachy of pages, user-role system ..) as well as more special features: gallery module, special topic module, rank module and so on.</p>\r\n<p>It is worth mentionning that I played a CSS developer role in this project and did well.</p>\r\n<p>Technologies：Rails 2.3, Oracle11, Prototype, plugin: willing-paginate, FCKEditor</p>\r\n<p>.</p>\r\n<p>2009/05 -- 2009/07：Silly Crow bug management system <br />Responsibilities: core developer</p>\r\n<p>Project Description: a bug management system just like Jira, very easy to use and to be modified. The \"tester\" rises a bug , \"admin\" assign this bug to a \"developer\", and the \"developer\" can resolve this bug after resolution.At last the \"tester\" can close or reopen it . It\'s small and stupid but effective. :-)</p>\r\n<p>Technologies：Rails 2.3, MySQL5 , plugin: willing-paginate, log4r.</p>\r\n<p>2009/04 -- 2009/04：a web crawller that can fetch information ( http://shappy.sourceforge.net) <br />Responsibilities: core developer.</p>\r\n<p>Project Description: a pure ruby application that can fetch the specificate informations, such as : email address or qq number and so on. It recursively scan the url that user gives and compare the page content to the Regular Expression. It\'s small but useful, used by myself for helping others.</p>\r\n<p>Plateform and Tools: Linux(Slackware) , Apatana RadRails, Ruby 1.8.6</p>\r\n<p>2009/02 -- 2009/04：Ruby on Rails Content Management System<br />Responsibilities：core developer. designer.</p>\r\n<p>Project Description：a CMS with basic functions such as :category management , content management, user-role subsystem, file upload and download. It\'s in simply architecture and easy to modify and maintain.<br />used technologies: Ruby on Rails, MySQL, RAD, Linux(Slackware)<br />plugins: log4r, cache_fu, will_paginate. FckEditor.</p>\r\n<p>2008/01 -- 2009/02：Dudufish -- a Forum System<br />Responsibilities：core developer, desinger.</p>\r\n<p>Project Description：a lightweight-level Forum with basic functions: post, reply, thread management, category management , user-role subsystem. It\'s very easy to maintain or extend.<br />Used plugins: log4r, cache_fu, restful_authenticate, will_paginate, FckEditor</p>\r\n<p>2008/12 -- 2009/01：Optimization for a big music website</p>\r\n<p>Responsibilities: core tester</p>\r\n<p>Project Description: this website went down after 1 month\'s running, its response time falled from less then 1 sencond to more than 60 seconds. After many testing and profiling, the root causes were found from the view layer to the database layer, total in 10+ places. I resolved these errors and so that this website became fine. Now it supports more than 1000+ users online. <br />Platform &amp; Tools：J2EE, Tomcat, MySQL5, Windows, JProfiler, Jmeter. </p>\r\n<p>2008/09 -- 2008/12：Performance Management System of Beijing Mobile</p>\r\n<p>Responsibilities：coding, writing unit test, and organize requirements.<br />Project Description：It can manage most kinds of performances , manage user, role, department and process some complex work flows. This system can also communicate with other servers which is implemented by WebService.<br />Platform &amp; Tools : DB2, Websphere, IBM Server, Eclipse. SVN. Ant,JUnit, Log4j, FreeMarker, Sitemesh, SSH. JBPM. CXF.</p>\r\n<p>2008/04 -- 2008/05：Big Screen Advertise Management System for Digital Radio Express Co.Ltd<br />Responsibilities：coding. Writing unit test and help newcomers.<br />Project Description：It is a Content Management System which contains special function: hardware interface . It can manage the content , screen, cluster and user-role. It is used by two super markets in China : Gome and Sunning. The models done by me are: user management, device management and cluster management.<br />Platform &amp; Tools :Eclipse, Windows, SVN, JSP+ Struts2 + Hibernate + Spring IOC. TDD. Role :core developer</p>\r\n<p>2007/10 -- 2008/01：Bid management system for Shanghai Volkswagen<br />Responsibilities：coding and writing unit test.<br />Project Description：It can support numbers of supplier to bid, and at the same time it can communicate with other servers to exchange the bid-date or bid-result. The model finished by me was the WebService, with Axis1.4, Tomcat4.<br />Platform &amp; Tools :Linux, Postgres, JSP，Struts1, Hibenrate2, WebService., TDD.</p>\r\n<p>2007/09 -- 2007/10：Purchase Website for Bidlink, Beijing . Co.Ltd.</p>\r\n<p>Responsibilities：coding and writing unit test.<br />Project Description：It is similar to an ERP, contains many models and functions . My job is to finish a model called Order Management, which consists of an order\'s creation, management, and process.<br />Platform &amp; Tools :Eclipse, JSP, Aceigi ,Velocity, Hibenrate2, WebService., TDD. Role :developer</p>\r\n<p>2007/05 -- 2007/08：Medicine Website for Bidlink , Beijing, Co.Ltd.</p>\r\n<p>Responsibilities：coding and unit testing, optimize performance .<br />Project Description：This system is more complex than the Purchase Website introduced above. It contains models such as: urse-role management, product management, data and bidding management, enterprise space. I was full participate in it.<br />Platform &amp; Tools :Velocity 1.4, Spring 2.0 IOC, Hibernate3 ，Lucene 2.0，Acegi，Javascript. TDD , CruiseControl</p>\r\n<p>2007/03 -- 2007/04：Production Management System for State Grid, China.<br />Responsibilities：It is used for State Grid to manage this corperation\'s devices all over China. .<br />Platform &amp; Tools :Eclipse, JSP，Struts, Hibenrate2, Jprofiler.<br />Project Description：Mainly optimize the server\'s performance ,also do some testing and coding .</p>\r\n<p>2006/11 – 2006/12： Java implementation of Inheritance arithmetic and L-F encryption arithmetic <br />Project Description : The both two projects are used by a team of Hamburg University in Germany. They are not web applications: one is for calculation and the other is for encryption. Platform &amp; Tools :Eclipse, Swing, Log4j, Junit, TDD<br />Responsibility : coding and unit testing </p>\r\n<p>2006/07 – 2006/09： Blog and Wiki System for Rightlinker Beijing. Co.Ltd Project <br />Description : This system consists of Blog and Wiki, it also has other features like album, media player , message management.</p>\r\n<p>Platform &amp; Tools :Eclipse, JSP，Struts, Hibenrate. <br />Responsibility : coding, code review, and process control. </p>\r\n<p>2006/02 – 2006/04： Contract Management System for Xianming Hongkong Co.Ltd. <br />Project Description : There are a mass of contracts to manage in Xianming company, so this system was required strongly. This System can manage the save, update, delete and other operations such as input or modify orders, input samples and photos of a contract.</p>\r\n<p>Platform &amp; Tools :Dreamweaver, JSP，Struts1.2, MySQL <br />Responsibility : coding and organize requirements. </p>\r\n<p>2005/07 -- 2005/08： Finance Management System for someone Company in Guangdong , China <br />Project Description : This system consists of models like: finance management, people and production management, monthly and yearly bonus management.</p>\r\n<p>Platform &amp; Tools :Struts, Hibernate, Spring IOC. MySQL. Jbuilder. Tomcat <br />Responsibility : coding and writing documents. </p>\r\n<p>2005/03 -- 2005/07 :Remote Education System for South China University of Tech . <br />Project Description : Using SMIL technology developed by RealNetWorks.co , this system can play diffrent parts of the lesson videos according to the students condition. It is a smart video player. It knows what a student already have learned and what not learned by checking his exam papers.</p>\r\n<p>Platform &amp; Tools :Dreamweaver, JSP，MSSQL2000 <br />Responsibility : coding</p>\r\n</div>\r\n',0,'2012-08-04 06:36:48','2014-07-24 06:48:25'),(22,12,'Body','<p>111</p>',0,'2012-08-11 23:46:36','2014-07-24 06:48:58'),(23,12,'Side Body','',1,'2012-08-11 23:46:36','2014-07-24 06:48:58');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`),
  KEY `index_d079468f88bff1c6ea81573a0d019ba8bf5c2902` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'en','首页啊亲',NULL,'about-me','About me','2012-08-04 06:36:47','2014-07-24 06:47:51'),(2,2,'en','首页的子页面',NULL,'resume','Resume','2012-08-04 06:36:47','2014-07-24 06:48:25'),(12,12,'en','页面1',NULL,'页面1','页面1','2012-08-11 23:46:35','2014-07-24 06:48:58');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,'about-me',1,'/','^/$',0,0,0,1,4,0,NULL,NULL,'2012-08-04 06:36:47','2014-07-24 06:47:51'),(2,1,NULL,'resume',1,'','^/404$',0,0,0,2,3,1,NULL,NULL,'2012-08-04 06:36:47','2014-07-24 06:48:25'),(12,NULL,NULL,'页面1',0,'','^/blogs?(/|/.+?|)$',0,0,0,5,6,0,NULL,NULL,'2012-08-11 23:46:35','2014-07-24 06:48:58');
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles`
--

DROP TABLE IF EXISTS `refinery_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles`
--

LOCK TABLES `refinery_roles` WRITE;
/*!40000 ALTER TABLE `refinery_roles` DISABLE KEYS */;
INSERT INTO `refinery_roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `refinery_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles_users`
--

DROP TABLE IF EXISTS `refinery_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_refinery_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_refinery_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles_users`
--

LOCK TABLES `refinery_roles_users` WRITE;
/*!40000 ALTER TABLE `refinery_roles_users` DISABLE KEYS */;
INSERT INTO `refinery_roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `refinery_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_settings`
--

DROP TABLE IF EXISTS `refinery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT '1',
  `scoping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `form_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_settings`
--

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;
INSERT INTO `refinery_settings` VALUES (1,'comments_allowed','--- \'true\'\n',1,'blog',0,'text_area','2012-08-11 23:48:28','2014-02-23 07:31:25'),(2,'comment_moderation','--- \"true\"\n',1,'blog',0,'text_area','2012-08-11 23:48:28','2012-08-21 03:03:17'),(3,'teasers_enabled','--- \"true\"\n',1,'blog',0,'text_area','2012-08-11 23:48:28','2012-08-11 23:51:12'),(4,'comment_notification_subject','--- New inquiry from your website\n...\n',1,'blog',0,'text_area','2013-01-17 15:45:59','2013-01-17 15:45:59'),(5,'comment_notification_recipients','--- sg552sg552@gmail.com\n...\n',1,'blog',0,'text_area','2013-01-17 15:45:59','2013-01-17 15:45:59');
/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_user_plugins`
--

DROP TABLE IF EXISTS `refinery_user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_refinery_user_plugins_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_refinery_user_plugins_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_user_plugins`
--

LOCK TABLES `refinery_user_plugins` WRITE;
/*!40000 ALTER TABLE `refinery_user_plugins` DISABLE KEYS */;
INSERT INTO `refinery_user_plugins` VALUES (24,1,'refinerycms_blog',0),(25,1,'refinery_dashboard',1),(26,1,'refinery_files',2),(27,1,'refinery_images',3),(28,1,'refinery_pages',4),(29,1,'refinery_settings',5),(30,1,'refinery_users',6);
/*!40000 ALTER TABLE `refinery_user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_users`
--

DROP TABLE IF EXISTS `refinery_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_users_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_users`
--

LOCK TABLES `refinery_users` WRITE;
/*!40000 ALTER TABLE `refinery_users` DISABLE KEYS */;
INSERT INTO `refinery_users` VALUES (1,'admin','sg552sg552@gmail.com','$2a$10$uhRsbOKsMPY7xPj/AyIf/.8bLzOTHe2lL659ZJHz.CoTdjkseLFse','2014-07-25 09:39:52','2014-07-25 09:38:55','218.30.180.179','218.30.180.179',217,'2014-07-23 17:15:35',NULL,NULL,'2012-08-04 06:51:38','2014-07-25 09:39:52');
/*!40000 ALTER TABLE `refinery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120804041708'),('20120804041709'),('20120804041710'),('20120804041711'),('20120804041712'),('20120811234137'),('20120811234138'),('20120811234139'),('20120811234140'),('20120811234141'),('20120811234142'),('20120811234143'),('20120811234144'),('20120811234145'),('20120811234146'),('20120811234147');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (323,1,'Refinery::Page::Translation','','','','2014-07-24 06:47:51','2014-07-24 06:47:51'),(324,2,'Refinery::Page::Translation','','','','2014-07-24 06:48:25','2014-07-24 06:48:25'),(325,12,'Refinery::Page::Translation','','','','2014-07-24 06:48:58','2014-07-24 06:48:58'),(327,306,'Refinery::Blog::Post','','','','2014-07-25 09:39:10','2014-07-25 09:39:10');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=750 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-25 17:40:42
