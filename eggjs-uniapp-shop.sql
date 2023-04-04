/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : eggjs-uniapp-shop

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2023-04-04 19:46:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `thumbnail` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `mechant_id` int(11) DEFAULT NULL,
  `status` int(3) DEFAULT '1',
  `sale_price` decimal(2,0) DEFAULT NULL,
  `market_price` decimal(2,0) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('1', 'OPPO RENO4全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, null, null);
INSERT INTO `good` VALUES ('2', 'VIV0 X50全面屏手机', null, '这里是描述', '12', '2', '1', '1', null, null, null, '2020-12-10 10:47:12', '2020-12-10 10:47:12');
INSERT INTO `good` VALUES ('3', 'VIV0 X50全面屏手机', null, '这里是描述', '13', '2', '1', '1', null, null, null, '2020-12-10 10:47:58', '2020-12-10 10:47:58');
INSERT INTO `good` VALUES ('4', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 10:48:26', '2020-12-10 10:48:26');
INSERT INTO `good` VALUES ('5', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 10:48:30', '2020-12-10 10:48:30');
INSERT INTO `good` VALUES ('6', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 10:52:58', '2020-12-10 10:52:58');
INSERT INTO `good` VALUES ('7', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 11:16:58', '2020-12-10 11:16:58');
INSERT INTO `good` VALUES ('8', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 11:17:41', '2020-12-10 11:17:41');
INSERT INTO `good` VALUES ('9', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 11:24:09', '2020-12-10 11:24:09');
INSERT INTO `good` VALUES ('10', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 11:25:32', '2020-12-10 11:25:32');
INSERT INTO `good` VALUES ('11', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 11:26:16', '2020-12-10 11:26:16');
INSERT INTO `good` VALUES ('12', 'VIV0 X50全面屏手机', null, '这里是描述', null, '2', '1', '1', null, null, null, '2020-12-10 11:26:49', '2020-12-10 11:26:49');
INSERT INTO `good` VALUES ('13', 'abc', '', '', null, '2', '1', '1', null, null, null, '2020-12-11 17:45:27', '2020-12-11 17:45:27');
INSERT INTO `good` VALUES ('14', 'asd', '', '', null, '2', '1', '1', null, null, null, '2020-12-11 17:47:36', '2020-12-11 17:47:36');
INSERT INTO `good` VALUES ('15', 'asd', '', '', '31', '2', '1', '1', null, null, null, '2020-12-11 17:49:18', '2020-12-11 17:49:18');
INSERT INTO `good` VALUES ('16', '测试', '测试', '商品描述', '32', '2', '1', '1', '2', '11', '0', '2023-04-04 19:46:08', '2023-04-04 19:46:08');

-- ----------------------------
-- Table structure for good_category
-- ----------------------------
DROP TABLE IF EXISTS `good_category`;
CREATE TABLE `good_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `status` int(3) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of good_category
-- ----------------------------
INSERT INTO `good_category` VALUES ('1', '手机数码', null, null, null, null, '1', '2020-12-09 16:55:46', '2020-12-09 16:55:46');
INSERT INTO `good_category` VALUES ('2', '全面屏手机', null, null, '1', null, '1', '2020-12-09 16:56:05', '2020-12-09 16:56:05');
INSERT INTO `good_category` VALUES ('3', '服装', '', null, null, null, '1', '2020-12-10 18:00:23', '2020-12-10 18:00:23');

-- ----------------------------
-- Table structure for good_image
-- ----------------------------
DROP TABLE IF EXISTS `good_image`;
CREATE TABLE `good_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `mechant_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of good_image
-- ----------------------------
INSERT INTO `good_image` VALUES ('1', '2', '1', '1', null, null);
INSERT INTO `good_image` VALUES ('2', '2', '10', '1', '2020-12-10 11:25:32', '2020-12-10 11:25:32');
INSERT INTO `good_image` VALUES ('3', '3', '10', '1', '2020-12-10 11:25:32', '2020-12-10 11:25:32');
INSERT INTO `good_image` VALUES ('4', '2', '11', '1', '2020-12-10 11:26:16', '2020-12-10 11:26:16');
INSERT INTO `good_image` VALUES ('5', '3', '11', '1', '2020-12-10 11:26:16', '2020-12-10 11:26:16');
INSERT INTO `good_image` VALUES ('6', '2', '12', '1', '2020-12-10 11:26:49', '2020-12-10 11:26:49');
INSERT INTO `good_image` VALUES ('7', '3', '12', '1', '2020-12-10 11:26:49', '2020-12-10 11:26:49');
INSERT INTO `good_image` VALUES ('8', null, '13', '1', '2020-12-11 17:45:27', '2020-12-11 17:45:27');
INSERT INTO `good_image` VALUES ('9', null, '14', '1', '2020-12-11 17:47:36', '2020-12-11 17:47:36');
INSERT INTO `good_image` VALUES ('10', '31', '15', '1', '2020-12-11 17:49:18', '2020-12-11 17:49:18');
INSERT INTO `good_image` VALUES ('11', '32', '16', '1', '2023-04-04 19:46:08', '2023-04-04 19:46:08');

-- ----------------------------
-- Table structure for good_order
-- ----------------------------
DROP TABLE IF EXISTS `good_order`;
CREATE TABLE `good_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` enum('ordered','inpayment','paid','receiving','completed','canceled') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ordered',
  `address_id` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goods_total_qty` int(11) DEFAULT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of good_order
-- ----------------------------

-- ----------------------------
-- Table structure for good_order_line
-- ----------------------------
DROP TABLE IF EXISTS `good_order_line`;
CREATE TABLE `good_order_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) DEFAULT NULL,
  `good_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `market_price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `good_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `good_spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `good_category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `good_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of good_order_line
-- ----------------------------

-- ----------------------------
-- Table structure for good_spec
-- ----------------------------
DROP TABLE IF EXISTS `good_spec`;
CREATE TABLE `good_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `market_price` decimal(10,2) DEFAULT NULL,
  `stock` int(9) DEFAULT NULL,
  `good_id` int(11) DEFAULT NULL,
  `mechant_id` int(11) DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of good_spec
-- ----------------------------
INSERT INTO `good_spec` VALUES ('1', '4g+128g', null, null, '2100.00', '2400.00', '999', '1', '1', null, null, null);
INSERT INTO `good_spec` VALUES ('2', '8+256g', null, null, '1300.00', '1500.00', '999', '12', '1', null, '2020-12-10 11:26:49', '2020-12-10 11:26:49');
INSERT INTO `good_spec` VALUES ('3', 'ddd', null, null, '55.00', '77.00', '999', '13', '1', null, '2020-12-11 17:45:27', '2020-12-11 17:45:27');
INSERT INTO `good_spec` VALUES ('4', 'asd', null, null, '44.00', '66.00', '999', '14', '1', null, '2020-12-11 17:47:36', '2020-12-11 17:47:36');
INSERT INTO `good_spec` VALUES ('5', 'asdad', null, null, '44.00', '88.00', '999', '15', '1', null, '2020-12-11 17:49:18', '2020-12-11 17:49:18');
INSERT INTO `good_spec` VALUES ('6', '红色', null, null, '2.00', '11.00', '999', '16', '1', '0', '2023-04-04 19:46:08', '2023-04-04 19:46:08');

-- ----------------------------
-- Table structure for log_message
-- ----------------------------
DROP TABLE IF EXISTS `log_message`;
CREATE TABLE `log_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of log_message
-- ----------------------------

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `app_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mch_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mch_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int(9) DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `logo_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('1', '良品铺子', '湖北武汉', null, null, null, null, '2', '1', null, '2020-12-09 16:14:55', '2020-12-11 15:05:05');

-- ----------------------------
-- Table structure for system_file
-- ----------------------------
DROP TABLE IF EXISTS `system_file`;
CREATE TABLE `system_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `format` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `size` double DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_file
-- ----------------------------
INSERT INTO `system_file` VALUES ('12', 'image/jpeg', '/public/uploads/2020/12/10/1607585710478612.2704601225427.jpg', 'app\\public\\uploads\\2020\\12\\10\\1607585710478612.2704601225427.jpg', 'image', '171293', '1607585710478612.2704601225427.jpg', null, '2020-12-10 15:35:10', '2020-12-10 15:35:10');
INSERT INTO `system_file` VALUES ('13', 'image/png', '/public/uploads/2020/12/10/1607586268791316.45226868460276.png', 'app\\public\\uploads\\2020\\12\\10\\1607586268791316.45226868460276.png', 'image', '22944', '1607586268791316.45226868460276.png', null, '2020-12-10 15:44:28', '2020-12-10 15:44:28');
INSERT INTO `system_file` VALUES ('14', 'image/png', '/public/uploads/2020/12/10/1607592942761197.40225089389307.png', 'app\\public\\uploads\\2020\\12\\10\\1607592942761197.40225089389307.png', 'image', '6617', '1607592942761197.40225089389307.png', null, '2020-12-10 17:35:42', '2020-12-10 17:35:42');
INSERT INTO `system_file` VALUES ('15', 'image/png', '/public/uploads/2020/12/10/160759303238997.7343253091041.png', 'app\\public\\uploads\\2020\\12\\10\\160759303238997.7343253091041.png', 'image', '6617', '160759303238997.7343253091041.png', null, '2020-12-10 17:37:12', '2020-12-10 17:37:12');
INSERT INTO `system_file` VALUES ('16', 'image/png', '/public/uploads/2020/12/10/1607593121493752.5884963335152.png', 'app\\public\\uploads\\2020\\12\\10\\1607593121493752.5884963335152.png', 'image', '6617', '1607593121493752.5884963335152.png', null, '2020-12-10 17:38:41', '2020-12-10 17:38:41');
INSERT INTO `system_file` VALUES ('17', 'image/png', '/public/uploads/2020/12/11/160767562225622.812118527503202.png', 'app\\public\\uploads\\2020\\12\\11\\160767562225622.812118527503202.png', 'image', '6617', '160767562225622.812118527503202.png', null, '2020-12-11 16:33:42', '2020-12-11 16:33:42');
INSERT INTO `system_file` VALUES ('18', 'image/png', '/public/uploads/2020/12/11/1607675781163465.5708824600693.png', 'app\\public\\uploads\\2020\\12\\11\\1607675781163465.5708824600693.png', 'image', '6617', '1607675781163465.5708824600693.png', null, '2020-12-11 16:36:21', '2020-12-11 16:36:21');
INSERT INTO `system_file` VALUES ('19', 'image/png', '/public/uploads/2020/12/11/1607675868020564.3454779143904.png', 'app\\public\\uploads\\2020\\12\\11\\1607675868020564.3454779143904.png', 'image', '6617', '1607675868020564.3454779143904.png', null, '2020-12-11 16:37:48', '2020-12-11 16:37:48');
INSERT INTO `system_file` VALUES ('20', 'image/png', '/public/uploads/2020/12/11/1607675947424568.7781510189842.png', 'app\\public\\uploads\\2020\\12\\11\\1607675947424568.7781510189842.png', 'image', '6617', '1607675947424568.7781510189842.png', null, '2020-12-11 16:39:07', '2020-12-11 16:39:07');
INSERT INTO `system_file` VALUES ('21', 'image/png', '/public/uploads/2020/12/11/1607676018181360.8586906542668.png', 'app\\public\\uploads\\2020\\12\\11\\1607676018181360.8586906542668.png', 'image', '6617', '1607676018181360.8586906542668.png', null, '2020-12-11 16:40:18', '2020-12-11 16:40:18');
INSERT INTO `system_file` VALUES ('22', 'image/png', '/public/uploads/2020/12/11/1607676134375267.2741984452358.png', 'app\\public\\uploads\\2020\\12\\11\\1607676134375267.2741984452358.png', 'image', '6617', '1607676134375267.2741984452358.png', null, '2020-12-11 16:42:14', '2020-12-11 16:42:14');
INSERT INTO `system_file` VALUES ('23', 'image/png', '/public/uploads/2020/12/11/1607676241015310.35892925037876.png', 'app\\public\\uploads\\2020\\12\\11\\1607676241015310.35892925037876.png', 'image', '6617', '1607676241015310.35892925037876.png', null, '2020-12-11 16:44:01', '2020-12-11 16:44:01');
INSERT INTO `system_file` VALUES ('24', 'image/png', '/public/uploads/2020/12/11/1607678467317762.4493448536966.png', 'app\\public\\uploads\\2020\\12\\11\\1607678467317762.4493448536966.png', 'image', '6617', '1607678467317762.4493448536966.png', null, '2020-12-11 17:21:07', '2020-12-11 17:21:07');
INSERT INTO `system_file` VALUES ('25', 'image/png', '/public/uploads/2020/12/11/1607678542414282.97673823483694.png', 'app\\public\\uploads\\2020\\12\\11\\1607678542414282.97673823483694.png', 'image', '6617', '1607678542414282.97673823483694.png', null, '2020-12-11 17:22:22', '2020-12-11 17:22:22');
INSERT INTO `system_file` VALUES ('26', 'image/png', '/public/uploads/2020/12/11/1607678587217345.3324539245119.png', 'app\\public\\uploads\\2020\\12\\11\\1607678587217345.3324539245119.png', 'image', '6617', '1607678587217345.3324539245119.png', null, '2020-12-11 17:23:07', '2020-12-11 17:23:07');
INSERT INTO `system_file` VALUES ('27', 'image/png', '/public/uploads/2020/12/11/160767952955799.65299454650788.png', 'app\\public\\uploads\\2020\\12\\11\\160767952955799.65299454650788.png', 'image', '6617', '160767952955799.65299454650788.png', null, '2020-12-11 17:38:49', '2020-12-11 17:38:49');
INSERT INTO `system_file` VALUES ('28', 'image/png', '/public/uploads/2020/12/11/1607679919889994.8228836655591.png', 'app\\public\\uploads\\2020\\12\\11\\1607679919889994.8228836655591.png', 'image', '6617', '1607679919889994.8228836655591.png', null, '2020-12-11 17:45:19', '2020-12-11 17:45:19');
INSERT INTO `system_file` VALUES ('29', 'image/png', '/public/uploads/2020/12/11/160768003363696.43257995116849.png', 'app\\public\\uploads\\2020\\12\\11\\160768003363696.43257995116849.png', 'image', '6617', '160768003363696.43257995116849.png', null, '2020-12-11 17:47:13', '2020-12-11 17:47:13');
INSERT INTO `system_file` VALUES ('30', 'image/png', '/public/uploads/2020/12/11/1607680082437128.5316673595738.png', 'app\\public\\uploads\\2020\\12\\11\\1607680082437128.5316673595738.png', 'image', '6617', '1607680082437128.5316673595738.png', null, '2020-12-11 17:48:02', '2020-12-11 17:48:02');
INSERT INTO `system_file` VALUES ('31', 'image/png', '/public/uploads/2020/12/11/1607680148715820.0546766972601.png', 'app\\public\\uploads\\2020\\12\\11\\1607680148715820.0546766972601.png', 'image', '6617', '1607680148715820.0546766972601.png', null, '2020-12-11 17:49:08', '2020-12-11 17:49:08');
INSERT INTO `system_file` VALUES ('32', 'image/png', '/public/uploads/2023/04/04/1680608747136719.7144337902668.png', 'app\\public\\uploads\\2023\\04\\04\\1680608747136719.7144337902668.png', 'image', '2049', '1680608747136719.7144337902668.png', null, '2023-04-04 19:45:47', '2023-04-04 19:45:47');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `sort` int(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '系统管理', '/system', null, '1', null, null, null, '2020-12-10 14:46:18');
INSERT INTO `system_menu` VALUES ('2', '菜单管理', '/system/menu', null, '1', '1', null, '2020-08-24 10:14:58', '2020-08-24 10:14:58');
INSERT INTO `system_menu` VALUES ('4', '用户管理', '/system/user', '', '1', '1', null, '2020-12-10 14:45:01', '2020-12-10 14:45:01');
INSERT INTO `system_menu` VALUES ('5', '角色管理', '/system/role', null, '1', '1', null, '2020-12-10 14:45:16', '2020-12-10 14:46:46');
INSERT INTO `system_menu` VALUES ('6', '文件管理', '/system/file', null, '1', '1', null, '2020-12-10 14:45:29', '2020-12-10 14:45:29');
INSERT INTO `system_menu` VALUES ('7', '商家管理', '/merchant', '', '1', null, null, '2020-12-10 15:49:44', '2020-12-10 15:49:44');
INSERT INTO `system_menu` VALUES ('8', '商家列表', '/merchant/merchant', null, '1', '7', null, '2020-12-10 15:50:00', '2020-12-10 15:50:00');
INSERT INTO `system_menu` VALUES ('9', '商品管理', '/good', '', '1', null, null, '2020-12-10 17:02:08', '2020-12-10 17:02:08');
INSERT INTO `system_menu` VALUES ('10', '商品列表', '/good/list', null, '1', '9', null, '2020-12-10 17:02:22', '2020-12-10 17:02:22');
INSERT INTO `system_menu` VALUES ('11', '商品分类', '/good/category', null, '1', '9', null, '2020-12-10 17:21:35', '2020-12-10 17:21:35');
INSERT INTO `system_menu` VALUES ('12', '日志管理', '/system/log', null, '1', '1', null, '2020-12-11 09:47:22', '2020-12-11 09:47:22');

-- ----------------------------
-- Table structure for system_permission
-- ----------------------------
DROP TABLE IF EXISTS `system_permission`;
CREATE TABLE `system_permission` (
  `id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `actions` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_permission
-- ----------------------------
INSERT INTO `system_permission` VALUES ('user', '用户管理', null, 'query,add,delete,detail', null, null);

-- ----------------------------
-- Table structure for system_req_log
-- ----------------------------
DROP TABLE IF EXISTS `system_req_log`;
CREATE TABLE `system_req_log` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `consume_time` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_req_log
-- ----------------------------
INSERT INTO `system_req_log` VALUES ('718', '::1', null, '{\"username\":\"admin\",\"password\":\"123456\"}', '/api/user/login', 'POST', '500', '68', '2023-04-04 19:37:26', '2023-04-04 19:37:26');
INSERT INTO `system_req_log` VALUES ('719', '::1', '1', '{\"username\":\"admin\",\"password\":\"123456\"}', '/api/user/login', 'POST', '200', '30', '2023-04-04 19:38:52', '2023-04-04 19:38:52');
INSERT INTO `system_req_log` VALUES ('720', '::1', '2', '{\"username\":\"tcy\",\"password\":\"123456\"}', '/api/user/login', 'POST', '200', '23', '2023-04-04 19:42:31', '2023-04-04 19:42:31');
INSERT INTO `system_req_log` VALUES ('721', '::1', null, '{}', '/api/file/upload', 'POST', '200', '138', '2023-04-04 19:45:47', '2023-04-04 19:45:47');
INSERT INTO `system_req_log` VALUES ('722', '::1', null, '{\"name\":\"测试\",\"categoryId\":2,\"status\":1,\"description\":\"测试\",\"content\":\"商品描述\",\"thumbnail\":32,\"mechantId\":1,\"specs\":[{\"name\":\"红色\",\"salePrice\":2,\"marketPrice\":11,\"stock\":999}],\"images\":[{\"status\":\"success\",\"name\":\"本地生活 icon@2x.png\",\"size\":2049,\"percentage\":100,\"uid\":1680608747100,\"raw\":{\"uid\":1680608747100},\"url\":\"blob:http://localhost:8080/a73c0418-ac5a-484c-aefa-6b1c9bf17c29\",\"response\":{\"status\":200,\"result\":{\"id\":32,\"format\":\"image/png\",\"url\":\"/public/uploads/2023/04/04/1680608747136719.7144337902668.png\",\"path\":\"app\\\\public\\\\uploads\\\\2023\\\\04\\\\04\\\\1680608747136719.7144337902668.png\",\"size\":2049,\"name\":\"1680608747136719.7144337902668.png\",\"type\":\"image\",\"updatedAt\":\"2023-04-04T11:45:47.148Z\",\"createdAt\":\"2023-04-04T11:45:47.148Z\"}},\"id\":32,\"isDefault\":true}],\"salePrice\":2,\"marketPrice\":11}', '/api/good/save', 'POST', '200', '158', '2023-04-04 19:46:08', '2023-04-04 19:46:08');

-- ----------------------------
-- Table structure for system_role
-- ----------------------------
DROP TABLE IF EXISTS `system_role`;
CREATE TABLE `system_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_role
-- ----------------------------
INSERT INTO `system_role` VALUES ('1', '管理员', null, '1', '2020-08-23 13:55:19', '2020-11-23 11:14:54');
INSERT INTO `system_role` VALUES ('2', '商家', null, '1', '2020-08-24 10:12:46', '2020-12-10 16:50:59');
INSERT INTO `system_role` VALUES ('5', '用户', null, '1', '2020-11-23 11:14:08', '2020-12-10 16:51:05');

-- ----------------------------
-- Table structure for system_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_role_menu`;
CREATE TABLE `system_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_role_menu
-- ----------------------------
INSERT INTO `system_role_menu` VALUES ('20', '2', '9', '2020-12-10 17:21:42', '2020-12-10 17:21:42');
INSERT INTO `system_role_menu` VALUES ('21', '2', '10', '2020-12-10 17:21:42', '2020-12-10 17:21:42');
INSERT INTO `system_role_menu` VALUES ('22', '2', '11', '2020-12-10 17:21:42', '2020-12-10 17:21:42');
INSERT INTO `system_role_menu` VALUES ('23', '1', '1', '2020-12-11 09:47:31', '2020-12-11 09:47:31');
INSERT INTO `system_role_menu` VALUES ('24', '1', '2', '2020-12-11 09:47:31', '2020-12-11 09:47:31');
INSERT INTO `system_role_menu` VALUES ('25', '1', '4', '2020-12-11 09:47:31', '2020-12-11 09:47:31');
INSERT INTO `system_role_menu` VALUES ('26', '1', '5', '2020-12-11 09:47:31', '2020-12-11 09:47:31');
INSERT INTO `system_role_menu` VALUES ('27', '1', '6', '2020-12-11 09:47:31', '2020-12-11 09:47:31');
INSERT INTO `system_role_menu` VALUES ('28', '1', '12', '2020-12-11 09:47:31', '2020-12-11 09:47:31');
INSERT INTO `system_role_menu` VALUES ('29', '1', '7', '2020-12-11 09:47:31', '2020-12-11 09:47:31');
INSERT INTO `system_role_menu` VALUES ('30', '1', '8', '2020-12-11 09:47:31', '2020-12-11 09:47:31');

-- ----------------------------
-- Table structure for system_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `system_role_permission`;
CREATE TABLE `system_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `actions` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_role_permission
-- ----------------------------
INSERT INTO `system_role_permission` VALUES ('1', '1', 'user', 'query,add', '2020-08-27 10:27:31', '2020-08-27 10:27:31');

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` int(1) DEFAULT '1',
  `avatar_id` int(11) DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '用户状态： 0:禁用, 1:启用,',
  `last_login_time` int(11) DEFAULT NULL,
  `last_login_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `unionid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('1', 'admin', null, 'e10adc3949ba59abbe56e057f20f883e', '管理员', '1', null, null, '1', '1', null, null, null, null, null, null, '2020-08-23 08:10:20', '2020-12-10 14:46:31', '1');
INSERT INTO `system_user` VALUES ('2', 'tcy', null, 'e10adc3949ba59abbe56e057f20f883e', '良品铺子', '1', null, null, '2', '1', null, null, null, null, null, null, '2020-08-23 08:10:20', '2020-12-10 16:51:13', '2');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `township` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `link_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_address
-- ----------------------------
