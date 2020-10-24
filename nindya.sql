/*
 Navicat Premium Data Transfer

 Source Server         : mysql brew
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : nindya

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 24/10/2020 10:06:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `Tbl_barang`;
CREATE TABLE `Tbl_barang` (
  `Id` int(11) NOT NULL,
  `nm_brg` varchar(255) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `merk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Tbl_barang
-- ----------------------------
BEGIN;
INSERT INTO `Tbl_barang` VALUES (101, 'Laptop', 5, 'Dell');
INSERT INTO `Tbl_barang` VALUES (102, 'Pc Dekstop', 10, 'Dell');
INSERT INTO `Tbl_barang` VALUES (103, 'Kabel Lan', 15, 'Bolden');
INSERT INTO `Tbl_barang` VALUES (104, 'Switch', 3, 'Cisco');
COMMIT;

-- ----------------------------
-- Table structure for Tbl_departemen
-- ----------------------------
DROP TABLE IF EXISTS `Tbl_departemen`;
CREATE TABLE `Tbl_departemen` (
  `Id_dep` int(11) NOT NULL,
  `nm_dep` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for Tbl_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `Tbl_pengguna`;
CREATE TABLE `Tbl_pengguna` (
  `Id_dep` int(11) NOT NULL,
  `Id_barang` int(11) DEFAULT NULL,
  `pengguna` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
