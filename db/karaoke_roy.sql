/*
 Navicat Premium Data Transfer

 Source Server         : roy
 Source Server Type    : MySQL
 Source Server Version : 100113
 Source Host           : localhost:3306
 Source Schema         : karaoke_roy

 Target Server Type    : MySQL
 Target Server Version : 100113
 File Encoding         : 65001

 Date: 07/07/2020 12:29:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tadmin
-- ----------------------------
DROP TABLE IF EXISTS `tadmin`;
CREATE TABLE `tadmin`  (
  `kode_admin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_admin` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pw_admin` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nm_admin` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tipe_admin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode_admin`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tadmin
-- ----------------------------
INSERT INTO `tadmin` VALUES ('A0001', 'Rhitta', '123123', 'Rhitta', '0');
INSERT INTO `tadmin` VALUES ('A0002', 'rimo', '123123', 'Rimbo', '1');
INSERT INTO `tadmin` VALUES ('A0003', 'rioriorio', '111222', 'Rio March', '1');

-- ----------------------------
-- Table structure for tjenis_room
-- ----------------------------
DROP TABLE IF EXISTS `tjenis_room`;
CREATE TABLE `tjenis_room`  (
  `kode_tipe` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `harga` int(9) NULL DEFAULT NULL,
  PRIMARY KEY (`kode_tipe`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tjenis_room
-- ----------------------------
INSERT INTO `tjenis_room` VALUES ('Large', 80000);
INSERT INTO `tjenis_room` VALUES ('Medium', 50000);
INSERT INTO `tjenis_room` VALUES ('Small', 30000);

-- ----------------------------
-- Table structure for tmember
-- ----------------------------
DROP TABLE IF EXISTS `tmember`;
CREATE TABLE `tmember`  (
  `kode_member` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_telp` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jk` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ig` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode_member`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tmember
-- ----------------------------
INSERT INTO `tmember` VALUES ('M001', 'Roy Aldo Yulians', '088806706902', 'royaldoy@gmail.com', 'Perempuan', 'royroyroy', 'Joho Kidul rt 02 rw 03');

-- ----------------------------
-- Table structure for troom
-- ----------------------------
DROP TABLE IF EXISTS `troom`;
CREATE TABLE `troom`  (
  `no_room` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_tipe` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`no_room`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of troom
-- ----------------------------
INSERT INTO `troom` VALUES ('01', 'Small');
INSERT INTO `troom` VALUES ('02', 'Small');
INSERT INTO `troom` VALUES ('03', 'Small');
INSERT INTO `troom` VALUES ('04', 'Small');
INSERT INTO `troom` VALUES ('05', 'Small');
INSERT INTO `troom` VALUES ('06', 'Small');
INSERT INTO `troom` VALUES ('07', 'Small');
INSERT INTO `troom` VALUES ('08', 'Small');
INSERT INTO `troom` VALUES ('09', 'Medium');
INSERT INTO `troom` VALUES ('10', 'Medium');
INSERT INTO `troom` VALUES ('11', 'Medium');
INSERT INTO `troom` VALUES ('12', 'Medium');
INSERT INTO `troom` VALUES ('13', 'Medium');
INSERT INTO `troom` VALUES ('14', 'Medium');
INSERT INTO `troom` VALUES ('15', 'Large');
INSERT INTO `troom` VALUES ('16', 'Large');
INSERT INTO `troom` VALUES ('17', 'Large');
INSERT INTO `troom` VALUES ('18', 'Large');
INSERT INTO `troom` VALUES ('19', 'Large');
INSERT INTO `troom` VALUES ('20', 'Large');
INSERT INTO `troom` VALUES ('21', 'Large');

-- ----------------------------
-- Table structure for ttransaksi
-- ----------------------------
DROP TABLE IF EXISTS `ttransaksi`;
CREATE TABLE `ttransaksi`  (
  `kode_transaksi` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_room` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl` date NULL DEFAULT NULL,
  `waktu_mulai` time(0) NULL DEFAULT NULL,
  `waktu_selesai` time(0) NULL DEFAULT NULL,
  `total` int(9) NULL DEFAULT NULL,
  `bayar` int(9) NULL DEFAULT NULL,
  `kembalian` int(9) NULL DEFAULT NULL,
  `nama_admin` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ttransaksi
-- ----------------------------
INSERT INTO `ttransaksi` VALUES ('T0001', '1', 'Riko', '2020-06-15', '19:01:58', '21:02:01', 60000, 60000, 0, 'Rhitta');
INSERT INTO `ttransaksi` VALUES ('T0002', '4', 'Onaji', '2020-07-15', '20:07:29', '22:07:29', 60000, 70000, 10000, 'Rhitta');
INSERT INTO `ttransaksi` VALUES ('T0003', '05', 'Jamal', '2020-04-15', '21:04:35', '23:04:35', 60000, 100000, 40000, 'Rhitta');
INSERT INTO `ttransaksi` VALUES ('T0004', '21', 'Roy', '2020-11-02', '11:11:20', '13:11:20', 160000, 200000, 40000, 'Rhitta');
INSERT INTO `ttransaksi` VALUES ('T0005', '04', 'Mairo', '2020-07-06', '20:18:28', '22:18:28', 60000, 60000, 0, 'Rhitta');

-- ----------------------------
-- Table structure for tuse_room
-- ----------------------------
DROP TABLE IF EXISTS `tuse_room`;
CREATE TABLE `tuse_room`  (
  `no_room` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `waktu_mulai` time(0) NULL DEFAULT NULL,
  `waktu_selesai` time(0) NULL DEFAULT NULL,
  PRIMARY KEY (`no_room`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
