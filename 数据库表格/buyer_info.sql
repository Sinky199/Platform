/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-10-18 15:50:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for buyer_info
-- ----------------------------
DROP TABLE IF EXISTS `buyer_info`;
CREATE TABLE `buyer_info` (
  `buyer_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录账号',
  `buyer_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `buyer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `buyer_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号码',
  `buyer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `buyer_address` text COLLATE utf8_unicode_ci COMMENT '联系地址',
  `buyer_date` datetime DEFAULT NULL COMMENT '注册日期',
  `buyer_status` int(255) DEFAULT NULL COMMENT '账号状态（1在线，0不在线）',
  PRIMARY KEY (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of buyer_info
-- ----------------------------
