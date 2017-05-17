/*
Navicat MySQL Data Transfer

Source Server         : mytest
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : rysqyl

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-17 11:29:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bl
-- ----------------------------
DROP TABLE IF EXISTS `bl`;
CREATE TABLE `bl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blno` varchar(50) DEFAULT NULL,
  `bingr` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `sfid` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `birth` varchar(50) DEFAULT NULL,
  `jwbs` varchar(50) DEFAULT NULL,
  `zs` varchar(50) DEFAULT NULL,
  `zdjg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bl
-- ----------------------------
INSERT INTO `bl` VALUES ('12', '7', 'shab', 'sf', '213141324123141231', '男', '2017-05-01', '', '', '');

-- ----------------------------
-- Table structure for soufei
-- ----------------------------
DROP TABLE IF EXISTS `soufei`;
CREATE TABLE `soufei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blno` varchar(50) DEFAULT NULL,
  `infotype` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `yaoping` varchar(50) DEFAULT NULL,
  `ss` int(11) DEFAULT NULL,
  `bei` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of soufei
-- ----------------------------

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `xbbjs` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `xno` varchar(255) DEFAULT NULL,
  `rtime` varchar(255) DEFAULT NULL,
  `zzmm` varchar(255) DEFAULT NULL,
  `gkcj` varchar(255) DEFAULT NULL,
  `jhraddrs` varchar(255) DEFAULT NULL,
  `jhname` varchar(255) DEFAULT NULL,
  `jhrtel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', '1234', '管理员', '小马哥', null, '201705081114530001.jpg', '男', '1985-02-15', '1122312311', '湖北武汉', '519953431@qq.com', null, null, null, null, null, null, null);
INSERT INTO `sysuser` VALUES ('2', 'ys2', '1234', '医生', '锤子', '计算机系-计科1202班-', '201204241422560003.jpg', '男', '1985-02-15', '02788888888', '湖北武汉', '123@123.com', '20030521', '2003年七月', '团员', '500', '湖北武汉', '小张', '02799999999');
INSERT INTO `sysuser` VALUES ('3', 'ys', '1234', '医生', '胡二', '计算机系-计科1202班-', '201705081149420002.jpg', '女', '1985-02-15', '02788888888', '湖北武汉', '123@123.com', '20030521', '2003年七月', '团员', '500', '湖北武汉', '小张', '02799999999');
INSERT INTO `sysuser` VALUES ('4', 'sf1', '1234', '收费员', '胡龙', '计算机系-计科1201班-计科1202班-', '201303241924180002.jpg', '女', '1985-02-15', '08911111111', '1112', '123@qq.com', '', '', '', '', '', '', '');
INSERT INTO `sysuser` VALUES ('5', 'sf', '1234', '收费员', '张名', '计算机系-计科1201班-计科1202班-', '201303241924020001.jpg', '女', '1985-02-15', '02788888888', '111', '519933431@qq.com', '', '', '', '', '', '', '');
INSERT INTO `sysuser` VALUES ('6', 'yp', '1234', '管理员', 'yp', '', '', '男', '', '18888888888', '11111111', '111111@qq.com', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for yaopin
-- ----------------------------
DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE `yaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yname` varchar(50) DEFAULT NULL,
  `factory` varchar(50) DEFAULT NULL,
  `syz` varchar(50) DEFAULT NULL,
  `jj` varchar(50) DEFAULT NULL,
  `bei` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yaopin
-- ----------------------------

-- ----------------------------
-- Table structure for yongyao
-- ----------------------------
DROP TABLE IF EXISTS `yongyao`;
CREATE TABLE `yongyao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blno` varchar(50) DEFAULT NULL,
  `yaoping` varchar(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yongyao
-- ----------------------------
INSERT INTO `yongyao` VALUES ('1', '1 - 1', '阿莫西林 - 单价:111', '22');
INSERT INTO `yongyao` VALUES ('2', '1 - 1', '阿莫西林 - 单价:111', '111');
INSERT INTO `yongyao` VALUES ('3', '2 - 张三', '999感冒灵 - 单价:15', '1');
INSERT INTO `yongyao` VALUES ('4', '2 - 张三', '皮炎平 - 单价:8', '1');
