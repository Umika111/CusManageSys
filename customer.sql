/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : customer

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 24/06/2023 02:20:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buy
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy`  (
  `buy_id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_id` int(0) DEFAULT NULL COMMENT '外键',
  `customer_id` int(0) DEFAULT NULL COMMENT '外键',
  `buy_num` int(0) NOT NULL,
  `buy_time` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`buy_id`) USING BTREE,
  INDEX `customer_id`(`customer_id`) USING BTREE,
  INDEX `goods_id`(`goods_id`) USING BTREE,
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buy
-- ----------------------------
INSERT INTO `buy` VALUES (1, 7, 10, 4, '2023-01-21 00:16:20');
INSERT INTO `buy` VALUES (2, 8, 2, 2, '2023-02-01 00:18:21');
INSERT INTO `buy` VALUES (3, 10, 18, 8, '2023-03-18 00:12:33');
INSERT INTO `buy` VALUES (4, 34, 15, 6, '2023-03-23 00:19:31');
INSERT INTO `buy` VALUES (5, 19, 15, 3, '2023-04-11 00:19:15');
INSERT INTO `buy` VALUES (6, 24, 12, 3, '2023-04-24 00:19:40');
INSERT INTO `buy` VALUES (7, 26, 19, 1, '2023-04-28 00:20:23');
INSERT INTO `buy` VALUES (8, 29, 20, 2, '2023-05-02 00:20:48');
INSERT INTO `buy` VALUES (9, 16, 18, 3, '2023-05-05 00:21:23');
INSERT INTO `buy` VALUES (10, 18, 1, 2, '2023-05-06 00:21:40');
INSERT INTO `buy` VALUES (11, 5, 6, 2, '2023-05-12 00:22:01');
INSERT INTO `buy` VALUES (12, 4, 3, 2, '2023-05-12 00:22:34');
INSERT INTO `buy` VALUES (13, 2, 20, 1, '2023-05-12 00:23:54');
INSERT INTO `buy` VALUES (14, 2, 14, 3, '2023-05-14 00:13:23');
INSERT INTO `buy` VALUES (15, 4, 17, 1, '2023-05-15 00:21:21');
INSERT INTO `buy` VALUES (16, 29, 1, 3, '2023-05-22 00:10:08');
INSERT INTO `buy` VALUES (17, 33, 7, 2, '2023-05-23 00:12:33');
INSERT INTO `buy` VALUES (18, 27, 8, 1, '2023-05-24 00:15:23');
INSERT INTO `buy` VALUES (19, 16, 19, 4, '2023-05-26 00:16:18');
INSERT INTO `buy` VALUES (20, 12, 17, 1, '2023-05-27 00:13:38');
INSERT INTO `buy` VALUES (21, 15, 5, 2, '2023-05-28 12:21:12');
INSERT INTO `buy` VALUES (22, 6, 12, 3, '2023-05-29 14:26:23');
INSERT INTO `buy` VALUES (23, 13, 14, 2, '2023-05-30 13:26:44');
INSERT INTO `buy` VALUES (24, 6, 8, 2, '2023-05-31 11:26:59');
INSERT INTO `buy` VALUES (25, 22, 3, 4, '2023-05-31 13:27:22');
INSERT INTO `buy` VALUES (26, 3, 13, 2, '2023-06-01 14:28:27');
INSERT INTO `buy` VALUES (27, 5, 13, 2, '2023-06-01 15:28:55');
INSERT INTO `buy` VALUES (28, 6, 1, 1, '2023-06-02 12:29:16');
INSERT INTO `buy` VALUES (29, 9, 8, 1, '2023-06-03 17:29:30');
INSERT INTO `buy` VALUES (30, 16, 17, 3, '2023-06-04 12:29:53');
INSERT INTO `buy` VALUES (31, 29, 10, 2, '2023-06-06 11:30:08');
INSERT INTO `buy` VALUES (32, 28, 19, 3, '2023-06-07 07:31:50');
INSERT INTO `buy` VALUES (33, 33, 7, 2, '2023-06-08 00:32:06');
INSERT INTO `buy` VALUES (34, 3, 15, 4, '2023-06-08 15:32:27');
INSERT INTO `buy` VALUES (35, 9, 14, 5, '2023-06-09 11:32:53');
INSERT INTO `buy` VALUES (36, 7, 5, 2, '2023-06-09 21:33:13');
INSERT INTO `buy` VALUES (37, 10, 19, 1, '2023-06-10 12:33:33');
INSERT INTO `buy` VALUES (38, 3, 17, 2, '2023-06-11 12:33:55');
INSERT INTO `buy` VALUES (39, 35, 7, 3, '2023-06-12 11:34:18');
INSERT INTO `buy` VALUES (40, 31, 2, 1, '2023-06-13 12:34:39');
INSERT INTO `buy` VALUES (41, 26, 7, 1, '2023-06-13 23:34:53');
INSERT INTO `buy` VALUES (42, 4, 14, 4, '2023-06-14 14:35:11');
INSERT INTO `buy` VALUES (43, 29, 11, 2, '2023-06-15 12:35:30');
INSERT INTO `buy` VALUES (44, 5, 3, 2, '2023-06-15 14:35:49');
INSERT INTO `buy` VALUES (45, 12, 4, 1, '2023-06-15 21:36:05');
INSERT INTO `buy` VALUES (46, 2, 9, 3, '2023-06-15 23:36:28');
INSERT INTO `buy` VALUES (47, 8, 6, 2, '2023-06-17 11:36:45');
INSERT INTO `buy` VALUES (48, 23, 3, 3, '2023-06-17 23:37:02');
INSERT INTO `buy` VALUES (49, 28, 6, 2, '2023-06-18 13:37:18');
INSERT INTO `buy` VALUES (50, 17, 19, 4, '2023-06-18 23:37:41');
INSERT INTO `buy` VALUES (51, 28, 13, 3, '2023-06-19 06:38:05');
INSERT INTO `buy` VALUES (52, 9, 2, 2, '2023-06-19 12:38:24');
INSERT INTO `buy` VALUES (53, 26, 5, 4, '2023-06-19 18:38:38');
INSERT INTO `buy` VALUES (54, 18, 12, 3, '2023-06-19 21:38:58');
INSERT INTO `buy` VALUES (55, 32, 19, 2, '2023-06-19 23:39:27');
INSERT INTO `buy` VALUES (56, 1, 1, 23, NULL);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` int(0) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Ctype_id` int(0) DEFAULT NULL COMMENT '外键',
  `customer_createtime` datetime(0) DEFAULT NULL,
  `customer_createuser` int(0) DEFAULT NULL COMMENT '外键',
  `customer_updatetime` datetime(0) DEFAULT NULL,
  `customer_updateuser` int(0) DEFAULT NULL COMMENT '外键',
  `customer_status` int(0) DEFAULT 1 COMMENT '默认为1',
  `customer_taxid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `linkman_id` int(0) DEFAULT NULL COMMENT '外键',
  PRIMARY KEY (`customer_id`) USING BTREE,
  INDEX `linkman_id`(`linkman_id`) USING BTREE,
  INDEX `customer_createuser`(`customer_createuser`) USING BTREE,
  INDEX `customer_updateuser`(`customer_updateuser`) USING BTREE,
  INDEX `Ctype_id`(`Ctype_id`) USING BTREE,
  CONSTRAINT `Ctype_id` FOREIGN KEY (`Ctype_id`) REFERENCES `customer_type` (`CType_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `customer_createuser` FOREIGN KEY (`customer_createuser`) REFERENCES `employ` (`em_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `customer_updateuser` FOREIGN KEY (`customer_updateuser`) REFERENCES `employ` (`em_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `linkman_id` FOREIGN KEY (`linkman_id`) REFERENCES `linkman` (`linkman_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '小米集团', '上海市', 2, '2021-02-13 00:00:00', 5, '2023-03-23 00:00:00', 3, 1, '123456789025789', 2);
INSERT INTO `customer` VALUES (2, '阿里巴巴集团控股有限公司', '浙江省杭州市', 2, '2017-02-11 00:00:00', 6, '2022-03-31 00:00:00', 9, 1, '321572896123521', 5);
INSERT INTO `customer` VALUES (3, '苏宁控股集团', '上海市', 1, '2019-03-02 00:00:00', 5, '2021-04-01 00:00:00', 2, 1, '492105960242523', 7);
INSERT INTO `customer` VALUES (4, '中国医药集团有限公司', '北京市', 3, '2017-03-25 00:00:00', 9, '2015-06-21 00:00:00', 2, 1, '347928590203419', 1);
INSERT INTO `customer` VALUES (5, '腾讯控股有限公司', '广东省深圳市', 2, '2020-03-11 00:00:00', 6, '2023-05-26 00:00:00', 5, 1, '248986503299215', 3);
INSERT INTO `customer` VALUES (6, '碧桂园控股有限公司', '四川省成都市', 3, '2017-04-13 00:00:00', 9, '2023-01-01 00:00:00', 6, 1, '864953482394562', 9);
INSERT INTO `customer` VALUES (7, '招商银行股份有限公司', '上海市', 2, '2019-08-13 00:00:00', 3, '2023-01-05 00:00:00', 3, 1, '876953259678902', 6);
INSERT INTO `customer` VALUES (8, '中国保利集团公司', '北京市', 4, '2020-03-13 00:00:00', 6, '2023-05-12 00:00:00', 5, 1, '564897894394078', 4);
INSERT INTO `customer` VALUES (9, '中国船舶集团有限公司', '浙江省杭州市', 4, '2017-06-23 00:00:00', 3, '2023-02-15 00:00:00', 9, 1, '348250180502157', 8);
INSERT INTO `customer` VALUES (10, '美的集团股份有限公司', '上海市', 3, '2022-03-01 00:00:00', 5, '2023-05-14 00:00:00', 2, 1, '628509896476856', 14);
INSERT INTO `customer` VALUES (11, '国家电网有限公司', '北京市', 1, '2021-01-03 00:00:00', 2, '2023-01-04 00:00:00', 3, 1, '586932689068092', 11);
INSERT INTO `customer` VALUES (12, '中国华能集团有限公司', '四川省成都市', 3, '2018-02-14 00:00:00', 6, '2022-04-11 00:00:00', 9, 1, '485946839089364', 13);
INSERT INTO `customer` VALUES (13, '海尔集团公司', '上海市', 2, '2017-06-24 00:00:00', 3, '2023-01-03 00:00:00', 3, 1, '288793792589250', 12);
INSERT INTO `customer` VALUES (14, '中国航天科技集团有限公司', '北京市', 2, '2019-12-21 00:00:00', 9, '2023-04-12 00:00:00', 5, 1, '693758981056753', 10);
INSERT INTO `customer` VALUES (15, '中国电子信息产业集团有限公司', '北京市', 2, '2016-05-27 00:00:00', 9, '2023-05-21 00:00:00', 2, 1, '783927458938691', 15);
INSERT INTO `customer` VALUES (16, '中国兵器装备集团有限公司', '北京市', 3, '2021-04-15 00:00:00', 6, '2023-04-21 00:00:00', 3, 1, '384985934680145', 18);
INSERT INTO `customer` VALUES (17, '泰康保险集团股份有限公司', '上海市', 4, '2022-03-01 00:00:00', 3, '2023-06-17 00:00:00', 9, 1, '990238537689943', 20);
INSERT INTO `customer` VALUES (18, '盛虹控股集团有限公司', '四川省成都市', 4, '2019-03-13 00:00:00', 6, '2023-04-25 00:00:00', 5, 1, '246390238596842', 17);
INSERT INTO `customer` VALUES (19, '海尔集团公司', '上海市', 2, '2015-04-23 00:00:00', 9, '2023-01-23 00:00:00', 2, 1, '154956879542515', 16);
INSERT INTO `customer` VALUES (20, '浙江荣盛控股集团有限公司', '浙江省杭州市', 3, '2018-09-27 00:00:00', 5, '2023-06-14 00:00:00', 2, 1, '432525169807685', 19);

-- ----------------------------
-- Table structure for customer_type
-- ----------------------------
DROP TABLE IF EXISTS `customer_type`;
CREATE TABLE `customer_type`  (
  `CType_id` int(0) NOT NULL AUTO_INCREMENT,
  `Ctype_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Ctype_order` int(0) NOT NULL,
  PRIMARY KEY (`CType_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_type
-- ----------------------------
INSERT INTO `customer_type` VALUES (1, 'VIP客户', 1);
INSERT INTO `customer_type` VALUES (2, 'A级客户', 2);
INSERT INTO `customer_type` VALUES (3, 'B级客户', 3);
INSERT INTO `customer_type` VALUES (4, 'C级客户', 4);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `dep_id` int(0) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dep_order` int(0) NOT NULL,
  `dep_pid` int(0) DEFAULT NULL,
  `dep_state` int(0) DEFAULT 1,
  PRIMARY KEY (`dep_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '销售部', 1, 1, 1);
INSERT INTO `department` VALUES (2, '研发部', 1, 2, 1);
INSERT INTO `department` VALUES (3, '人事部', 1, 3, 1);
INSERT INTO `department` VALUES (4, '财务部', 2, 3, 1);
INSERT INTO `department` VALUES (5, '市场部', 2, 1, 1);
INSERT INTO `department` VALUES (6, '采购部', 3, 1, 1);
INSERT INTO `department` VALUES (7, '质检部', 1, 4, 1);
INSERT INTO `department` VALUES (8, '秘书处', 3, 3, 1);
INSERT INTO `department` VALUES (9, '项目部', 2, 4, 1);
INSERT INTO `department` VALUES (10, '后勤部', 3, 4, 1);
INSERT INTO `department` VALUES (11, '客服部', 4, 4, 1);
INSERT INTO `department` VALUES (12, '宣传部', 5, 1, 1);

-- ----------------------------
-- Table structure for employ
-- ----------------------------
DROP TABLE IF EXISTS `employ`;
CREATE TABLE `employ`  (
  `em_id` int(0) NOT NULL AUTO_INCREMENT,
  `em_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `em_phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `em_sex` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT ' ',
  `em_post` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `em_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dep_id` int(0) DEFAULT NULL COMMENT '外键',
  `em_state` int(0) DEFAULT 1 COMMENT '默认为1',
  `em_createtime` datetime(0) NOT NULL,
  `em_createuser` int(0) NOT NULL,
  PRIMARY KEY (`em_id`) USING BTREE,
  INDEX `dep_id`(`dep_id`) USING BTREE,
  CONSTRAINT `dep_id` FOREIGN KEY (`dep_id`) REFERENCES `department` (`dep_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employ
-- ----------------------------
INSERT INTO `employ` VALUES (1, '余玉龙', '18098342321', '男', '职员', '上海', 1, 1, '2020-03-12 00:00:00', 8);
INSERT INTO `employ` VALUES (2, '相英彦', '13648902541', '男', '职员', '上海', 4, 1, '2018-02-02 00:00:00', 4);
INSERT INTO `employ` VALUES (3, '苍慧英', '13338251622', '女', '职员', '上海', 7, 1, '2019-07-23 00:00:00', 7);
INSERT INTO `employ` VALUES (4, '红灵雁', '18937525263', '女', '职员', '上海', 3, 1, '2016-03-02 00:00:00', 7);
INSERT INTO `employ` VALUES (5, '羿清茹', '13349328642', '女', '职员', '上海', 6, 1, '2022-09-06 00:00:00', 4);
INSERT INTO `employ` VALUES (6, '戈飞星', '18952425631', '男', '职员', '上海', 2, 1, '2023-01-05 00:00:00', 4);
INSERT INTO `employ` VALUES (7, '丁勇锐', '17831748235', '男', '职员', '上海', 3, 1, '2012-03-05 00:00:00', 15);
INSERT INTO `employ` VALUES (8, '怀光远', '18929536262', '男', '职员', '上海', 9, 1, '2017-05-08 00:00:00', 7);
INSERT INTO `employ` VALUES (9, '冯天韵', '13689083523', '男', '职员', '上海', 12, 1, '2019-03-02 00:00:00', 7);
INSERT INTO `employ` VALUES (10, '广昊穹', '18935587925', '男', '职员', '上海', 11, 1, '2019-02-04 00:00:00', 4);
INSERT INTO `employ` VALUES (11, '黄梦玉', '13547908292', '女', '职员', '上海', 8, 1, '2012-04-03 00:00:00', 15);
INSERT INTO `employ` VALUES (12, '曾昕靓', '18093285251', '女', '职员', '上海', 10, 1, '2017-02-01 00:00:00', 7);
INSERT INTO `employ` VALUES (13, '常如蓉', '13643892052', '女', '职员', '上海', 5, 1, '2018-06-21 00:00:00', 7);
INSERT INTO `employ` VALUES (14, '卢芷兰', '18965298525', '女', '职员', '上海', 6, 0, '2020-04-01 00:00:00', 4);
INSERT INTO `employ` VALUES (15, '耿沐葵', '13693485251', '女', '经理', '上海', 3, 1, '2020-08-14 00:00:00', 23);
INSERT INTO `employ` VALUES (16, '赖兰泽', '18973256234', '女', '职员', '北京', 2, 1, '2018-03-12 00:00:00', 23);
INSERT INTO `employ` VALUES (17, '怀念巧', '13486329325', '女', '职员', '北京', 11, 1, '2019-03-04 00:00:00', 31);
INSERT INTO `employ` VALUES (18, '越温文', '18935827522', '男', '职员', '北京', 12, 1, '2020-01-21 00:00:00', 23);
INSERT INTO `employ` VALUES (19, '甄浩壤', '18052582525', '男', '职员', '北京', 5, 1, '2021-07-25 00:00:00', 23);
INSERT INTO `employ` VALUES (20, '富新荣', '19758395212', '男', '职员', '北京', 7, 1, '2020-04-27 00:00:00', 31);
INSERT INTO `employ` VALUES (21, '卓心思', '13390438507', '男', '职员', '北京', 6, 1, '2022-03-12 00:00:00', 15);
INSERT INTO `employ` VALUES (22, '祖苑博', '18935798325', '男', '经理', '北京', 12, 1, '2013-04-21 00:00:00', 31);
INSERT INTO `employ` VALUES (23, '慕优悠', '18942852456', '女', '职员', '北京', 3, 1, '2015-06-22 00:00:00', 31);
INSERT INTO `employ` VALUES (24, '于七瑾', '18303425269', '女', '职员', '杭州', 2, 1, '2018-04-02 00:00:00', 4);
INSERT INTO `employ` VALUES (25, '宫水瑶', '13648529890', '女', '职员', '杭州', 8, 1, '2019-04-23 00:00:00', 7);
INSERT INTO `employ` VALUES (26, '庄幻莲', '13338904803', '女', '经理', '杭州', 9, 1, '2010-04-13 00:00:00', 31);
INSERT INTO `employ` VALUES (27, '金云心', '16593452924', '女', '经理', '杭州', 4, 1, '2010-11-24 00:00:00', 31);
INSERT INTO `employ` VALUES (28, '邰天和', '18937589395', '男', '职员', '杭州', 6, 0, '2019-02-04 00:00:00', 7);
INSERT INTO `employ` VALUES (29, '郭天华', '13593069043', '男', '职员', '杭州', 8, 1, '2016-07-08 00:00:00', 15);
INSERT INTO `employ` VALUES (30, '罗飞虎', '18958295235', '男', '职员', '成都', 5, 1, '2020-11-05 04:27:00', 15);
INSERT INTO `employ` VALUES (31, '利光明', '13495342456', '男', '经理', '成都', 3, 1, '2008-02-16 00:00:00', 31);
INSERT INTO `employ` VALUES (32, '孙伟诚', '18957982759', '男', '职员', '成都', 9, 1, '2015-04-26 00:00:00', 31);
INSERT INTO `employ` VALUES (33, '顾振海', '13649325250', '男', '职员', '成都', 11, 0, '2017-03-04 00:00:00', 4);
INSERT INTO `employ` VALUES (34, '邴梦雨', '18935729852', '女', '职员', '成都', 6, 1, '2019-05-06 00:00:00', 15);
INSERT INTO `employ` VALUES (35, '糜乃欣', '13549542952', '女', '职员', '成都', 8, 1, '2018-02-01 00:00:00', 23);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cate_id` int(0) DEFAULT NULL COMMENT '外键',
  `goods_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `goods_cover` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `goods_price` float NOT NULL,
  `goods_createtime` datetime(0) DEFAULT NULL,
  `goods_createuser` int(0) DEFAULT NULL COMMENT '外键',
  `goods_updatetime` datetime(0) DEFAULT NULL,
  `goods_updateuser` int(0) DEFAULT NULL COMMENT '外键',
  `goods_status` int(0) DEFAULT 1 COMMENT '默认为1',
  PRIMARY KEY (`goods_id`) USING BTREE,
  INDEX `cate_id`(`cate_id`) USING BTREE,
  INDEX `goods_createuser`(`goods_createuser`) USING BTREE,
  INDEX `goods_updateuser`(`goods_updateuser`) USING BTREE,
  CONSTRAINT `cate_id` FOREIGN KEY (`cate_id`) REFERENCES `goods_category` (`cate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goods_createuser` FOREIGN KEY (`goods_createuser`) REFERENCES `employ` (`em_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goods_updateuser` FOREIGN KEY (`goods_updateuser`) REFERENCES `employ` (`em_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '麻辣兔头', 1, NULL, NULL, 23, '2023-02-01 00:00:00', 3, '2023-03-06 00:00:00', 1, 1);
INSERT INTO `goods` VALUES (2, '布丁', 5, NULL, NULL, 11, '2023-04-02 00:00:00', 2, '2023-06-07 00:00:00', 4, 1);
INSERT INTO `goods` VALUES (3, '澳洲牛肉', 3, NULL, NULL, 42, '2023-05-14 00:00:00', 6, '2023-05-23 00:00:00', 2, 1);
INSERT INTO `goods` VALUES (4, '芹菜', 2, NULL, NULL, 14, '2022-07-04 00:00:00', 4, '2022-07-08 00:00:00', 9, 1);
INSERT INTO `goods` VALUES (5, '生蚝', 4, NULL, NULL, 30, '2023-04-12 00:00:00', 8, '2023-04-16 00:00:00', 11, 1);
INSERT INTO `goods` VALUES (6, '哇哈哈矿泉水', 6, NULL, NULL, 3, '2021-05-11 00:00:00', 18, '2023-06-01 00:00:00', 23, 1);
INSERT INTO `goods` VALUES (7, '新疆苹果', 7, NULL, NULL, 21, '2023-04-05 00:00:00', 23, '2023-04-15 00:00:00', 14, 1);
INSERT INTO `goods` VALUES (8, '果冻', 5, NULL, NULL, 18, '2021-05-24 00:00:00', 2, '2023-05-22 00:00:00', 28, 1);
INSERT INTO `goods` VALUES (9, '跳跳糖', 5, NULL, NULL, 8, '2021-05-07 00:00:00', 5, '2023-05-06 00:00:00', 32, 1);
INSERT INTO `goods` VALUES (10, '菠菜', 2, NULL, NULL, 16, '2023-06-07 00:00:00', 27, '2023-06-17 00:00:00', 31, 1);
INSERT INTO `goods` VALUES (11, '扇贝', 4, NULL, NULL, 47, '2023-04-07 00:00:00', 21, '2023-06-07 00:00:00', 21, 1);
INSERT INTO `goods` VALUES (12, '日本和牛', 3, NULL, NULL, 88, '2023-05-18 00:00:00', 8, '2023-06-18 00:00:00', 16, 1);
INSERT INTO `goods` VALUES (13, '元气森林', 6, NULL, NULL, 6, '2021-03-06 00:00:00', 4, '2023-06-01 00:00:00', 24, 1);
INSERT INTO `goods` VALUES (14, '可乐', 6, NULL, NULL, 4, '2021-03-16 00:00:00', 3, '2023-06-18 00:00:00', 25, 1);
INSERT INTO `goods` VALUES (15, '海南椰子', 7, NULL, NULL, 11, '2023-06-04 00:00:00', 21, '2023-06-24 00:00:00', 24, 1);
INSERT INTO `goods` VALUES (16, '大黄鱼', 4, NULL, NULL, 32, '2023-03-05 00:00:00', 32, '2023-05-05 00:00:00', 2, 1);
INSERT INTO `goods` VALUES (17, '鸡蛋', 3, NULL, NULL, 21, '2023-03-04 00:00:00', 8, '2023-05-05 00:00:00', 11, 0);
INSERT INTO `goods` VALUES (18, '郁金香', 8, NULL, NULL, 9, '2023-04-05 00:00:00', 4, '2023-05-05 00:00:00', 2, 1);
INSERT INTO `goods` VALUES (19, ' 寿喜烧', 1, NULL, NULL, 55, '2023-04-06 00:00:00', 6, '2023-05-06 00:00:00', 9, 1);
INSERT INTO `goods` VALUES (20, '芹菜', 2, NULL, NULL, 12, '2023-05-06 00:00:00', 8, '2023-05-16 00:00:00', 21, 1);
INSERT INTO `goods` VALUES (21, '飞天茅台', 6, NULL, NULL, 1888, '2014-05-06 00:00:00', 14, NULL, NULL, 1);
INSERT INTO `goods` VALUES (22, '牛奶', 6, NULL, NULL, 8, '2023-06-10 00:00:00', 11, '2023-06-18 00:00:00', 23, 1);
INSERT INTO `goods` VALUES (23, '十三香小龙虾', 1, NULL, NULL, 78, '2023-04-01 00:00:00', 24, '2023-06-01 00:00:00', 11, 1);
INSERT INTO `goods` VALUES (24, '鸡翅', 5, NULL, NULL, 42, '2023-03-01 00:00:00', 11, '2023-06-13 00:00:00', 9, 1);
INSERT INTO `goods` VALUES (25, ' 8424西瓜', 7, NULL, NULL, 35, '2023-05-12 00:00:00', 21, '2023-06-13 00:00:00', 18, 1);
INSERT INTO `goods` VALUES (26, '薯片', 5, NULL, NULL, 6, '2022-06-01 00:00:00', 13, '2023-06-03 00:00:00', 14, 1);
INSERT INTO `goods` VALUES (27, '瓜子', 5, NULL, NULL, 12, '2022-04-01 00:00:00', 11, '2023-06-18 00:00:00', 9, 1);
INSERT INTO `goods` VALUES (28, '蛤蜊', 4, NULL, NULL, 32, '2023-05-04 00:00:00', 23, '2023-05-16 00:00:00', 27, 1);
INSERT INTO `goods` VALUES (29, '芦笋', 2, NULL, NULL, 3, '2023-04-01 00:00:00', 16, '2023-04-15 00:00:00', NULL, 1);
INSERT INTO `goods` VALUES (30, '帝王蟹', 4, NULL, NULL, 688, '2023-03-01 00:00:00', 16, '2023-05-01 00:00:00', 8, 1);
INSERT INTO `goods` VALUES (31, '三文鱼', 4, NULL, NULL, 218, '2023-05-01 00:00:00', 24, '2023-05-18 00:00:00', 6, 1);
INSERT INTO `goods` VALUES (32, '酸菜鱼', 1, NULL, NULL, 42, '2022-09-15 00:00:00', 9, '2023-03-01 00:00:00', 11, 1);
INSERT INTO `goods` VALUES (33, '玫瑰', 8, NULL, NULL, 10, '2023-05-07 00:00:00', 11, '2023-05-17 00:00:00', 27, 1);
INSERT INTO `goods` VALUES (34, '百合', 8, NULL, NULL, 7, '2023-06-04 00:00:00', 24, '2023-06-18 00:00:00', 25, 1);
INSERT INTO `goods` VALUES (35, '丑橘', 7, NULL, NULL, 34, '2023-03-24 00:00:00', 8, '2023-04-13 00:00:00', 14, 1);

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category`  (
  `cate_id` int(0) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cate_order` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cate_pid` int(0) DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES (1, '预制菜', '1', 1);
INSERT INTO `goods_category` VALUES (2, '蔬菜', '2', 2);
INSERT INTO `goods_category` VALUES (3, '肉禽蛋', '3', 3);
INSERT INTO `goods_category` VALUES (4, '生鲜', '4', 3);
INSERT INTO `goods_category` VALUES (5, '零食', '5', 1);
INSERT INTO `goods_category` VALUES (6, '饮料', '6', 1);
INSERT INTO `goods_category` VALUES (7, '水果', '7', 2);
INSERT INTO `goods_category` VALUES (8, '鲜花', '8', 2);
INSERT INTO `goods_category` VALUES (10, 'ee', '9', NULL);
INSERT INTO `goods_category` VALUES (11, 'test', '10', NULL);

-- ----------------------------
-- Table structure for linkman
-- ----------------------------
DROP TABLE IF EXISTS `linkman`;
CREATE TABLE `linkman`  (
  `linkman_id` int(0) NOT NULL AUTO_INCREMENT,
  `linkman_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `linkman_phone1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `linkman_phone2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `linkman_post` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `linkman_customerid` int(0) DEFAULT NULL,
  PRIMARY KEY (`linkman_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of linkman
-- ----------------------------
INSERT INTO `linkman` VALUES (1, '惠新颖', '58967805', '18912432521', '经理', 1);
INSERT INTO `linkman` VALUES (2, '史悦欣', '35364743', '13636486954', '职员', 4);
INSERT INTO `linkman` VALUES (3, '孙羽莹', '35576854', '18245657965', '职员', 3);
INSERT INTO `linkman` VALUES (4, '孔谷玉', '58205263', '13346585434', '职员', 1);
INSERT INTO `linkman` VALUES (5, '许春竹', '34873493', '18949572993', '经理', 8);
INSERT INTO `linkman` VALUES (6, '邱盼海', '38518723', '18973257453', '职员', 3);
INSERT INTO `linkman` VALUES (7, '夏文霞', '34536343', '14178733261', '经理', 16);
INSERT INTO `linkman` VALUES (8, '游一凡', '57922144', '18093793255', '副总', 15);
INSERT INTO `linkman` VALUES (9, '詹洋然', '53528962', '18074859853', '实习生', 5);
INSERT INTO `linkman` VALUES (10, '冀楚洁', '87589275', '13398590820', '职员', 2);
INSERT INTO `linkman` VALUES (11, '古旭辉', '33717593', '14728409131', '小组长', 13);
INSERT INTO `linkman` VALUES (12, '闻梦茹', '58023822', '13698405235', '职员', 14);
INSERT INTO `linkman` VALUES (13, '孔靓影', '89371875', '18937832794', '职员', 6);
INSERT INTO `linkman` VALUES (14, '孙听兰', '37983456', '13698942525', '职员', 17);
INSERT INTO `linkman` VALUES (15, '关琇芬', '38895894', '18949782324', '小组长', 18);
INSERT INTO `linkman` VALUES (16, '顾修洁', '87832525', '13598724782', '实习生', 12);
INSERT INTO `linkman` VALUES (17, '靳琴雪', '27198471', '18923875284', '小组长', 7);
INSERT INTO `linkman` VALUES (18, '冯莉颖', '32582391', '13634758323', '职员', 11);
INSERT INTO `linkman` VALUES (19, '景睿雪', '52159815', '17028529253', '职员', 10);
INSERT INTO `linkman` VALUES (20, '从子怡', '55784324', '17932952562', '职员', 1);
INSERT INTO `linkman` VALUES (21, '吴静怡', '78319032', '15000236175', '职员', 20);
INSERT INTO `linkman` VALUES (22, '郭赟嘉', '72195321', '13892749015', '小组长', 19);
INSERT INTO `linkman` VALUES (23, '方圆', '76298101', '15738921764', '职员', 9);

SET FOREIGN_KEY_CHECKS = 1;
