/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50633
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 50633
File Encoding         : 65001

Date: 2016-10-22 16:18:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES ('1', '476192918@qq.com', '123456', '陈镇秋', '1234567890', '1234567890', '青岛大学', '2016-10-22 15:19:15', '0');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1101', '电脑');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL,
  `manager_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_type` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_type_name` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` double DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '联想y400', '品牌#型号#颜色', '联想#Y400#黑色', '100', '1101', '1');

-- ----------------------------
-- Table structure for product_manager
-- ----------------------------
DROP TABLE IF EXISTS `product_manager`;
CREATE TABLE `product_manager` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_manager
-- ----------------------------
INSERT INTO `product_manager` VALUES ('1', '0', '品牌', '联想');
INSERT INTO `product_manager` VALUES ('2', '1', '型号', 'y400');
INSERT INTO `product_manager` VALUES ('3', '1', '型号', 'y500');
INSERT INTO `product_manager` VALUES ('4', '2', '颜色', '黑色');
INSERT INTO `product_manager` VALUES ('5', '3', '颜色', '白色');

-- ----------------------------
-- Table structure for sale_info
-- ----------------------------
DROP TABLE IF EXISTS `sale_info`;
CREATE TABLE `sale_info` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `sale_date` datetime DEFAULT NULL,
  `sale_desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sale_info
-- ----------------------------
INSERT INTO `sale_info` VALUES ('1', '1', '1', '1', '2016-10-22 15:22:53', '好评');

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('1', '476192918@qq.com', '123456', '郑俊坛', '1234567890', '1234567890', '青岛大学', '1', '2016-10-22 15:22:34', '0');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `shop_date` datetime DEFAULT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '联想官方销售', '1', '2016-10-22 16:07:43');
