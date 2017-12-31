/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : votedb

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-12-31 15:51:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `departments`
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` varchar(11) NOT NULL,
  `departname` varchar(50) DEFAULT NULL COMMENT '部门',
  `remark` varchar(125) DEFAULT NULL COMMENT '预留字段',
  `voteresult` varchar(25) DEFAULT NULL COMMENT '投票结果',
  `userId` varchar(11) DEFAULT NULL COMMENT '用户Id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=472 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('1', '区发改委', '1', null, '');
INSERT INTO `departments` VALUES ('2', '区经信局', '1', null, '');
INSERT INTO `departments` VALUES ('3', '区教育局', '1', null, null);
INSERT INTO `departments` VALUES ('4', '区科技局', '1', null, null);
INSERT INTO `departments` VALUES ('5', '区民宗局', '1', null, null);
INSERT INTO `departments` VALUES ('6', '区行政审批局', '1', null, null);
INSERT INTO `departments` VALUES ('7', '区民政局', '1', null, null);
INSERT INTO `departments` VALUES ('8', '区财政局', '1', null, null);
INSERT INTO `departments` VALUES ('9', '区人社局', '1', null, null);
INSERT INTO `departments` VALUES ('10', '区农委', '1', null, null);
INSERT INTO `departments` VALUES ('11', '区商务局', '1', null, null);
INSERT INTO `departments` VALUES ('12', '区文化局', '1', null, null);
INSERT INTO `departments` VALUES ('13', '区卫计委', '1', null, null);
INSERT INTO `departments` VALUES ('14', '区审计局', '1', null, null);
INSERT INTO `departments` VALUES ('15', '区外事侨务办', '1', null, null);
INSERT INTO `departments` VALUES ('16', '区国资金融局', '1', null, null);
INSERT INTO `departments` VALUES ('17', '区统计局', '1', null, null);
INSERT INTO `departments` VALUES ('18', '区档案局', '1', null, null);
INSERT INTO `departments` VALUES ('19', '区住房公积金管理中心', '1', null, null);
INSERT INTO `departments` VALUES ('20', '区供销联社', '1', null, null);
INSERT INTO `departments` VALUES ('21', '区国税局', '1', null, null);
INSERT INTO `departments` VALUES ('22', '区地税局', '1', null, null);
INSERT INTO `departments` VALUES ('23', '区气象局', '1', '', null);
INSERT INTO `departments` VALUES ('24', '区公安分局', '1', '', null);
INSERT INTO `departments` VALUES ('25', '区司法局', '1', '', null);
INSERT INTO `departments` VALUES ('26', '区国土规划局', '1', '', null);
INSERT INTO `departments` VALUES ('27', '区环保局', '1', '', null);
INSERT INTO `departments` VALUES ('28', '区城乡建设局', '1', null, null);
INSERT INTO `departments` VALUES ('29', '区城管委', '1', null, null);
INSERT INTO `departments` VALUES ('30', '区交通运输局　', '1', null, null);
INSERT INTO `departments` VALUES ('31', '区水务局', '1', null, null);
INSERT INTO `departments` VALUES ('32', '区房产服务中心', '1', null, null);
INSERT INTO `departments` VALUES ('33', '区市场监管局', '1', null, null);
INSERT INTO `departments` VALUES ('34', '区人防办', '1', null, null);
INSERT INTO `departments` VALUES ('35', '区政府法制办', '1', null, null);
INSERT INTO `departments` VALUES ('36', '区安全质监局', '1', null, null);
INSERT INTO `departments` VALUES ('37', '区林业局', '1', null, null);
INSERT INTO `departments` VALUES ('38', '市仲裁委****分会', '1', null, null);
INSERT INTO `departments` VALUES ('39', '区烟草专卖局', '1', null, null);
INSERT INTO `departments` VALUES ('40', '区供电公司', '1', null, null);
INSERT INTO `departments` VALUES ('41', '湖北客运****公交公司', '1', null, null);
INSERT INTO `departments` VALUES ('42', '邮政公司****分公司', '1', null, null);
INSERT INTO `departments` VALUES ('43', '电信公司****分公司', '1', null, null);
INSERT INTO `departments` VALUES ('44', '移动公司****分公司', '1', null, null);
INSERT INTO `departments` VALUES ('45', '联通公司****分公司', '1', null, null);
