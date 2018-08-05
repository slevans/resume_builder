-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 05, 2018 at 06:05 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `resume_builder`
--

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `doc_description` varchar(255) DEFAULT NULL,
  `doc_template` varchar(255) NOT NULL COMMENT 'file name only, path in config/config.php',
  `doc_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `doc_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `doc_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE IF NOT EXISTS `entry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section` int(11) unsigned NOT NULL,
  `entry_name` varchar(255) NOT NULL,
  `entry_description` varchar(255) DEFAULT NULL,
  `entry_content` text COMMENT 'actual content',
  `entry_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `document` int(11) unsigned NOT NULL,
  `sec_name` varchar(255) NOT NULL,
  `sec_description` varchar(255) DEFAULT NULL,
  `sec_template` varchar(255) NOT NULL COMMENT 'file name only, path in config/config.php',
  `sec_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sec_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sec_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_description` varchar(255) DEFAULT NULL,
  `user_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_lastlogin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
