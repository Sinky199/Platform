/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-10-18 15:52:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for seller_info
-- ----------------------------
DROP TABLE IF EXISTS `seller_info`;
CREATE TABLE `seller_info` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `seller_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录账号',
  `seller_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `seller_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '卖家姓名',
  `seller_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '卖家身份证号码',
  `seller_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '卖家联系电话',
  `seller_address` text COLLATE utf8_unicode_ci COMMENT '卖家地址',
  `seller_number` int(11) DEFAULT NULL COMMENT '卖家销售产品种类数量',
  `seller_date` datetime DEFAULT NULL COMMENT '注册日期',
  `seller_status` int(255) DEFAULT NULL COMMENT '卖家状态（1为开业，0为歇业）',
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of seller_info
-- ----------------------------
