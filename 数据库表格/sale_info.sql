/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-10-18 15:52:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sale_info
-- ----------------------------
DROP TABLE IF EXISTS `sale_info`;
CREATE TABLE `sale_info` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `pro_type_id` int(11) DEFAULT NULL,
  `sale_date` datetime DEFAULT NULL,
  `sale_desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sale_info
-- ----------------------------
