/*
 Navicat Premium Data Transfer

 Source Server         : link
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : cov

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 05/06/2021 23:45:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime NULL DEFAULT NULL COMMENT '数据最后更新时间',
  `province` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `confirm` int(11) NULL DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) NULL DEFAULT NULL COMMENT '新增确诊',
  `heal` int(11) NULL DEFAULT NULL COMMENT '累计治愈',
  `dead` int(11) NULL DEFAULT NULL COMMENT '累计死亡',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 927 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `ds` datetime NOT NULL COMMENT '日期',
  `confirm` int(11) NULL DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) NULL DEFAULT NULL COMMENT '当日新增确诊',
  `suspect` int(11) NULL DEFAULT NULL COMMENT '剩余疑似',
  `suspect_add` int(11) NULL DEFAULT NULL COMMENT '当日新增疑似',
  `heal` int(11) NULL DEFAULT NULL COMMENT '累计治愈',
  `heal_add` int(11) NULL DEFAULT NULL COMMENT '当日新增治愈',
  `dead` int(11) NULL DEFAULT NULL COMMENT '累计死亡',
  `dead_add` int(11) NULL DEFAULT NULL COMMENT '当日新增死亡',
  PRIMARY KEY (`ds`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hotsearch
-- ----------------------------
DROP TABLE IF EXISTS `hotsearch`;
CREATE TABLE `hotsearch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 232 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
