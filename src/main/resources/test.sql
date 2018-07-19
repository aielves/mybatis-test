/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-18 22:46:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `rbac_role`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role`;
CREATE TABLE `rbac_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL COMMENT '角色编码',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of rbac_role
-- ----------------------------
INSERT INTO `rbac_role` VALUES ('1', 'admin', '超级管理员', '1528101286137', '0', '1');
INSERT INTO `rbac_role` VALUES ('3', '320663', '业务管理员', '1528101286137', '1528103064054', '1');
INSERT INTO `rbac_role` VALUES ('4', '327545', '测试管理员', '1528102888833', '0', '1');
INSERT INTO `rbac_role` VALUES ('7', '682385', '测试角色', '1528102991164', '0', '1');
INSERT INTO `rbac_role` VALUES ('8', '980429', '测试角色22', '1528103003440', '1528786288093', '1');
INSERT INTO `rbac_role` VALUES ('16', '570124', '业务管理员1', '1528689669049', '0', '1');
INSERT INTO `rbac_role` VALUES ('17', '958682', '业务管理员2', '1528689673278', '0', '1');
INSERT INTO `rbac_role` VALUES ('18', '642484', '业务管理员3', '1528689678517', '0', '1');
INSERT INTO `rbac_role` VALUES ('19', '895386', '业务管理员4', '1528689683067', '0', '1');
INSERT INTO `rbac_role` VALUES ('20', '321779', '业务管理员5', '1528689686410', '0', '1');
INSERT INTO `rbac_role` VALUES ('26', '573501', '业务管理员112', '1528689710115', '1528786267494', '1');
INSERT INTO `rbac_role` VALUES ('27', '716584', '业务管理员12', '1528689712963', '0', '1');
INSERT INTO `rbac_role` VALUES ('28', '267822', '业务管理员11', '1528689717348', '0', '1');

-- ----------------------------
-- Table structure for `rbac_user`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_user`;
CREATE TABLE `rbac_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '登陆账号',
  `password` varchar(100) NOT NULL COMMENT '登录密码',
  `uid` varchar(50) NOT NULL COMMENT '用户UID',
  `utype` int(4) DEFAULT '1' COMMENT '1.普通用户 2.后台用户',
  `areacode` varchar(100) DEFAULT '86' COMMENT '区号',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `sex` int(4) DEFAULT '1' COMMENT '性别 1.男 2.女',
  `age` int(4) DEFAULT '0' COMMENT '年龄',
  `headimg` varchar(155) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(100) DEFAULT NULL COMMENT '昵称',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `idno` varchar(100) DEFAULT NULL COMMENT '身份证',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `wxcat` varchar(50) DEFAULT NULL COMMENT '微信账号',
  `alipay` varchar(50) DEFAULT NULL COMMENT '支付宝账号',
  `password2` varchar(100) DEFAULT NULL COMMENT '二级密码',
  `level` int(4) DEFAULT '0' COMMENT '用户星级',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(20) DEFAULT NULL COMMENT '更新时间',
  `state` int(11) NOT NULL DEFAULT '1' COMMENT '1.正常 2.禁用 3.冻结',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  UNIQUE KEY `idx_uid` (`uid`),
  UNIQUE KEY `idx_mobile` (`mobile`),
  KEY `idx_state` (`state`),
  KEY `idx_email` (`email`),
  KEY `idx_utype` (`utype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of rbac_user
-- ----------------------------
INSERT INTO `rbac_user` VALUES ('1', 'm13823912345', '7930040530a4744d77504bbbff7e7cb3', 'zs123456', '1', '86', '13823912345', '1', '0', 'http://static.cartoonai.com/1/152602140353945623.png', '测试', '张三', null, '', null, null, null, '0', '1530003954745', '1530170412643', '1');
INSERT INTO `rbac_user` VALUES ('3', 'm13823911111', '7930040530a4744d77504bbbff7e7cb3', '70e7431ae26321c53681a66ccb53a9bb', '3', '86', '13823911111', '1', '0', 'http://static.cartoonai.com/3/153017469115571604.jpg', '测试1', '李四', null, '', null, null, null, '0', '1530089449544', '1530174709131', '1');

-- ----------------------------
-- Table structure for `rbac_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_user_role`;
CREATE TABLE `rbac_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `roleId` bigint(20) NOT NULL COMMENT '角色ID',
  `ctime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `utime` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `state` int(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq` (`userId`,`roleId`),
  KEY `idx_userId` (`userId`),
  KEY `idx_roleId` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of rbac_user_role
-- ----------------------------
INSERT INTO `rbac_user_role` VALUES ('1', '1', '1', '0', '0', '1');
