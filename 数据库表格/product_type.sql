/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-10-18 15:51:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `pro_type_id` int(11) NOT NULL,
  `pro_info_id` int(11) DEFAULT NULL,
  `pro_property_value` text COLLATE utf8_unicode_ci,
  `pro_price` double(10,0) DEFAULT NULL,
  `pro_desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`pro_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_type
-- ----------------------------
