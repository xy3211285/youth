/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : votedb

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-12-31 15:51:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `basic_department`
-- ----------------------------
DROP TABLE IF EXISTS `basic_department`;
CREATE TABLE `basic_department` (
  `id` varchar(11) NOT NULL,
  `departs` varchar(50) DEFAULT NULL COMMENT '单位',
  `departname` varchar(50) DEFAULT NULL COMMENT '站所名称',
  `remark` varchar(125) DEFAULT NULL COMMENT '预留字段',
  `voteresult` varchar(25) DEFAULT NULL COMMENT '投票结果[1满意 2基本满意 3不满意 4不了解]',
  `userId` varchar(11) DEFAULT NULL COMMENT '用户Id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=472 DEFAULT CHARSET=utf8 COMMENT='基层站所表';

-- ----------------------------
-- Records of basic_department
-- ----------------------------
INSERT INTO `basic_department` VALUES ('1', '区国税局', '区国税局邾城税务所', '1', null, '');
INSERT INTO `basic_department` VALUES ('2', '区国税局', '区国税局阳逻税务所', '1', null, '');
INSERT INTO `basic_department` VALUES ('3', '区国税局', '区国税局辛冲税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('4', '区国税局', '区国税局仓埠税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('5', '区国税局', '区国税局双柳税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('6', '区国税局', '区国税局重点税源税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('7', '区国税局', '区国税局纳税评估一科', '1', null, null);
INSERT INTO `basic_department` VALUES ('8', '区国税局', '区国税局纳税评估二科', '1', null, null);
INSERT INTO `basic_department` VALUES ('9', '区国税局', '区国税局办税服务厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('10', '区地税局', '区地税局征收分局', '1', null, null);
INSERT INTO `basic_department` VALUES ('11', '区地税局', '区地税局稽查局', '1', null, null);
INSERT INTO `basic_department` VALUES ('12', '区地税局', '区地税局第一税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('13', '区地税局', '区地税局第二税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('14', '区地税局', '区地税局第三税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('15', '区地税局', '区地税局阳逻税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('16', '区地税局', '区地税局邾城税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('17', '区地税局', '区地税局仓埠税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('18', '区地税局', '区地税局辛冲税务所', '1', null, null);
INSERT INTO `basic_department` VALUES ('19', '区公安分局', '区公安分局邾城派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('20', '区公安分局', '区公安分局阳逻派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('21', '区公安分局', '区公安分局旧街派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('22', '区公安分局', '区公安分局潘塘派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('23', '区公安分局', '区公安分局三店派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('24', '区公安分局', '区公安分局汪集派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('25', '区公安分局', '区公安分局李集派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('26', '区公安分局', '区公安分局双柳派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('27', '区公安分局', '区公安分局邾城刘集派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('28', '区公安分局', '区公安分局辛冲派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('29', '区公安分局', '区公安分局徐古派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('30', '区公安分局', '区公安分局凤凰派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('31', '区公安分局', '区公安分局仓埠派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('32', '区公安分局', '区公安分局道观河派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('33', '区公安分局', '区公安分局涨渡湖派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('34', '区公安分局', '区公安分局机场派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('35', '区公安分局', '区公安分局阳逻开发区派出所', '1', null, null);
INSERT INTO `basic_department` VALUES ('36', '区财政局', '区财政局邾城财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('37', '区财政局', '区财政局旧街财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('38', '区财政局', '区财政局三店财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('39', '区财政局', '区财政局李集财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('40', '区财政局', '区财政局汪集财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('41', '区财政局', '区财政局仓埠财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('42', '区财政局', '区财政局阳逻财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('43', '区财政局', '区财政局双柳财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('44', '区财政局', '区财政局潘塘财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('45', '区财政局', '区财政局凤凰财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('46', '区财政局', '区财政局辛冲财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('47', '区财政局', '区财政局徐古财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('48', '区财政局', '区财政局道观河财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('49', '区财政局', '区财政局涨渡湖财政所', '1', null, null);
INSERT INTO `basic_department` VALUES ('50', '区人社局', '区人社局邾城人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('51', '区人社局', '区人社局辛冲人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('52', '区人社局', '区人社局旧街人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('53', '区人社局', '区人社局徐古人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('54', '区人社局', '区人社局潘塘人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('55', '区人社局', '区人社局三店人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('56', '区人社局', '区人社局凤凰人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('57', '区人社局', '区人社局汪集人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('58', '区人社局', '区人社局李集人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('59', '区人社局', '区人社局仓埠人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('60', '区人社局', '区人社局阳逻人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('61', '区人社局', '区人社局双柳人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('62', '区人社局', '区人社局涨渡湖人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('63', '区人社局', '区人社局阳逻开发区人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('64', '区人社局', '区人社局道观河人保中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('65', '区人社局', '****区社保基金结算中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('66', '区人社局', '****区医疗保险服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('67', '区人社局', '****区公共就业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('68', '区人社局', '****区劳动执法大队', '1', null, null);
INSERT INTO `basic_department` VALUES ('69', '区交通局', '****区港航管理处', '1', null, null);
INSERT INTO `basic_department` VALUES ('70', '区交通局', '****区公路运输管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('71', '区交通局', '****区城区客运管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('72', '区交通局', '****区金台治超检测站', '1', null, null);
INSERT INTO `basic_department` VALUES ('73', '区交通局', '****区靠山店治超检测站', '1', null, null);
INSERT INTO `basic_department` VALUES ('74', '区交通局', '区交通局第一交管站', '1', null, null);
INSERT INTO `basic_department` VALUES ('75', '区交通局', '区交通局第二交管站', '1', null, null);
INSERT INTO `basic_department` VALUES ('76', '区交通局', '区交通局第三交管站', '1', null, null);
INSERT INTO `basic_department` VALUES ('77', '区交通局', '区交通局第四交管站', '1', null, null);
INSERT INTO `basic_department` VALUES ('78', '区交通局', '区交通局第五交管站', '1', null, null);
INSERT INTO `basic_department` VALUES ('79', '区交通局', '****区邾城客运站', '1', null, null);
INSERT INTO `basic_department` VALUES ('80', '区水务局', '区水务局邾城水利管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('81', '区水务局', '区水务局旧街水利管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('82', '区水务局', '区水务局三店水利管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('83', '区水务局', '区水务局李集水利管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('84', '区水务局', '区水务局汪集水利管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('85', '区水务局', '区水务局仓埠水利管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('86', '区水务局', '区水务局阳逻水利管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('87', '区水务局', '区水政监察大队 （湖泊管理局）', '1', null, null);
INSERT INTO `basic_department` VALUES ('88', '区水务局', '****区长源供水有限公司（邾城）', '1', null, null);
INSERT INTO `basic_department` VALUES ('89', '区水务局', '****区长源供水有限公司（汪集）', '1', null, null);
INSERT INTO `basic_department` VALUES ('90', '区水务局', '****区长源供水有限公司（仓埠）', '1', null, null);
INSERT INTO `basic_department` VALUES ('91', '区水务局', '****区长源供水有限公司（凤凰）', '1', null, null);
INSERT INTO `basic_department` VALUES ('92', '区水务局', '****区阳逻供水实业有限公司', '1', null, null);
INSERT INTO `basic_department` VALUES ('93', '区水务局', '武汉帝元自来水有限公司（双柳）', '1', null, null);
INSERT INTO `basic_department` VALUES ('94', '区水务局', '武汉市天立道观供水有限公司', '1', null, null);
INSERT INTO `basic_department` VALUES ('95', '区水务局', '武汉市保民供水实业有限公司（仓埠）', '1', null, null);
INSERT INTO `basic_department` VALUES ('96', '区水务局', '武汉市鑫佳源自来水有限公司（旧街）', '1', null, null);
INSERT INTO `basic_department` VALUES ('97', '区水务局', '武汉市新桥河供水有限公司（潘塘）', '1', null, null);
INSERT INTO `basic_department` VALUES ('98', '区水务局', '武汉市惠农供水有限公司（辛冲）', '1', null, null);
INSERT INTO `basic_department` VALUES ('99', '区水务局', '武汉市和平贺桥供水有限公司（三店）', '1', null, null);
INSERT INTO `basic_department` VALUES ('100', '区水务局', '阳逻供水公司营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('101', '区水务局', '阳逻供水公司报装办', '1', null, null);
INSERT INTO `basic_department` VALUES ('102', '区林业局', '区林业局道观河林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('103', '区林业局', '区林业局徐古林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('104', '区林业局', '区林业局潘塘林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('105', '区林业局', '区林业局三店林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('106', '区林业局', '区林业局旧街林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('107', '区林业局', '区林业局凤凰林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('108', '区林业局', '区林业局仓埠林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('109', '区林业局', '区林业局阳逻林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('110', '区林业局', '区林业局双柳林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('111', '区林业局', '区林业局邾城林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('112', '区林业局', '区林业局辛冲林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('113', '区林业局', '区林业局李集林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('114', '区林业局', '区林业局汪集林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('115', '区林业局', '区林业局涨渡湖林业管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('116', '区林业局', '区林业局林政管理稽查队', '1', null, null);
INSERT INTO `basic_department` VALUES ('117', '区市场监管局', '区市场监管局城关市场监管所', '1', null, null);
INSERT INTO `basic_department` VALUES ('118', '区市场监管局', '区市场监管局邾城所', '1', null, null);
INSERT INTO `basic_department` VALUES ('119', '区市场监管局', '区市场监管局问津所', '1', null, null);
INSERT INTO `basic_department` VALUES ('120', '区市场监管局', '区市场监管局东风所', '1', null, null);
INSERT INTO `basic_department` VALUES ('121', '区市场监管局', '区市场监管局平江所', '1', null, null);
INSERT INTO `basic_department` VALUES ('122', '区市场监管局', '区市场监管局汪集所', '1', null, null);
INSERT INTO `basic_department` VALUES ('123', '区市场监管局', '区市场监管局仓埠所', '1', null, null);
INSERT INTO `basic_department` VALUES ('124', '区市场监管局', '区市场监管局旧街所', '1', null, null);
INSERT INTO `basic_department` VALUES ('125', '区市场监管局', '区市场监管局道观所', '1', null, null);
INSERT INTO `basic_department` VALUES ('126', '区市场监管局', '区市场监管局辛冲所', '1', null, null);
INSERT INTO `basic_department` VALUES ('127', '区市场监管局', '区市场监管局潘塘所', '1', null, null);
INSERT INTO `basic_department` VALUES ('128', '区市场监管局', '区市场监管局风凰所', '1', null, null);
INSERT INTO `basic_department` VALUES ('129', '区市场监管局', '区市场监管局徐古所', '1', null, null);
INSERT INTO `basic_department` VALUES ('130', '区市场监管局', '区市场监管局阳逻开发区所', '1', null, null);
INSERT INTO `basic_department` VALUES ('131', '区市场监管局', '区市场监管局双柳所', '1', null, null);
INSERT INTO `basic_department` VALUES ('132', '区市场监管局', '区市场监管局涨渡湖所', '1', null, null);
INSERT INTO `basic_department` VALUES ('133', '区市场监管局', '区市场监管局李集所', '1', null, null);
INSERT INTO `basic_department` VALUES ('134', '区市场监管局', '区市场监管局三店所', '1', null, null);
INSERT INTO `basic_department` VALUES ('135', '区司法局', '区司法局邾城司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('136', '区司法局', '区司法局阳逻司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('137', '区司法局', '区司法局仓埠司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('138', '区司法局', '区司法局汪集司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('139', '区司法局', '区司法局双柳司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('140', '区司法局', '区司法局三店司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('141', '区司法局', '区司法局潘塘司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('142', '区司法局', '区司法局旧街司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('143', '区司法局', '区司法局道观司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('144', '区司法局', '区司法局辛冲司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('145', '区司法局', '区司法局李集司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('146', '区司法局', '区司法局凤凰司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('147', '区司法局', '区司法局涨渡湖司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('148', '区司法局', '区司法局徐古司法所', '1', null, null);
INSERT INTO `basic_department` VALUES ('149', '区卫计委', '区卫计委卫生监督所', '1', null, null);
INSERT INTO `basic_department` VALUES ('150', '区卫计委', '区卫计委疾控中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('151', '区卫计委', '区卫计委血防所', '1', null, null);
INSERT INTO `basic_department` VALUES ('152', '区卫计委', '区卫计委计生服务站', '1', null, null);
INSERT INTO `basic_department` VALUES ('153', '区卫计委', '区卫计委计生执法大队', '1', null, null);
INSERT INTO `basic_department` VALUES ('154', '区卫计委', '区卫计委邾城卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('155', '区卫计委', '区卫计委旧街中心卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('156', '区卫计委', '区卫计委潘塘卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('157', '区卫计委', '区卫计委三店卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('158', '区卫计委', '区卫计委李集卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('159', '区卫计委', '区卫计委汪集中心卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('160', '区卫计委', '区卫计委仓埠中心卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('161', '区卫计委', '区卫计委阳逻卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('162', '区卫计委', '区卫计委双柳卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('163', '区卫计委', '区卫计委辛冲卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('164', '区卫计委', '区卫计委徐古中心卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('165', '区卫计委', '区卫计委凤凰卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('166', '区卫计委', '区卫计委道观河卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('167', '区卫计委', '区卫计委涨渡湖卫生院', '1', null, null);
INSERT INTO `basic_department` VALUES ('168', '区卫计委', '区卫计委邾城社区卫生服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('169', '区卫计委', '区卫计委阳逻社区卫生服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('170', '区发改委', '区发改委物价监督检查局', '1', null, null);
INSERT INTO `basic_department` VALUES ('171', '区发改委', '区发改委物价成本监审价格认定局', '1', null, null);
INSERT INTO `basic_department` VALUES ('172', '区质监局', '区安全生产和质量技术执法监察大队', '1', null, null);
INSERT INTO `basic_department` VALUES ('173', '区质监局', '区安全生产和质量技术监督检验所', '1', null, null);
INSERT INTO `basic_department` VALUES ('174', '区环保局', '区环保局环境监察大队', '1', null, null);
INSERT INTO `basic_department` VALUES ('175', '区环保局', '区环保局环境监测站', '1', null, null);
INSERT INTO `basic_department` VALUES ('176', '区环保局', '区环保局环境科学研究所', '1', null, null);
INSERT INTO `basic_department` VALUES ('177', '区环保局', '区环保局辐危、车防中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('178', '区文化局', '区文化局文化综合执法大队', '1', null, null);
INSERT INTO `basic_department` VALUES ('179', '区文化局', '区文化局邾城街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('180', '区文化局', '区文化局阳逻街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('181', '区文化局', '区文化局双柳街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('182', '区文化局', '区文化局仓埠街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('183', '区文化局', '区文化局涨渡湖文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('184', '区文化局', '区文化局李集街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('185', '区文化局', '区文化局凤凰镇文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('186', '区文化局', '区文化局三店街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('187', '区文化局', '区文化局徐古街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('188', '区文化局', '区文化局潘塘街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('189', '区文化局', '区文化局旧街街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('190', '区文化局', '区文化局辛冲街文化站', '1', null, null);
INSERT INTO `basic_department` VALUES ('191', '区房产服务中心', '区房产服务中心监察执法大队', '1', null, null);
INSERT INTO `basic_department` VALUES ('192', '区房产服务中心', '区房产服务中心房屋交易管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('193', '区房产服务中心', '区房产服务中心房屋安监所', '1', null, null);
INSERT INTO `basic_department` VALUES ('194', '区房产服务中心', '区房产服务中心房产测绘队', '1', null, null);
INSERT INTO `basic_department` VALUES ('195', '区房产服务中心', '区房产服务中心房产装饰所', '1', null, null);
INSERT INTO `basic_department` VALUES ('196', '区房产服务中心', '区房产服务中心邾城房管所', '1', null, null);
INSERT INTO `basic_department` VALUES ('197', '区房产服务中心', '区房产服务中心阳逻房管所', '1', null, null);
INSERT INTO `basic_department` VALUES ('198', '区房产服务中心', '区房产服务中心仓埠房管所', '1', null, null);
INSERT INTO `basic_department` VALUES ('199', '区城管委', '区城管委邾城街城管执法中队', '1', null, null);
INSERT INTO `basic_department` VALUES ('200', '区城管委', '区城管委城管督察大队阳逻中队', '1', null, null);
INSERT INTO `basic_department` VALUES ('201', '区城管委', '区城管委涨渡湖城管办（环卫所）', '1', null, null);
INSERT INTO `basic_department` VALUES ('202', '区城管委', '区城管委凤凰城管办（环卫所）', '1', null, null);
INSERT INTO `basic_department` VALUES ('203', '区城管委', '区城管委辛冲城管办（环卫所）', '1', null, null);
INSERT INTO `basic_department` VALUES ('204', '区城管委', '区城管委道观河城管办（环卫所）', '1', null, null);
INSERT INTO `basic_department` VALUES ('205', '区城管委', '区城管委旧街执法中队', '1', null, null);
INSERT INTO `basic_department` VALUES ('206', '区城管委', '区城管委徐古城综办（城管、环卫）', '1', null, null);
INSERT INTO `basic_department` VALUES ('207', '区城管委', '区城管委汪集城管办', '1', null, null);
INSERT INTO `basic_department` VALUES ('208', '区城管委', '区城管委双柳城管中队', '1', null, null);
INSERT INTO `basic_department` VALUES ('209', '区民政局', '区民政局婚姻登记处', '1', null, null);
INSERT INTO `basic_department` VALUES ('210', '区民政局', '区民政局民政救助站', '1', null, null);
INSERT INTO `basic_department` VALUES ('211', '区农委', '区农委农业综合执法大队', '1', null, null);
INSERT INTO `basic_department` VALUES ('212', '区农委', '区农委邾城农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('213', '区农委', '区农委阳逻农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('214', '区农委', '区农委双柳农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('215', '区农委', '区农委仓埠农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('216', '区农委', '区农委李集农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('217', '区农委', '区农委汪集农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('218', '区农委', '区农委凤凰农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('219', '区农委', '区农委三店农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('220', '区农委', '区农委徐古农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('221', '区农委', '区农委潘塘农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('222', '区农委', '区农委旧街农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('223', '区农委', '区农委辛冲农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('224', '区农委', '区农委道观河农业服务中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('225', '区国土局', '区国土局邾城国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('226', '区国土局', '区国土局阳逻国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('227', '区国土局', '区国土局汪集国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('228', '区国土局', '区国土局仓埠国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('229', '区国土局', '区国土局双柳国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('230', '区国土局', '区国土局涨渡湖国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('231', '区国土局', '区国土局李集国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('232', '区国土局', '区国土局潘塘国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('233', '区国土局', '区国土局旧街国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('234', '区国土局', '区国土局三店国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('235', '区国土局', '区国土局凤凰国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('236', '区国土局', '区国土局徐古国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('237', '区国土局', '区国土局道观河国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('238', '区国土局', '区国土局辛冲国土所', '1', null, null);
INSERT INTO `basic_department` VALUES ('239', '区城建局', '区城建局邾城城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('240', '区城建局', '区城建局阳逻城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('241', '区城建局', '区城建局双柳城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('242', '区城建局', '区城建局仓埠城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('243', '区城建局', '区城建局涨渡湖城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('244', '区城建局', '区城建局李集城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('245', '区城建局', '区城建局汪集城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('246', '区城建局', '区城建局凤凰城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('247', '区城建局', '区城建局三店城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('248', '区城建局', '区城建局徐古城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('249', '区城建局', '区城建局潘塘城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('250', '区城建局', '区城建局旧街城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('251', '区城建局', '区城建局辛冲城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('252', '区城建局', '区城建局道观河城建办', '1', null, null);
INSERT INTO `basic_department` VALUES ('253', '区城建局', '区城建局城建档案馆', '1', null, null);
INSERT INTO `basic_department` VALUES ('254', '区城建局', '区城建局管网建设管理站', '1', null, null);
INSERT INTO `basic_department` VALUES ('255', '区城建局', '区城建局建筑业管理办公室', '1', null, null);
INSERT INTO `basic_department` VALUES ('256', '街道服务中心', '邾城街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('257', '街道服务中心', '阳逻街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('258', '街道服务中心', '双柳街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('259', '街道服务中心', '仓埠街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('260', '街道服务中心', '涨渡湖社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('261', '街道服务中心', '李集街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('262', '街道服务中心', '汪集街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('263', '街道服务中心', '凤凰镇社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('264', '街道服务中心', '三店街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('265', '街道服务中心', '徐古街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('266', '街道服务中心', '潘塘街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('267', '街道服务中心', '旧街街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('268', '街道服务中心', '辛冲街社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('269', '街道服务中心', '道观河社事办', '1', null, null);
INSERT INTO `basic_department` VALUES ('270', '区行政审批局', '区行政审批局不动产登记中心窗口', '1', null, null);
INSERT INTO `basic_department` VALUES ('271', '区行政审批局', '区行政审批局房产中心窗口', '1', null, null);
INSERT INTO `basic_department` VALUES ('272', '区行政审批局', '区行政审批局国土局窗口', '1', null, null);
INSERT INTO `basic_department` VALUES ('273', '区行政审批局', '区行政审批局税务局窗口', '1', null, null);
INSERT INTO `basic_department` VALUES ('274', '区行政审批局', '区行政审批局公安分局窗口', '1', null, null);
INSERT INTO `basic_department` VALUES ('275', '区住房公积金', '区住房公积金管理中心', '1', null, null);
INSERT INTO `basic_department` VALUES ('276', '区供电公司', '邾城供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('277', '区供电公司', '阳逻供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('278', '区供电公司', '汪集供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('279', '区供电公司', '三店和平供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('280', '区供电公司', '李集供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('281', '区供电公司', '新集供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('282', '区供电公司', '仓埠供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('283', '区供电公司', '涨渡湖供电所', '1', null, null);
INSERT INTO `basic_department` VALUES ('284', '移动公司', '****营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('285', '移动公司', '邾城营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('286', '移动公司', '阳逻营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('287', '移动公司', '新港营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('288', '联通公司', '****云梦街营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('289', '联通公司', '****齐安大道营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('290', '联通公司', '生物工程学院营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('291', '联通公司', '阳光大道转盘营业厅', '1', null, null);
INSERT INTO `basic_department` VALUES ('292', '烟草公司', '邾城管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('293', '烟草公司', '阳逻管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('294', '烟草公司', '汪集管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('295', '烟草公司', '仓埠管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('296', '烟草公司', '凤凰管理所', '1', null, null);
INSERT INTO `basic_department` VALUES ('297', '烟草公司', '旧街管理所', '1', null, null);
