/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-10-18 15:50:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `pro_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_property_name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`pro_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_info
-- ----------------------------
