/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-10-18 15:50:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for manager_info
-- ----------------------------
DROP TABLE IF EXISTS `manager_info`;
CREATE TABLE `manager_info` (
  `manager_id` int(11) NOT NULL,
  `manager_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of manager_info
-- ----------------------------
