/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : web_oa

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-01-13 17:05:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oa_contact
-- ----------------------------
DROP TABLE IF EXISTS `oa_contact`;
CREATE TABLE `oa_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `letter` varchar(50) NOT NULL DEFAULT '' COMMENT '拼音',
  `company` varchar(30) NOT NULL DEFAULT '' COMMENT '公司',
  `dept` varchar(20) NOT NULL DEFAULT '' COMMENT '部门',
  `position` varchar(20) NOT NULL DEFAULT '' COMMENT '职位',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮件',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `website` varchar(50) NOT NULL DEFAULT '' COMMENT '网站',
  `im` varchar(20) NOT NULL DEFAULT '' COMMENT '即时通讯',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `remark` text COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='think_user_info';

-- ----------------------------
-- Records of oa_contact
-- ----------------------------
INSERT INTO `oa_contact` VALUES ('9', '马腾化', 'MTH', '腾讯', 'CEO', 'CEO', 'pony@qq.com', '公电话', '手机', '', '', '2', '1', '', '1');
INSERT INTO `oa_contact` VALUES ('10', '雷军', 'LJ', '小米', 'CEO', 'CEO', 'yyyyy@yy.com', '010-12341234', '139-1234-1234', 'www.sohu.com', '1234567', '', '1', '', '1');
INSERT INTO `oa_contact` VALUES ('11', '张三', 'ZS', '张三', 'IT', 'CEO', 'zhang@zhang.com', '654', '321', '', '12356', '1', '1', '', '1');
INSERT INTO `oa_contact` VALUES ('21', '223e23', '', '', '', '', 'abc@sohu.com', '23232', '', '', '', '', '1', '', '1');
INSERT INTO `oa_contact` VALUES ('22', '123151', '', '222222222222', '1231', '234', 'abc@sohu.com', '231', '234', '1231231', '234', '2342342', '1', '123123', '1');
INSERT INTO `oa_contact` VALUES ('23', '1234124123', '', '123', '1231', '12', '312@sohu.com', '2312', '312', '312', '123', '11231231', '1', '3123', '1');
INSERT INTO `oa_contact` VALUES ('24', '132', '', '', '', '', '123@13.com', '21331', '', '', '', '', '1', '', '1');

-- ----------------------------
-- Table structure for oa_customer
-- ----------------------------
DROP TABLE IF EXISTS `oa_customer`;
CREATE TABLE `oa_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `letter` varchar(50) NOT NULL DEFAULT '' COMMENT '拼音',
  `biz_license` varchar(30) NOT NULL DEFAULT '' COMMENT '营业许可',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `contact` varchar(20) NOT NULL DEFAULT '' COMMENT '联系人姓名',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮件地址',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `fax` varchar(20) NOT NULL DEFAULT '' COMMENT '传真',
  `salesman` varchar(50) NOT NULL DEFAULT '' COMMENT '业务员',
  `im` varchar(20) NOT NULL DEFAULT '' COMMENT '即时通讯',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `remark` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `payment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_customer
-- ----------------------------
INSERT INTO `oa_customer` VALUES ('29', '名称', 'MC', '之间', '教程', '路线', '已经', '不敢', '手机', '重装', '因为', '聊天', '定制', '1', '杀杀杀杀杀杀杀杀杀', '1', '是');
INSERT INTO `oa_customer` VALUES ('30', '名称', 'MC', '是', '搜索', '是', '是', '是', '', '', '', '', '', '0', '', '0', '是');

-- ----------------------------
-- Table structure for oa_daily_report
-- ----------------------------
DROP TABLE IF EXISTS `oa_daily_report`;
CREATE TABLE `oa_daily_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_submit` tinyint(3) DEFAULT NULL,
  `add_file` text,
  `score_1` tinyint(3) DEFAULT NULL,
  `score_2` tinyint(3) DEFAULT NULL,
  `score_3` tinyint(3) DEFAULT NULL,
  `score_4` tinyint(3) DEFAULT NULL,
  `score_5` tinyint(3) DEFAULT NULL,
  `score_6` tinyint(3) DEFAULT NULL,
  `score_7` tinyint(3) DEFAULT NULL,
  `score_8` tinyint(3) DEFAULT NULL,
  `score_total` tinyint(3) DEFAULT NULL,
  `work_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_daily_report
-- ----------------------------
INSERT INTO `oa_daily_report` VALUES ('36', '1', '管理员', '1', '企业', '1420792495', '今日工作小结', '明日目标：', '0', '1', '', '1', '2', '3', '4', '5', '6', '7', '8', '36', '2015-01-09');
INSERT INTO `oa_daily_report` VALUES ('37', '0', null, null, null, null, null, null, '0', '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oa_daily_report` VALUES ('38', '0', null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oa_daily_report` VALUES ('39', '0', null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oa_daily_report` VALUES ('40', '1', '管理员', '1', '企业', '1420790236', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2015-01-09');
INSERT INTO `oa_daily_report` VALUES ('41', '0', null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oa_daily_report` VALUES ('42', '1', '管理员', '1', '企业', '1420795045', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2015-01-09');
INSERT INTO `oa_daily_report` VALUES ('43', '0', null, null, null, null, null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oa_daily_report` VALUES ('44', '1', '管理员', '1', '企业', '1421377819', 'SSSSSSSSSSSSSSSSS', '', '0', '0', '', '1', '2', '3', '4', '5', '6', '7', '8', '36', '2015-01-16');
INSERT INTO `oa_daily_report` VALUES ('45', '1', '管理员', '1', '企业', '1421215672', 'ssss', null, '1', null, '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oa_daily_report` VALUES ('46', '1', '管理员', '1', '企业', '1421215766', 'asdfa sdf', null, '1', null, '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `oa_daily_report` VALUES ('47', '1', '管理员', '1', '企业', '1421215819', 'ssdfsdf', null, '1', null, '', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for oa_daily_report_comment
-- ----------------------------
DROP TABLE IF EXISTS `oa_daily_report_comment`;
CREATE TABLE `oa_daily_report_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `reply` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_daily_report_comment
-- ----------------------------
INSERT INTO `oa_daily_report_comment` VALUES ('66', '44', '', 'cccccccccccccc', '1', '管理员', '', '1', '1421216195', '1421218844', null, 'CCCCCCCCCCCCC');
INSERT INTO `oa_daily_report_comment` VALUES ('67', '44', '', 'ccccccccccc', '1', '管理员', '', '0', '1421216195', '0', null, null);
INSERT INTO `oa_daily_report_comment` VALUES ('68', '44', '', 'XXXXXXXXXXXXXXXX', '1', '管理员', '', '0', '1421216758', '0', null, null);

-- ----------------------------
-- Table structure for oa_daily_report_detail
-- ----------------------------
DROP TABLE IF EXISTS `oa_daily_report_detail`;
CREATE TABLE `oa_daily_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `seq` tinyint(3) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `item` text,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `is_need_help` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_daily_report_detail
-- ----------------------------
INSERT INTO `oa_daily_report_detail` VALUES ('44', '40', null, '1111111', '工作内容1|||工作内容2|||工作内容3|||工作内容4|||工作内容5', '||||||||||||', '||||||||||||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('45', '40', null, '2222', '工作内容10|||工作内容11', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('46', '40', null, '3333333333333333333', '333333333333|||3333333333333333', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('147', '36', null, '主要工作事项1', '工作内容1|||工作内容2|||工作内容3', '||||||', '||||||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('148', '36', null, '主要工作事项2', '工作内容4|||工作内容5|||工作内容6', '||||||', '||||||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('149', '36', null, '主要工作事项4', '工作内容10|||工作内容11|||工作内容12', '||||||', '||||||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('150', '36', null, '主要工作事项1', '计划推荐目标1', '1', '2', '2', null, 'A', null);
INSERT INTO `oa_daily_report_detail` VALUES ('151', '36', null, '主要工作事项2', '计划推荐目标2', '3', '4', '2', null, 'B', null);
INSERT INTO `oa_daily_report_detail` VALUES ('152', '36', null, '主要工作事项3', '计划推荐目标3', '5', '6', '2', null, 'C', null);
INSERT INTO `oa_daily_report_detail` VALUES ('153', '36', null, '主要工作事项4', '计划推荐目标4', '7', '8', '2', null, 'D', null);
INSERT INTO `oa_daily_report_detail` VALUES ('154', '36', null, '主要工作事项5', '计划推荐目标5', '9', '10', '2', null, 'E', null);
INSERT INTO `oa_daily_report_detail` VALUES ('155', '36', null, '主要工作事项6', '计划推荐目标6', '11', '12', '2', null, 'F', null);
INSERT INTO `oa_daily_report_detail` VALUES ('156', '36', null, '主要工作事项7', '计划推荐目标7', '13', '14', '2', null, 'G', null);
INSERT INTO `oa_daily_report_detail` VALUES ('157', '36', null, '主要工作事项8', '计划推荐目标8', '15', '16', '2', null, 'H', null);
INSERT INTO `oa_daily_report_detail` VALUES ('161', '42', null, '主要工作事项1', '工作内容1|||工作内容2|||工作内容3', '1|||3|||5', '2|||4|||6', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('162', '42', null, '主要工作事项2', '工作内容4|||工作内容5|||工作内容6', '7|||9|||11', '8|||10|||12', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('163', '42', null, '主要工作事项4', '工作内容10|||工作内容11|||工作内容12', '13|||15|||17', '14|||16|||18', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('168', '43', null, '11', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('169', '43', null, '22', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('170', '43', null, '33', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('171', '43', null, '55', '', '', '', '2', null, '', '0');
INSERT INTO `oa_daily_report_detail` VALUES ('172', '43', null, '66', '', '', '', '2', null, '', '0');
INSERT INTO `oa_daily_report_detail` VALUES ('173', '43', null, '77', '', '', '', '2', null, '', '0');
INSERT INTO `oa_daily_report_detail` VALUES ('174', '43', null, '88', '', '', '', '2', null, '', '0');
INSERT INTO `oa_daily_report_detail` VALUES ('187', '44', null, '主要工作事项1', '工作内容1|||工作内容2|||工作内容3', '01:30|||00:00|||00:00', '00:00|||00:00|||00:00', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('188', '44', null, '主要工作事项2', '工作内容4|||工作内容5|||工作内容6', '00:00|||00:00|||00:00', '00:00|||00:00|||00:00', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('189', '44', null, '主要工作事项4', '工作内容10|||工作内容11|||工作内容12', '00:00|||00:00|||00:00', '00:00|||00:00|||00:00', '1', null, null, null);
INSERT INTO `oa_daily_report_detail` VALUES ('190', '44', null, 'XXXXXXX', '', '00:00', '00:00', '2', null, 'A', '0');

-- ----------------------------
-- Table structure for oa_dept
-- ----------------------------
DROP TABLE IF EXISTS `oa_dept`;
CREATE TABLE `oa_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `dept_no` varchar(20) NOT NULL DEFAULT '' COMMENT '部门编号',
  `dept_grade_id` int(11) NOT NULL DEFAULT '0' COMMENT '部门等级ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `sort` varchar(20) NOT NULL DEFAULT '' COMMENT '排序',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_dept
-- ----------------------------
INSERT INTO `oa_dept` VALUES ('1', '0', 'A1', '18', '基于B/S架构的在线OA系统                          ', 'OA', '', '', '0');
INSERT INTO `oa_dept` VALUES ('2', '1', 'YYB', '18', '运营部', '运营', '5', '', '0');
INSERT INTO `oa_dept` VALUES ('3', '1', 'XXB', '18', 'IT部', 'IT', '4', '', '0');
INSERT INTO `oa_dept` VALUES ('5', '1', 'ZJB', '18', '总经办', '总经', '1', '', '0');
INSERT INTO `oa_dept` VALUES ('6', '1', 'GLB', '18', '管理部', '管理', '2', '', '0');
INSERT INTO `oa_dept` VALUES ('7', '1', 'XSB', '18', '销售部', '销售', '3', '', '0');
INSERT INTO `oa_dept` VALUES ('8', '1', 'CWB', '18', '财务部', '财务', '2', '', '0');
INSERT INTO `oa_dept` VALUES ('21', '1', 'XSB', '18', '采购部', '采购', '3', '', '0');
INSERT INTO `oa_dept` VALUES ('23', '6', 'HR', '16', '人事科', '人事', '', '', '0');
INSERT INTO `oa_dept` VALUES ('24', '6', 'ZWK', '16', '总务科', '总务', '', '', '0');
INSERT INTO `oa_dept` VALUES ('25', '8', 'KJK', '16', '会计科', '会计', '', '', '0');
INSERT INTO `oa_dept` VALUES ('26', '8', 'JRK', '16', '金融科', '金融', '', '', '0');

-- ----------------------------
-- Table structure for oa_dept_grade
-- ----------------------------
DROP TABLE IF EXISTS `oa_dept_grade`;
CREATE TABLE `oa_dept_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_no` varchar(10) NOT NULL DEFAULT '' COMMENT '部门级别编码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(10) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_dept_grade
-- ----------------------------
INSERT INTO `oa_dept_grade` VALUES ('13', 'DG3', '部门', '3', '0');
INSERT INTO `oa_dept_grade` VALUES ('16', 'DG1', '科', '1', '0');
INSERT INTO `oa_dept_grade` VALUES ('18', 'DG2', '部', '2', '0');

-- ----------------------------
-- Table structure for oa_doc
-- ----------------------------
DROP TABLE IF EXISTS `oa_doc`;
CREATE TABLE `oa_doc` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_doc
-- ----------------------------
INSERT INTO `oa_doc` VALUES ('87', '2016-0001', '虎豹骑海外论坛疑问点', '虎豹骑海外论坛疑问点<strong></strong>', '66', '988ccfa5b8cb98dc18cf0841e2dc8435;', '1', '管理员', '1451975748', '0', '0');

-- ----------------------------
-- Table structure for oa_duty
-- ----------------------------
DROP TABLE IF EXISTS `oa_duty`;
CREATE TABLE `oa_duty` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `duty_no` varchar(20) NOT NULL DEFAULT '' COMMENT '职责编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` varchar(20) NOT NULL DEFAULT '' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_duty
-- ----------------------------
INSERT INTO `oa_duty` VALUES ('14', 'P001', '采购员', '', '0', '采购员');
INSERT INTO `oa_duty` VALUES ('15', 'S001', '业务员', '', '0', '');
INSERT INTO `oa_duty` VALUES ('16', 'W001', '文员', '', '0', '');
INSERT INTO `oa_duty` VALUES ('17', 'TASK_ASSIGN', '任务分配', '1', '0', '');
INSERT INTO `oa_duty` VALUES ('18', 'SHOW_LOG', '日志查看', '1', '0', '');

-- ----------------------------
-- Table structure for oa_file
-- ----------------------------
DROP TABLE IF EXISTS `oa_file`;
CREATE TABLE `oa_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(32) DEFAULT NULL COMMENT '安全ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `savename` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `size` varchar(20) NOT NULL DEFAULT '' COMMENT '文件大小',
  `extension` varchar(20) NOT NULL DEFAULT '' COMMENT '扩展名',
  `module` varchar(20) NOT NULL DEFAULT '0' COMMENT '应用模块',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=1735 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_file
-- ----------------------------
INSERT INTO `oa_file` VALUES ('1658', '57839ad7cc408f0b7ab9bb89fc14c9b3', '', 'mail/admin/201408/53eade200734a.', '902849', '', 'Mail', '1', '1407901216', '0');
INSERT INTO `oa_file` VALUES ('1659', 'd54360ef12f510b430575c473a774dd3', 'hrwyds fwbp.png', 'mail/admin/201408/53eade2007cba.png', '634632', 'png', 'Mail', '1', '1407901216', '0');
INSERT INTO `oa_file` VALUES ('1660', '00f1c17ea1b324e9d370ec5d90a8bb8b', '杭州圣桐科技.xlsx', 'mail/admin/201408/53eade20081c4.xlsx', '117669', 'xlsx', 'Mail', '1', '1407901216', '0');
INSERT INTO `oa_file` VALUES ('1661', 'a7e2cb404c0eb4f51b856322bead7189', 'OA系统商业授权登记表.xlsx', 'mail/admin/201408/53eade202d201.xlsx', '11684', 'xlsx', 'Mail', '1', '1407901216', '0');
INSERT INTO `oa_file` VALUES ('1662', '0feeea5dd85e1aaca1d99230d92ea58b', 'image022.png', 'mail/admin/201408/53eade219a135.png', '166', 'png', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1663', 'cd9072626972475e9e09e9a9cd52060f', 'image023.gif', 'mail/admin/201408/53eade219a6f4.gif', '10795', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1664', '82f8e43f3744dd09821d5bc9ad031b99', 'image024.jpg', 'mail/admin/201408/53eade219ad5f.jpg', '79213', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1665', '703aa0078cc46069b67b7919b087f032', 'image025.jpg', 'mail/admin/201408/53eade219b47e.jpg', '1220', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1666', '87ad9416672a5a753e48724cab166521', 'image026.gif', 'mail/admin/201408/53eade219baab.gif', '51', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1667', '30d2346a7533f4e363307bc60a675361', 'image027.gif', 'mail/admin/201408/53eade219c026.gif', '670', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1668', 'c71871f6229c068aa0743e1762c65589', 'image028.jpg', 'mail/admin/201408/53eade219c5a1.jpg', '1750', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1669', '8bb3c068ac525dddec5088fa2f25a573', 'image029.jpg', 'mail/admin/201408/53eade219caad.jpg', '1727', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1670', '36e486522b0c4862b2a1decb9447ccd1', 'image030.jpg', 'mail/admin/201408/53eade219cfa2.jpg', '1204', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1671', '5ba2d89e0e33136f28295766e8c82178', 'image031.jpg', 'mail/admin/201408/53eade219d5d1.jpg', '1165', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1672', 'e505be70b9fbdebe37b0c52dd2aee142', 'image032.gif', 'mail/admin/201408/53eade219dc18.gif', '940', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1673', '30ce7038407d6811927b23c27ec82211', 'image033.gif', 'mail/admin/201408/53eade219e277.gif', '975', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1674', 'f363c833d4ca4302adc24bb1c3f49425', 'image034.jpg', 'mail/admin/201408/53eade219e896.jpg', '872', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1675', 'f39f1ba77577c8969c5bc23f78d4979d', 'image035.jpg', 'mail/admin/201408/53eade219ed8f.jpg', '1458', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1676', 'edfea06d2653432e8b701258e2083ea7', 'image036.jpg', 'mail/admin/201408/53eade219f490.jpg', '6248', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1677', 'cdf6e20cf66179ccac11594c961dfe2f', 'image037.jpg', 'mail/admin/201408/53eade219fad7.jpg', '6792', 'jpg', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1678', '58f2f3a005baef25cc4f0c0c2636a16a', 'image038.gif', 'mail/admin/201408/53eade21a0366.gif', '818', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1679', 'b8fe94b4739e4c9ea3f0da50d7adab6a', 'image039.gif', 'mail/admin/201408/53eade21a08ea.gif', '581', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1680', '7dfe650daa4fe7d7dbb49764c3ddb76a', 'image040.gif', 'mail/admin/201408/53eade21a0ddc.gif', '1826', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1681', 'af8f319cae2c9b7973e871118e482ccd', 'image041.gif', 'mail/admin/201408/53eade21a129c.gif', '1972', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1682', '7353567263c3b864fbca54a45133cd18', 'image042.gif', 'mail/admin/201408/53eade21a1a8f.gif', '2115', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1683', '1ba8945e14fe727682e7372f12c74089', 'image043.gif', 'mail/admin/201408/53eade21a207d.gif', '5310', 'gif', 'Mail', '1', '1407901217', '0');
INSERT INTO `oa_file` VALUES ('1684', '10c5b2f77431dc1fc2261cc6b25dc841', 'image001.png', 'mail/admin/201408/53eade23cce13.png', '166', 'png', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1685', '3ac1296153c1a21de144c9c14fa152b1', 'image002.gif', 'mail/admin/201408/53eade23cd3c7.gif', '14527', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1686', 'bb0b81ff8c32a135561921b0fa89b22a', 'image003.jpg', 'mail/admin/201408/53eade23cd901.jpg', '119576', 'jpg', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1687', '88bb4ec13b9e0f78b882f8e6082a6e74', 'image004.gif', 'mail/admin/201408/53eade23cde96.gif', '7196', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1688', '64b3fdb0541eeec5e3c0b357a2bc03c1', 'image005.gif', 'mail/admin/201408/53eade23ce4ed.gif', '7789', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1689', '3e8c6570511a42e55c30d37ac4cefb18', 'image006.gif', 'mail/admin/201408/53eade23cea5c.gif', '6179', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1690', '64b6279e3b59221e7f75c937af3da549', 'image007.gif', 'mail/admin/201408/53eade23cef5c.gif', '4721', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1691', 'bb85b58bda82e149f62e20954087423e', 'image008.gif', 'mail/admin/201408/53eade23cf42e.gif', '1649', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1692', '5a14c63133120d4bc98ef0cd9d8bb923', 'image009.gif', 'mail/admin/201408/53eade23cf9c0.gif', '4796', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1693', '3e0d20d0ceaf4cb6e08590c0221dbadd', 'image010.gif', 'mail/admin/201408/53eade23d000e.gif', '4460', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1694', 'a7a5fa272b65b699003806a840eb49ae', 'image011.gif', 'mail/admin/201408/53eade23d052b.gif', '5282', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1695', '1402f58c070ff0015d84edbfa4e424ef', 'image012.gif', 'mail/admin/201408/53eade23d0a36.gif', '5116', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1696', '418abcc17e19324ccde435f8145cb849', 'image013.gif', 'mail/admin/201408/53eade23d1171.gif', '137', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1697', '57a7a66a559b9d1e51d6d72fd4753a4e', 'image014.gif', 'mail/admin/201408/53eade23d1737.gif', '10347', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1698', 'ff6e733e734961ce771b1669ec13cb69', 'image015.gif', 'mail/admin/201408/53eade23d1c52.gif', '19629', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1699', '05e11d7b2566ea040e87783a43cf069d', 'image016.gif', 'mail/admin/201408/53eade23d239a.gif', '5102', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1700', '41e74d2b1b530bc60e6d98d8d90f0da9', 'image017.gif', 'mail/admin/201408/53eade23d28e7.gif', '46919', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1701', '671125e269a72ca33b883674e508c7b4', 'image018.gif', 'mail/admin/201408/53eade23d2dac.gif', '435', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1702', '04861927e91adc2af55dbc1858bdf344', 'image019.gif', 'mail/admin/201408/53eade23d3361.gif', '730', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1703', '5bacbb543f4c3579a4a2ced42af27381', 'image020.gif', 'mail/admin/201408/53eade23d38cd.gif', '704', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1704', 'd3e99cbd1fd0857bec6c3bec6aa20c29', 'image021.gif', 'mail/admin/201408/53eade23d3db8.gif', '666', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1705', '2cf0ffffe815fbeaa1d7f1da5cd8a561', 'image022.gif', 'mail/admin/201408/53eade23d429f.gif', '707', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1706', 'ee16b8a22b4ebc04c9d048f2409d3910', 'image023.gif', 'mail/admin/201408/53eade23d4844.gif', '706', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1707', '2ffcc2baab1e8c065b1e58ae609987db', 'image024.gif', 'mail/admin/201408/53eade23d4dcb.gif', '13178', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1708', '34e739721443c9aa23c9ec1836aafad8', 'image025.gif', 'mail/admin/201408/53eade23d52cf.gif', '1826', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1709', '2a203b5678e5f73e96005919f4e7e654', 'image026.gif', 'mail/admin/201408/53eade23d57a4.gif', '1972', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1710', 'af713c1b78b49394797a2b88bc48945c', 'image027.gif', 'mail/admin/201408/53eade23d5c52.gif', '2115', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1711', 'b7223f470fab50d3e2a12843fc076fd7', 'image028.gif', 'mail/admin/201408/53eade23d62b8.gif', '5310', 'gif', 'Mail', '1', '1407901219', '0');
INSERT INTO `oa_file` VALUES ('1712', '5e3d654d3376a624291045c565253db7', '永中软件产品配置对外报价书5.19（永中对外）.xlsx', 'mail/admin/201408/53eade252d27e.xlsx', '98356', 'xlsx', 'Mail', '1', '1407901221', '0');
INSERT INTO `oa_file` VALUES ('1713', '656fad224989617dd4c71b63e88ba134', 'OA系统商业授权登记表-fjzgtx.cn.xlsx', 'mail/admin/201408/53eade2618446.xlsx', '11985', 'xlsx', 'Mail', '1', '1407901222', '0');
INSERT INTO `oa_file` VALUES ('1714', '2345f607f362e639229a3937b8c56529', 'xEustf Dcpy.bmp', 'mail/admin/201408/53eade2a592bf.bmp', '906134', 'bmp', 'Mail', '1', '1407901226', '0');
INSERT INTO `oa_file` VALUES ('1715', 'd2e9a380b28629840fb8054d4401356c', '杭州圣桐科技.xlsx', 'mail/admin/201408/53eb27b9cb0a3.xlsx', '117669', 'xlsx', 'Mail', '1', '1407920057', '0');
INSERT INTO `oa_file` VALUES ('1716', '64dd83526bc113639b405d9317ebc2f4', 'a60a32f214b2ef6bfba2ed170b68fbfd.jpg', 'doc/201408/53fb26ddb781d.jpg', '224478', 'jpg', 'Doc', '1', '1408968413', '0');
INSERT INTO `oa_file` VALUES ('1717', '5319ac0b0c8e0ed14ebcc3b8bda66b40', '1.jpg', 'slide/201408/53fc86377dfd4.jpg', '7213', 'jpg', 'Slide', '1', '1409058359', '0');
INSERT INTO `oa_file` VALUES ('1718', 'bf74728da8af89c2eb8443953286cdb3', 'a60a32f214b2ef6bfba2ed170b68fbfd.jpg', 'slide/201408/53fc866e1dd7b.jpg', '224478', 'jpg', 'Slide', '1', '1409058414', '0');
INSERT INTO `oa_file` VALUES ('1719', '9edcec5a421d35682aff66c8ee6cda5e', '7451884_132645827000_2.jpg', 'slide/201408/53fc8675c1eb6.jpg', '208585', 'jpg', 'Slide', '1', '1409058421', '0');
INSERT INTO `oa_file` VALUES ('1720', '6b67e16313d4f26670da48ec3ef450b3', '4.jpg', 'slide/201408/53fc872a720b3.jpg', '8948', 'jpg', 'Slide', '1', '1409058602', '0');
INSERT INTO `oa_file` VALUES ('1721', '65a17fc70e9a22eaef906416ff8bfbce', '4.jpg', 'slide/201408/53fc875ebd7b5.jpg', '8948', 'jpg', 'Slide', '1', '1409058654', '0');
INSERT INTO `oa_file` VALUES ('1722', '3da7ad68086327419e216ce1250f08f6', '7451884_132645827000_2.jpg', 'slide/201408/53fc89347f26e.jpg', '208585', 'jpg', 'Slide', '1', '1409059124', '0');
INSERT INTO `oa_file` VALUES ('1723', '7805b90ce705f12c6c037b5c71fe3068', 'image.jpg', 'mail/201409/541aeaa8e9a56.jpg', '725115', 'jpg', 'Mail', '1', '1411050152', '0');
INSERT INTO `oa_file` VALUES ('1724', '8b2f6f392af9bb2eac66ce4f3532378b', 'sp_hall.xls', 'doc/201411/545add5453ab0.xls', '145408', 'xls', 'Doc', '1', '1415241044', '0');
INSERT INTO `oa_file` VALUES ('1725', '4bd485b02a2b6780f86614b48518da06', '1亟待解决的问题10.30.docx', 'doc/201411/545add6e184c3.docx', '729540', 'docx', 'Doc', '1', '1415241070', '0');
INSERT INTO `oa_file` VALUES ('1727', '4f7d787f8b2d6f40fc029957f09d2f3b', '2.jpg', 'dailyreport/201501/54af90e3d5155.jpg', '432862', 'jpg', 'DailyReport', '1', '1420792035', '0');
INSERT INTO `oa_file` VALUES ('1728', 'c0098814bbd816de8c17b1e6e00aea42', '1.jpg', 'dailyreport/201501/54af915c0cade.jpg', '601946', 'jpg', 'DailyReport', '1', '1420792156', '0');
INSERT INTO `oa_file` VALUES ('1729', '2ebf10ceda0c80714685f81bc660965f', '2.jpg', 'dailyreport/201501/54af915c5ad15.jpg', '432862', 'jpg', 'DailyReport', '1', '1420792156', '0');
INSERT INTO `oa_file` VALUES ('1730', 'eda6c74034ffc698dbd7e2d58f871344', '3.jpg', 'dailyreport/201501/54af915ca2eb6.jpg', '453267', 'jpg', 'DailyReport', '1', '1420792156', '0');
INSERT INTO `oa_file` VALUES ('1731', '60823b8b99b29e228a972637f1872cac', '4.jpg', 'dailyreport/201501/54af915ce9020.jpg', '600890', 'jpg', 'DailyReport', '1', '1420792156', '0');
INSERT INTO `oa_file` VALUES ('1732', '073020505478f2fac36db61fecd1d030', '多啦A梦.jpg', 'popup/201601/568b62a12b019.jpg', '40395', 'jpg', 'Popup', '1', '1451975329', '0');
INSERT INTO `oa_file` VALUES ('1733', '1df9d493ba854926f3a6b56dd6fa8b26', '多啦A梦.jpg', 'popup/201601/568b635289c4b.jpg', '40395', 'jpg', 'Popup', '1', '1451975506', '0');
INSERT INTO `oa_file` VALUES ('1734', '988ccfa5b8cb98dc18cf0841e2dc8435', '虎豹骑海外论坛疑问点.doc', 'doc/201601/568b6434056b3.doc', '155136', 'doc', 'Doc', '1', '1451975732', '0');

-- ----------------------------
-- Table structure for oa_finance
-- ----------------------------
DROP TABLE IF EXISTS `oa_finance`;
CREATE TABLE `oa_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(10) DEFAULT NULL COMMENT '单据编号',
  `input_date` date DEFAULT NULL COMMENT '录入日期',
  `account_id` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `partner` varchar(50) DEFAULT NULL,
  `actor_user_id` int(11) DEFAULT NULL,
  `actor_user_name` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `add_file` varchar(255) DEFAULT NULL,
  `doc_type` tinyint(3) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0',
  `transfer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_finance
-- ----------------------------
INSERT INTO `oa_finance` VALUES ('30', '123123', '2014-10-29', '3', null, '11', null, '转账', null, null, '11', '1', '管理员', '1415004900', null, '向[民生]转出[11]', '', '3', '0', null);
INSERT INTO `oa_finance` VALUES ('31', '123123', '2014-10-29', '4', '11', null, null, '转账', null, null, '11', '1', '管理员', '1415004900', null, '由[农行]转入[11]', '', '3', '0', null);

-- ----------------------------
-- Table structure for oa_finance_account
-- ----------------------------
DROP TABLE IF EXISTS `oa_finance_account`;
CREATE TABLE `oa_finance_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `init` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `is_del` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_finance_account
-- ----------------------------
INSERT INTO `oa_finance_account` VALUES ('1', '22222', '2222222222', '22222233333', '0', '1', '33333333333', '1');
INSERT INTO `oa_finance_account` VALUES ('2', '招行', '333333333333', '3333333333', '111', '2', '33333333333333333333333333', '0');
INSERT INTO `oa_finance_account` VALUES ('3', '农行', '11111', '111111', '0', '3', '', '0');
INSERT INTO `oa_finance_account` VALUES ('4', '民生', '1', '2', '0', '4', '', '0');

-- ----------------------------
-- Table structure for oa_flow
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow`;
CREATE TABLE `oa_flow` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `confirm` varchar(200) NOT NULL DEFAULT '' COMMENT '裁决数据',
  `confirm_name` text NOT NULL COMMENT '裁决显示内容',
  `consult` varchar(200) NOT NULL DEFAULT '' COMMENT '协商数据',
  `consult_name` text NOT NULL COMMENT '协商显示内容',
  `refer` varchar(200) NOT NULL DEFAULT '' COMMENT '抄送数据',
  `refer_name` text NOT NULL COMMENT '抄送显示内容',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '流程类型',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `emp_no` varchar(20) DEFAULT NULL COMMENT '员工编号',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `dept_id` int(11) NOT NULL DEFAULT '0' COMMENT '部门ID',
  `dept_name` varchar(20) NOT NULL DEFAULT '' COMMENT '部门名称',
  `create_date` varchar(10) NOT NULL DEFAULT '' COMMENT '创建日期',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `step` int(11) NOT NULL DEFAULT '0' COMMENT '目前阶段状态',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `refer_name` (`refer_name`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_flow
-- ----------------------------

-- ----------------------------
-- Table structure for oa_flow_field
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow_field`;
CREATE TABLE `oa_flow_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `msg` varchar(50) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `control_layout` varchar(255) DEFAULT NULL,
  `control_data` varchar(255) DEFAULT NULL,
  `validate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_flow_field
-- ----------------------------
INSERT INTO `oa_flow_field` VALUES ('12', '所属部门', '33', '1', '', 'text', '1', '病假|病假,事假|事假,婚假|婚假|丧假|丧假,产假|产假,年休假|年休假', '');
INSERT INTO `oa_flow_field` VALUES ('14', '申请人', '33', '1', '', 'text', '1', 'a|1,b|2,c|3,d|4,e|5', 'require');
INSERT INTO `oa_flow_field` VALUES ('26', '离职原因', '33', '2', '', 'textarea', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('27', '类别', '33', '2', '', 'radio', '1', '1|个人,2|工作,3|其他', '');
INSERT INTO `oa_flow_field` VALUES ('28', '日期', '33', '2', '', 'date', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('29', '所属部门', '35', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('30', '申请人', '35', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('31', '当前薪资', '35', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('32', '调薪额度', '35', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('33', '调薪明细', '35', '1', '', 'textarea', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('34', '类别', '35', '1', '', 'radio', '1', '1|表现佳,2|提升业绩,3|专业技术,4|工作差,5|重大错误', '');
INSERT INTO `oa_flow_field` VALUES ('35', '日期', '35', '1', '', 'date', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('36', '所属部门', '34', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('37', '申请人', '34', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('38', '类别', '34', '1', '', 'radio', '1', '1|事假,2|病假,3|婚嫁,4|丧假,5|其他', '');
INSERT INTO `oa_flow_field` VALUES ('39', '请假时间', '34', '1', '', 'radio', '1', '1|1天,2|2天,3|3天,4|3天以上需提交总经理批示', '');
INSERT INTO `oa_flow_field` VALUES ('40', '请假明细', '34', '1', '', 'textarea', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('41', '日期', '34', '1', '', 'date', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('42', '所属部门', '8', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('43', '申请人', '8', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('44', '报销额度', '8', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('45', '报销类型', '8', '1', '', 'radio', '1', '1|公干,2|个人,3|其他', '');
INSERT INTO `oa_flow_field` VALUES ('46', '补充', '8', '1', '', 'textarea', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('47', '日期', '8', '1', '', 'date', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('48', '所属部门', '36', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('49', '申请人', '36', '1', '', 'text', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('50', '外出理由', '36', '1', '', 'radio', '1', '1|个人,2|公干,3|其他', '');
INSERT INTO `oa_flow_field` VALUES ('51', '日期', '36', '1', '', 'date', '1', '', '');
INSERT INTO `oa_flow_field` VALUES ('52', '补充', '36', '2', '', 'simple', '2', '', '');
INSERT INTO `oa_flow_field` VALUES ('53', '多行文本', '37', '', '', 'textarea', '2', '', '');
INSERT INTO `oa_flow_field` VALUES ('54', '简易编辑器', '37', '', '', 'simple', '2', '', '');
INSERT INTO `oa_flow_field` VALUES ('55', '编辑器', '37', '', '', 'editor', '2', '', '');

-- ----------------------------
-- Table structure for oa_flow_field_data
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow_field_data`;
CREATE TABLE `oa_flow_field_data` (
  `flow_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL DEFAULT '0',
  `val` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_flow_field_data
-- ----------------------------
INSERT INTO `oa_flow_field_data` VALUES ('190', '12', '病假');
INSERT INTO `oa_flow_field_data` VALUES ('190', '14', '2014-06-10');
INSERT INTO `oa_flow_field_data` VALUES ('190', '13', '2014-06-10');
INSERT INTO `oa_flow_field_data` VALUES ('190', '11', 'ssssssssssssss');
INSERT INTO `oa_flow_field_data` VALUES ('191', '12', '事假');
INSERT INTO `oa_flow_field_data` VALUES ('191', '14', '2014-06-04');
INSERT INTO `oa_flow_field_data` VALUES ('191', '13', '');
INSERT INTO `oa_flow_field_data` VALUES ('191', '11', '11111111111');
INSERT INTO `oa_flow_field_data` VALUES ('192', '14', '');
INSERT INTO `oa_flow_field_data` VALUES ('192', '13', '');
INSERT INTO `oa_flow_field_data` VALUES ('192', '11', 'sdf sdf');
INSERT INTO `oa_flow_field_data` VALUES ('221', '12', '病假');
INSERT INTO `oa_flow_field_data` VALUES ('221', '14', '2014-07-16');
INSERT INTO `oa_flow_field_data` VALUES ('221', '13', '2014-07-31');
INSERT INTO `oa_flow_field_data` VALUES ('221', '11', '1111111');
INSERT INTO `oa_flow_field_data` VALUES ('222', '12', '事假');
INSERT INTO `oa_flow_field_data` VALUES ('222', '14', '2014-07-22');
INSERT INTO `oa_flow_field_data` VALUES ('222', '13', '2014-07-25');
INSERT INTO `oa_flow_field_data` VALUES ('222', '11', '22222222222222');
INSERT INTO `oa_flow_field_data` VALUES ('223', '13', '2014-07-23');
INSERT INTO `oa_flow_field_data` VALUES ('223', '14', '2014-07-30');
INSERT INTO `oa_flow_field_data` VALUES ('223', '11', '123123');
INSERT INTO `oa_flow_field_data` VALUES ('230', '29', '斯蒂芬');
INSERT INTO `oa_flow_field_data` VALUES ('230', '30', '斯蒂芬');
INSERT INTO `oa_flow_field_data` VALUES ('230', '31', '速度发 ');
INSERT INTO `oa_flow_field_data` VALUES ('230', '32', '速度 ');
INSERT INTO `oa_flow_field_data` VALUES ('230', '33', '是 发射点发');
INSERT INTO `oa_flow_field_data` VALUES ('230', '34', '1');
INSERT INTO `oa_flow_field_data` VALUES ('230', '35', '');

-- ----------------------------
-- Table structure for oa_flow_log
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow_log`;
CREATE TABLE `oa_flow_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flow_id` int(11) NOT NULL DEFAULT '0' COMMENT '流程ID',
  `emp_no` varchar(20) NOT NULL DEFAULT '' COMMENT '员工编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名称',
  `step` int(11) NOT NULL DEFAULT '0' COMMENT '当前步骤',
  `result` int(11) DEFAULT NULL COMMENT '审批结果',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `comment` text COMMENT '意见',
  `is_read` tinyint(3) NOT NULL DEFAULT '0' COMMENT '已读',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_flow_log
-- ----------------------------
INSERT INTO `oa_flow_log` VALUES ('312', '230', '2001', '42', '总监2001', '21', null, '1418830595', '0', null, '0');

-- ----------------------------
-- Table structure for oa_flow_type
-- ----------------------------
DROP TABLE IF EXISTS `oa_flow_type`;
CREATE TABLE `oa_flow_type` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) NOT NULL DEFAULT '' COMMENT '分组',
  `doc_no_format` varchar(50) NOT NULL DEFAULT '' COMMENT '文档编码格式',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `content` text NOT NULL COMMENT '内容',
  `confirm` varchar(100) NOT NULL DEFAULT '' COMMENT '裁决数据',
  `confirm_name` text NOT NULL COMMENT '裁决显示内容',
  `consult` varchar(100) NOT NULL DEFAULT '' COMMENT '协商数据',
  `consult_name` text NOT NULL COMMENT '协商显示内容',
  `refer` varchar(100) NOT NULL DEFAULT '' COMMENT '抄送数据',
  `refer_name` text NOT NULL COMMENT '抄送显示内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_edit` tinyint(3) NOT NULL DEFAULT '0' COMMENT '可编辑标记',
  `is_lock` tinyint(3) NOT NULL DEFAULT '0' COMMENT '锁定标记',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `request_duty` int(11) DEFAULT NULL,
  `report_duty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_flow_type
-- ----------------------------

-- ----------------------------
-- Table structure for oa_forum
-- ----------------------------
DROP TABLE IF EXISTS `oa_forum`;
CREATE TABLE `oa_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folder` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `views` int(11) NOT NULL,
  `reply` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `last_post` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_top` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_forum
-- ----------------------------
INSERT INTO `oa_forum` VALUES ('25', '53', '1', '管理员', 'sssssss', 'sssssssssssssssssssss', '9', '2', '0', '', '0', '1401541641', '0', '0', '0');
INSERT INTO `oa_forum` VALUES ('26', '52', '1', '管理员', '123', '456789', '38', '1', '0', '', '0', '1405338400', '0', '0', '1');
INSERT INTO `oa_forum` VALUES ('27', '67', '1', '管理员', '测试帖子主题', '测试帖子主题测试帖子主题测试帖子主题', '0', '0', '0', '', '0', '1452673668', '0', '0', '0');

-- ----------------------------
-- Table structure for oa_forum_post
-- ----------------------------
DROP TABLE IF EXISTS `oa_forum_post`;
CREATE TABLE `oa_forum_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_forum_post
-- ----------------------------
INSERT INTO `oa_forum_post` VALUES ('53', '25', '', '123211111111111', '1', '管理员', '', '0', '1401543445', '0');
INSERT INTO `oa_forum_post` VALUES ('54', '25', '', '<img src=\"/Data/Files/forum/201406/53a66bcd99f10.jpg\" alt=\"\" />', '1', '管理员', '', '0', '1403415506', '0');
INSERT INTO `oa_forum_post` VALUES ('55', '26', '', '<p>\r\n	111111111111\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '1', '管理员', '', '1', '1405338494', '0');
INSERT INTO `oa_forum_post` VALUES ('56', '26', '', 'asdf adsf', '0', '', '', '0', '0', '0');
INSERT INTO `oa_forum_post` VALUES ('57', '26', '', 'asdfasdf', '0', '', '', '0', '0', '0');
INSERT INTO `oa_forum_post` VALUES ('58', '26', '465465465', '<p>\r\n	<img src=\"/Data/Files/forum/201407/53c3d6855b0ee.jpg\" alt=\"\" />11111111111\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1111111\r\n</p>', '1', '管理员', '', '1', '1405341713', '1405343556');

-- ----------------------------
-- Table structure for oa_info
-- ----------------------------
DROP TABLE IF EXISTS `oa_info`;
CREATE TABLE `oa_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `folder` int(11) NOT NULL DEFAULT '0',
  `add_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_sign` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_info
-- ----------------------------

-- ----------------------------
-- Table structure for oa_info_sign
-- ----------------------------
DROP TABLE IF EXISTS `oa_info_sign`;
CREATE TABLE `oa_info_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_id` int(11) NOT NULL DEFAULT '0',
  `folder` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `is_sign` tinyint(3) NOT NULL DEFAULT '0',
  `sign_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_info_sign
-- ----------------------------

-- ----------------------------
-- Table structure for oa_mail
-- ----------------------------
DROP TABLE IF EXISTS `oa_mail`;
CREATE TABLE `oa_mail` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `folder` int(11) NOT NULL,
  `mid` varchar(200) DEFAULT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `add_file` varchar(200) DEFAULT NULL,
  `from` varchar(2000) DEFAULT NULL,
  `to` varchar(2000) DEFAULT NULL,
  `reply_to` varchar(2000) DEFAULT NULL,
  `cc` varchar(2000) DEFAULT NULL,
  `read` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=2030 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mail
-- ----------------------------
INSERT INTO `oa_mail` VALUES ('2027', '3', null, 'dsa', 'fdsf', '', '管理员|123', '总经理1001/总经理||44;', '管理员|123', '', '0', '1', '管理员', '1451978725', '0', '0');
INSERT INTO `oa_mail` VALUES ('2028', '3', null, '收到', '的', '', '1|1', '基于B/S架构的在线OA系统                          |dept@group|dept_1;', '1|1', '', '0', '67', '员工123456', '1452670993', '0', '0');
INSERT INTO `oa_mail` VALUES ('2029', '2', null, '询问关于实习生请假相关事宜', '询问关于实习生请假相关事宜询问关于实习生请假相关事宜询问关于实习生请假相关事宜询问关于实习生请假相关事宜', '', '员工123456|hongweichen8888@163.com', '基于B/S架构的在线OA系统                          |dept@group|dept_1;', '员工123456|hongweichen8888@163.com', '', '1', '67', '员工123456', '1452671853', '0', '0');

-- ----------------------------
-- Table structure for oa_mail_account
-- ----------------------------
DROP TABLE IF EXISTS `oa_mail_account`;
CREATE TABLE `oa_mail_account` (
  `id` mediumint(6) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mail_name` varchar(50) NOT NULL,
  `pop3svr` varchar(50) NOT NULL,
  `smtpsvr` varchar(50) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `mail_pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='think_user_info';

-- ----------------------------
-- Records of oa_mail_account
-- ----------------------------
INSERT INTO `oa_mail_account` VALUES ('1', '1838283393@qq.com', '管理员', 'pop.qq.com', 'smtp.qq.com', '1838283393@qq.com', 'hongwei');
INSERT INTO `oa_mail_account` VALUES ('67', 'hongweichen8888@163.com', '员工123456', 'pop.163.com', 'smtp.163.com', 'hongweichen8888@163.com', '6652579hong');

-- ----------------------------
-- Table structure for oa_mail_organize
-- ----------------------------
DROP TABLE IF EXISTS `oa_mail_organize`;
CREATE TABLE `oa_mail_organize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `sender_check` int(11) NOT NULL,
  `sender_option` int(11) NOT NULL,
  `sender_key` varchar(50) NOT NULL,
  `domain_check` int(100) NOT NULL,
  `domain_option` int(11) NOT NULL,
  `domain_key` varchar(50) NOT NULL,
  `recever_check` int(11) NOT NULL,
  `recever_option` int(11) NOT NULL,
  `recever_key` varchar(50) NOT NULL,
  `title_check` int(11) NOT NULL,
  `title_option` int(11) NOT NULL,
  `title_key` varchar(50) NOT NULL,
  `to` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_mail_organize
-- ----------------------------

-- ----------------------------
-- Table structure for oa_message
-- ----------------------------
DROP TABLE IF EXISTS `oa_message`;
CREATE TABLE `oa_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `add_file` varchar(200) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `sender_name` varchar(20) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `receiver_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0',
  `is_read` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_message
-- ----------------------------
INSERT INTO `oa_message` VALUES ('52', '1111111111', '', '1', '管理员', '42', '总监2001', '1399885849', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('53', '1111111111', '', '1', '管理员', '42', '总监2001', '1399885849', '42', '0', '1');
INSERT INTO `oa_message` VALUES ('54', '2222222222222', '', '42', '总监2001', '1', '管理员', '1399885894', '42', '0', '1');
INSERT INTO `oa_message` VALUES ('55', '2222222222222', '', '42', '总监2001', '1', '管理员', '1399885894', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('56', '123333333333', '', '1', '管理员', '42', '总监2001', '1402727322', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('57', '123333333333', '', '1', '管理员', '42', '总监2001', '1402727322', '42', '0', '0');
INSERT INTO `oa_message` VALUES ('58', 'XXXXXXXXXXXXXXXXXXXXXX', '', '1', '管理员', '0', '企业', '1402727412', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('59', 'XXXXXXXXXXXXXXXXXXXXXX', '', '1', '管理员', '0', '企业', '1402727412', '0', '0', '0');
INSERT INTO `oa_message` VALUES ('60', 'sssssssssssssssssssssssssssssssssssss', '', '60', '员工5005', '0', '管理员', '1402727449', '60', '0', '1');
INSERT INTO `oa_message` VALUES ('61', 'sssssssssssssssssssssssssssssssssssss', '', '60', '员工5005', '0', '管理员', '1402727449', '0', '0', '0');
INSERT INTO `oa_message` VALUES ('62', 'sssssssssssssssssss', '', '1', '管理员', '67', '李白/副总', '1402727541', '1', '0', '0');
INSERT INTO `oa_message` VALUES ('63', 'sssssssssssssssssss', '', '1', '管理员', '67', '李白/副总', '1402727541', '67', '0', '0');
INSERT INTO `oa_message` VALUES ('64', 'XXXXXXXXXXXXXXXXXXXXX', '', '60', '员工5005', '41', '总监2002/总监', '1402727613', '60', '0', '0');
INSERT INTO `oa_message` VALUES ('65', 'XXXXXXXXXXXXXXXXXXXXX', '', '60', '员工5005', '41', '总监2002/总监', '1402727613', '41', '0', '0');
INSERT INTO `oa_message` VALUES ('66', 'XXXXXXXXXXXXXXXXXXXXX', '', '60', '员工5005', '48', '副总1003/副总', '1402727613', '60', '0', '0');
INSERT INTO `oa_message` VALUES ('67', 'XXXXXXXXXXXXXXXXXXXXX', '', '60', '员工5005', '48', '副总1003/副总', '1402727613', '48', '0', '0');
INSERT INTO `oa_message` VALUES ('68', 'XXXXXXXXXXXXXXXXXXXXX', '', '60', '员工5005', '1', '管理员/主管', '1402727613', '60', '0', '1');
INSERT INTO `oa_message` VALUES ('69', 'XXXXXXXXXXXXXXXXXXXXX', '', '60', '员工5005', '1', '管理员/主管', '1402727613', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('70', 'asfasdfasdf', '', '60', '员工5005', '1', '管理员', '1402727969', '60', '0', '1');
INSERT INTO `oa_message` VALUES ('71', 'asfasdfasdf', '', '60', '员工5005', '1', '管理员', '1402727969', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('72', 'xxxxxxxxxxxxxxxx', '', '1', '管理员', '60', '员工5005', '1402727992', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('73', 'xxxxxxxxxxxxxxxx', '', '1', '管理员', '60', '员工5005', '1402727992', '60', '0', '1');
INSERT INTO `oa_message` VALUES ('74', 'sssssssssssss', '', '1', '管理员', '41', '总监2002', '1404046714', null, '0', '0');
INSERT INTO `oa_message` VALUES ('75', 'sssssssssssss', '', '1', '管理员', '41', '总监2002', '1404046714', null, '0', '0');
INSERT INTO `oa_message` VALUES ('76', 'asdfasdfasdf', '', '1', '管理员', '1', '管理员', '1415006873', '1', '0', '1');
INSERT INTO `oa_message` VALUES ('77', 'asdfasdfasdf', '', '1', '管理员', '1', '管理员', '1415006873', '1', '0', '1');

-- ----------------------------
-- Table structure for oa_monthly_report
-- ----------------------------
DROP TABLE IF EXISTS `oa_monthly_report`;
CREATE TABLE `oa_monthly_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_submit` tinyint(3) DEFAULT NULL,
  `add_file` text,
  `work_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_monthly_report
-- ----------------------------
INSERT INTO `oa_monthly_report` VALUES ('43', '1', '管理员', '1', '企业', '1421056094', '444', '', '0', '0', '', '2015-01-12');

-- ----------------------------
-- Table structure for oa_monthly_report_comment
-- ----------------------------
DROP TABLE IF EXISTS `oa_monthly_report_comment`;
CREATE TABLE `oa_monthly_report_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `reply` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_monthly_report_comment
-- ----------------------------

-- ----------------------------
-- Table structure for oa_monthly_report_detail
-- ----------------------------
DROP TABLE IF EXISTS `oa_monthly_report_detail`;
CREATE TABLE `oa_monthly_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `seq` tinyint(3) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `item` text,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `is_need_help` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_monthly_report_detail
-- ----------------------------
INSERT INTO `oa_monthly_report_detail` VALUES ('164', '43', null, '11', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_monthly_report_detail` VALUES ('165', '43', null, '22', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_monthly_report_detail` VALUES ('166', '43', null, '33', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_monthly_report_detail` VALUES ('167', '43', null, '556666', '', '', '', '2', null, '', '0');
INSERT INTO `oa_monthly_report_detail` VALUES ('168', '43', null, '66', '', '', '', '2', null, '', '0');
INSERT INTO `oa_monthly_report_detail` VALUES ('169', '43', null, '66', '', '', '', '2', null, '', '0');

-- ----------------------------
-- Table structure for oa_news
-- ----------------------------
DROP TABLE IF EXISTS `oa_news`;
CREATE TABLE `oa_news` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_news
-- ----------------------------
INSERT INTO `oa_news` VALUES ('85', '2014-0001', '产品名称', '<p>\r\n	111111111156523169321564856351\r\n</p>\r\n<p>\r\n	325156635132541586352158163541\r\n</p>\r\n<p>\r\n	3541854163558416548546541854654\r\n</p>\r\n<p>\r\n	3548565496854654854654854654853\r\n</p>\r\n<p>\r\n	65416584165863521654165841652146854136524685\r\n</p>\r\n<p>\r\n	5496854968549685496854851465\r\n</p>', '64', '', '1', '管理员', '1408888474', '0', '0');

-- ----------------------------
-- Table structure for oa_node
-- ----------------------------
DROP TABLE IF EXISTS `oa_node`;
CREATE TABLE `oa_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sub_folder` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`is_del`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_node
-- ----------------------------
INSERT INTO `oa_node` VALUES ('83', '公告', 'notice/index##', 'fa fa-bell-o bc-notice', 'NoticeFolder', '', '3', '0', '0');
INSERT INTO `oa_node` VALUES ('84', '管理', 'user/index', 'fa fa-cogs', '', '', '999', '0', '0');
INSERT INTO `oa_node` VALUES ('85', '站内信', 'mail/index', 'fa fa-envelope-o bc-mail', '', '', '1', '0', '0');
INSERT INTO `oa_node` VALUES ('87', '项目流程', 'flow/index', 'fa fa-pencil bc-flow', '', '', '2', '0', '0');
INSERT INTO `oa_node` VALUES ('88', '文档', 'doc/index##', 'fa fa-file-o', 'DocFolder', '', '4', '0', '0');
INSERT INTO `oa_node` VALUES ('91', '日程', 'schedule/index', 'fa fa-calendar bc-personal-schedule', '', '', '9', '198', '1');
INSERT INTO `oa_node` VALUES ('94', '职位', 'position/index', null, null, '', '', '1', '0');
INSERT INTO `oa_node` VALUES ('97', '部门', 'dept/index', null, null, '', '', '1', '0');
INSERT INTO `oa_node` VALUES ('100', '写信', 'mail/add', null, '', '', '1', '85', '0');
INSERT INTO `oa_node` VALUES ('101', '收件箱', 'mail/folder?fid=inbox', 'bc-mail-inbox', '', '', '3', '85', '0');
INSERT INTO `oa_node` VALUES ('102', '邮件设置', '', null, null, null, '9', '85', '0');
INSERT INTO `oa_node` VALUES ('104', '垃圾箱', 'mail/folder?fid=spambox', '', '', '', '5', '85', '0');
INSERT INTO `oa_node` VALUES ('105', '发件箱', 'mail/folder?fid=outbox', '', '', '', '6', '85', '0');
INSERT INTO `oa_node` VALUES ('106', '已删除', 'mail/folder?fid=delbox', '', '', '', '4', '85', '0');
INSERT INTO `oa_node` VALUES ('107', '草稿箱', 'mail/folder?fid=darftbox', '', '', '', '7', '85', '0');
INSERT INTO `oa_node` VALUES ('108', '邮件帐户设置', 'mail_account/index', null, '', '', '1', '102', '0');
INSERT INTO `oa_node` VALUES ('110', '公司信息管理', '', null, null, '', '1', '84', '0');
INSERT INTO `oa_node` VALUES ('112', '权限管理', '', null, null, '', '3', '84', '0');
INSERT INTO `oa_node` VALUES ('113', '系统设定', '', null, null, '', '4', '84', '0');
INSERT INTO `oa_node` VALUES ('114', '系统参数设置', 'system_config/index', '', '', '', '1', '113', '0');
INSERT INTO `oa_node` VALUES ('115', '部门结构', 'dept/index', '', '', '', '1', '110', '0');
INSERT INTO `oa_node` VALUES ('116', '员工登记', 'user/index', null, '', '', '5', '110', '0');
INSERT INTO `oa_node` VALUES ('118', '权限组管理', 'role/index', '', '', '', '1', '112', '0');
INSERT INTO `oa_node` VALUES ('119', '权限设置', 'role/node', '', '', '', '2', '112', '0');
INSERT INTO `oa_node` VALUES ('120', '权限分配', 'role/user', '', '', '', '3', '112', '0');
INSERT INTO `oa_node` VALUES ('121', '菜单管理', 'node/index', '', '', '', '1', '113', '0');
INSERT INTO `oa_node` VALUES ('122', '职级', 'rank/index', null, '', '', '3', '110', '0');
INSERT INTO `oa_node` VALUES ('123', '职位', 'position/index', null, '', '', '2', '110', '0');
INSERT INTO `oa_node` VALUES ('124', '文件夹设置', 'mail_folder/index', null, '', '', '2', '102', '0');
INSERT INTO `oa_node` VALUES ('125', '联系人', 'contact/index', '', '', '', '1', '198', '0');
INSERT INTO `oa_node` VALUES ('126', '文档搜索', 'doc/index', null, '', '', '1', '88', '0');
INSERT INTO `oa_node` VALUES ('137', '论坛', 'forum/index##', 'fa fa-comments-o', 'ForumFolder', '', '5', '0', '0');
INSERT INTO `oa_node` VALUES ('138', '公告管理', 'notice_folder/index', '', '', '', '4', '83', '0');
INSERT INTO `oa_node` VALUES ('143', '邮件分类', 'mail_organize/index', null, '', '', '', '102', '0');
INSERT INTO `oa_node` VALUES ('144', '发起', 'flow/index', '', '', '', '1', '87', '0');
INSERT INTO `oa_node` VALUES ('146', '流程管理', 'flow_type/index', '', '', '', '9', '87', '0');
INSERT INTO `oa_node` VALUES ('147', '待办', 'flow/folder?fid=confirm', 'bc-flow-confirm', '', '', '2', '87', '0');
INSERT INTO `oa_node` VALUES ('148', '办理', 'flow/folder?fid=finish', '', '', '', '5', '87', '0');
INSERT INTO `oa_node` VALUES ('149', '草稿', 'flow/folder?fid=darft', '', '', '', '6', '87', '0');
INSERT INTO `oa_node` VALUES ('150', '提交', 'flow/folder?fid=submit', '', '', '', '4', '87', '0');
INSERT INTO `oa_node` VALUES ('152', '待办', 'todo/index', 'fa fa-tasks bc-personal-todo', '', '', '9', '198', '0');
INSERT INTO `oa_node` VALUES ('153', '部门级别', 'dept_grade/index', null, '', '', '4', '110', '0');
INSERT INTO `oa_node` VALUES ('156', '客户', 'customer/index', null, '', '', '2', '157', '0');
INSERT INTO `oa_node` VALUES ('157', '通讯录', 'staff/index', 'fa fa-group', '', '', '7', '0', '0');
INSERT INTO `oa_node` VALUES ('158', '供应商', 'supplier/index', null, '', '', '3', '157', '0');
INSERT INTO `oa_node` VALUES ('169', '职员', 'staff/index', null, '', '', '', '157', '0');
INSERT INTO `oa_node` VALUES ('177', '我的文件夹', '##mail', 'bc-mail-myfolder', 'MailFolder', '', '8', '85', '1');
INSERT INTO `oa_node` VALUES ('178', '自助', 'udf_salary/index', 'fa fa-search', '', '', '8', '197', '0');
INSERT INTO `oa_node` VALUES ('179', '工资查询', 'udf_salary/index', '', '', '', '', '178', '0');
INSERT INTO `oa_node` VALUES ('180', '报销查询', 'udf_expense/index', '', '', '', '', '178', '0');
INSERT INTO `oa_node` VALUES ('181', '公告搜索', 'notice/index', '', '', '', '', '83', '0');
INSERT INTO `oa_node` VALUES ('182', '日报', 'daily_report/index', 'fa fa-book', '', '', '6', '197', '0');
INSERT INTO `oa_node` VALUES ('183', '论坛管理', 'forum_folder/index', '', '', '', '', '137', '0');
INSERT INTO `oa_node` VALUES ('184', '流程分组', 'flow_type/tag_manage', '', '', '', '8', '87', '0');
INSERT INTO `oa_node` VALUES ('185', '收到', 'flow/folder?fid=receive', 'bc-flow-receive', '', '', '2', '87', '0');
INSERT INTO `oa_node` VALUES ('186', 'VIP', 'vip/index', '', '', '', '2', '197', '0');
INSERT INTO `oa_node` VALUES ('189', '文档库管理', 'doc_folder/index', '', '', '', 'C1', '88', '0');
INSERT INTO `oa_node` VALUES ('190', '消息', 'message/index', 'fa fa-inbox bc-message', '', '', '99', '198', '0');
INSERT INTO `oa_node` VALUES ('191', '用户设置', '', '', '', '', '', '198', '0');
INSERT INTO `oa_node` VALUES ('192', '用户资料', 'profile/index', '', '', '', '', '191', '0');
INSERT INTO `oa_node` VALUES ('193', '修改密码', 'profile/password', '', '', '', '', '191', '0');
INSERT INTO `oa_node` VALUES ('194', '用户设置', 'UserConfig/index', '', '', '', '999', '191', '1');
INSERT INTO `oa_node` VALUES ('195', '项目', 'xmk/index##', '', 'XmkFolder', '', '1', '197', '0');
INSERT INTO `oa_node` VALUES ('196', '项目库管理', 'xmk_folder/index', '', '', '', '1', '195', '0');
INSERT INTO `oa_node` VALUES ('197', '定制', 'xmk/index', 'fa fa-wrench', '', '', '91', '0', '1');
INSERT INTO `oa_node` VALUES ('198', '个人', 'contact/index', 'fa fa-user bc-personal', '', '', '9', '0', '0');
INSERT INTO `oa_node` VALUES ('199', '产品搜索', 'product/index', '', '', '', '91', '203', '0');
INSERT INTO `oa_node` VALUES ('200', '产品标签', 'product_type/tag_manage', '', '', '', '91', '203', '0');
INSERT INTO `oa_node` VALUES ('201', '产品分类', 'product_type/index', '', '', '', '91', '203', '0');
INSERT INTO `oa_node` VALUES ('203', '产品', 'product/index##', '', 'ProductFolder', '', '91', '197', '0');
INSERT INTO `oa_node` VALUES ('204', '产品目录', 'product_folder/index', '', '', '', '91', '203', '0');
INSERT INTO `oa_node` VALUES ('205', '业务角色管理', 'duty/index', '', '', '', '1', '112', '0');
INSERT INTO `oa_node` VALUES ('206', '业务权限分配', 'role/duty', '', '', '', '3', '112', '0');
INSERT INTO `oa_node` VALUES ('207', '新闻', 'news/index##', 'fa fa-file-o', 'NewsFolder', '', '4', '0', '1');
INSERT INTO `oa_node` VALUES ('208', '新闻库管理', 'news_folder/index', '', '', '', 'C1', '207', '0');
INSERT INTO `oa_node` VALUES ('209', '幻灯片', 'slide/index', 'fa fa-file-o', '', '', '4', '207', '0');
INSERT INTO `oa_node` VALUES ('211', '周报', 'weekly_report/index', 'fa fa-book', '', '', '2', '182', '0');
INSERT INTO `oa_node` VALUES ('212', '月报', 'monthly_report/index', 'fa fa-book', '', '', '3', '182', '0');
INSERT INTO `oa_node` VALUES ('213', '日报', 'daily_report/index', 'fa fa-book', '', '', '1', '182', '0');
INSERT INTO `oa_node` VALUES ('214', '账本', 'finance/index', 'fa fa-jpy', '', '', 'A1', '0', '0');
INSERT INTO `oa_node` VALUES ('215', '记账', 'finance/index', 'fa fa-envelope-o bc-mail', '', '', '1', '214', '0');
INSERT INTO `oa_node` VALUES ('216', '日报', 'task/index', 'fa fa-book', '', '', '6', '0', '1');

-- ----------------------------
-- Table structure for oa_notice
-- ----------------------------
DROP TABLE IF EXISTS `oa_notice`;
CREATE TABLE `oa_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `folder` int(11) NOT NULL DEFAULT '0',
  `add_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_notice
-- ----------------------------
INSERT INTO `oa_notice` VALUES ('59', '2016-0001', '关于2016年春节放假通知', '关于2016年春节放假通知关于2016年春节放假通知关于2016年春节放假通知关于2016年春节放假通知', '68', '', '1', '管理员', '1452673053', '0', '0');

-- ----------------------------
-- Table structure for oa_notice_sign
-- ----------------------------
DROP TABLE IF EXISTS `oa_notice_sign`;
CREATE TABLE `oa_notice_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `folder` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) NOT NULL,
  `is_sign` tinyint(3) NOT NULL DEFAULT '0',
  `sign_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_notice_sign
-- ----------------------------
INSERT INTO `oa_notice_sign` VALUES ('68', '50', '60', '45', '员工5005', '1', '1401324707');
INSERT INTO `oa_notice_sign` VALUES ('69', '50', '1', '45', '管理员', '1', '1403947325');
INSERT INTO `oa_notice_sign` VALUES ('70', '54', '1', '45', '管理员', '1', '1408971416');

-- ----------------------------
-- Table structure for oa_position
-- ----------------------------
DROP TABLE IF EXISTS `oa_position`;
CREATE TABLE `oa_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_position
-- ----------------------------
INSERT INTO `oa_position` VALUES ('1', '05', '主管', '5', '0');
INSERT INTO `oa_position` VALUES ('2', '04', '经理', '4', '0');
INSERT INTO `oa_position` VALUES ('3', '03', '总监', '3', '0');
INSERT INTO `oa_position` VALUES ('4', '02', '副总', '2', '0');
INSERT INTO `oa_position` VALUES ('5', '01', '总经理', '1', '0');
INSERT INTO `oa_position` VALUES ('6', '06', '助理', '6', '0');

-- ----------------------------
-- Table structure for oa_product
-- ----------------------------
DROP TABLE IF EXISTS `oa_product`;
CREATE TABLE `oa_product` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `product_no` varchar(20) NOT NULL DEFAULT '' COMMENT '产品编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '产品类型',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `folder` int(11) DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_product
-- ----------------------------

-- ----------------------------
-- Table structure for oa_product_field
-- ----------------------------
DROP TABLE IF EXISTS `oa_product_field`;
CREATE TABLE `oa_product_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `msg` varchar(50) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `control_layout` varchar(255) DEFAULT NULL,
  `control_data` varchar(255) DEFAULT NULL,
  `validate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_product_field
-- ----------------------------

-- ----------------------------
-- Table structure for oa_product_field_data
-- ----------------------------
DROP TABLE IF EXISTS `oa_product_field_data`;
CREATE TABLE `oa_product_field_data` (
  `product_id` int(11) NOT NULL,
  `field_id` varchar(50) NOT NULL,
  `val` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_product_field_data
-- ----------------------------
INSERT INTO `oa_product_field_data` VALUES ('230', '27', 'xxxxxxxxxxxxxxxx');
INSERT INTO `oa_product_field_data` VALUES ('230', '26', 'yyyyyyyyyyyyyy');
INSERT INTO `oa_product_field_data` VALUES ('230', '25', 'zzzzzzzzzzzzzzzzzz');
INSERT INTO `oa_product_field_data` VALUES ('227', '27', 'X');
INSERT INTO `oa_product_field_data` VALUES ('227', '26', 'X');
INSERT INTO `oa_product_field_data` VALUES ('227', '25', 'X');

-- ----------------------------
-- Table structure for oa_product_type
-- ----------------------------
DROP TABLE IF EXISTS `oa_product_type`;
CREATE TABLE `oa_product_type` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `short` varchar(20) NOT NULL DEFAULT '' COMMENT '简称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_product_type
-- ----------------------------
INSERT INTO `oa_product_type` VALUES ('35', '上衣', '上衣', '1403185924', '1403187883', '0', '0');
INSERT INTO `oa_product_type` VALUES ('36', '裤子', '裤子', '1403186100', '1403187896', '0', '0');

-- ----------------------------
-- Table structure for oa_push
-- ----------------------------
DROP TABLE IF EXISTS `oa_push`;
CREATE TABLE `oa_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `status` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2668 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_push
-- ----------------------------

-- ----------------------------
-- Table structure for oa_rank
-- ----------------------------
DROP TABLE IF EXISTS `oa_rank`;
CREATE TABLE `oa_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_no` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sort` varchar(10) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_rank
-- ----------------------------
INSERT INTO `oa_rank` VALUES ('1', 'RG40', '部长', '1', '0');
INSERT INTO `oa_rank` VALUES ('2', 'RG30', '科长', '2', '0');
INSERT INTO `oa_rank` VALUES ('3', 'RG20', '主管', '3', '0');
INSERT INTO `oa_rank` VALUES ('4', 'RG10', '助理', '4', '0');
INSERT INTO `oa_rank` VALUES ('5', 'RG00', '总经理', '0', '0');

-- ----------------------------
-- Table structure for oa_recent
-- ----------------------------
DROP TABLE IF EXISTS `oa_recent`;
CREATE TABLE `oa_recent` (
  `user_id` int(11) NOT NULL,
  `recent` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_recent
-- ----------------------------

-- ----------------------------
-- Table structure for oa_relation
-- ----------------------------
DROP TABLE IF EXISTS `oa_relation`;
CREATE TABLE `oa_relation` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `relation_id` int(11) NOT NULL DEFAULT '0',
  `relation` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_relation
-- ----------------------------
INSERT INTO `oa_relation` VALUES ('17', '31', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('16', '29', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('16', '28', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('14', '29', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('14', '28', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('14', '27', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('14', '4', 'Course|Position');
INSERT INTO `oa_relation` VALUES ('14', '3', 'Course|Position');
INSERT INTO `oa_relation` VALUES ('14', '2', 'Course|Position');
INSERT INTO `oa_relation` VALUES ('14', '10', 'Course|Dept');
INSERT INTO `oa_relation` VALUES ('14', '6', 'Course|Dept');
INSERT INTO `oa_relation` VALUES ('14', '5', 'Course|Dept');
INSERT INTO `oa_relation` VALUES ('13', '29', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('13', '28', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('13', '27', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('13', '4', 'Course|Position');
INSERT INTO `oa_relation` VALUES ('13', '3', 'Course|Position');
INSERT INTO `oa_relation` VALUES ('13', '2', 'Course|Position');
INSERT INTO `oa_relation` VALUES ('13', '10', 'Course|Dept');
INSERT INTO `oa_relation` VALUES ('13', '6', 'Course|Dept');
INSERT INTO `oa_relation` VALUES ('13', '5', 'Course|Dept');
INSERT INTO `oa_relation` VALUES ('17', '30', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('17', '28', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('24', '30', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('24', '31', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('22', '32', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('23', '31', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('21', '32', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('21', '31', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('21', '30', 'Course|Video');
INSERT INTO `oa_relation` VALUES ('22', '31', 'Course|Video');

-- ----------------------------
-- Table structure for oa_role
-- ----------------------------
DROP TABLE IF EXISTS `oa_role`;
CREATE TABLE `oa_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `pid` smallint(6) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` varchar(20) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`sort`),
  KEY `status` (`is_del`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_role
-- ----------------------------
INSERT INTO `oa_role` VALUES ('1', '公司管理员', '0', '', '1', '1208784792', '1368507168', '0');
INSERT INTO `oa_role` VALUES ('2', '基本权限', '0', '', '2', '1215496283', '1368507164', '0');
INSERT INTO `oa_role` VALUES ('7', '领导', '0', '', '2', '1254325787', '1401288337', '0');
INSERT INTO `oa_role` VALUES ('10', '日志查看', null, '', '', '1421221316', '0', '0');

-- ----------------------------
-- Table structure for oa_role_duty
-- ----------------------------
DROP TABLE IF EXISTS `oa_role_duty`;
CREATE TABLE `oa_role_duty` (
  `role_id` smallint(6) unsigned NOT NULL,
  `duty_id` smallint(6) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_role_duty
-- ----------------------------
INSERT INTO `oa_role_duty` VALUES ('1', '15');
INSERT INTO `oa_role_duty` VALUES ('7', '14');
INSERT INTO `oa_role_duty` VALUES ('1', '14');
INSERT INTO `oa_role_duty` VALUES ('7', '15');
INSERT INTO `oa_role_duty` VALUES ('2', '14');
INSERT INTO `oa_role_duty` VALUES ('2', '15');
INSERT INTO `oa_role_duty` VALUES ('10', '18');

-- ----------------------------
-- Table structure for oa_role_node
-- ----------------------------
DROP TABLE IF EXISTS `oa_role_node`;
CREATE TABLE `oa_role_node` (
  `role_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `write` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_role_node
-- ----------------------------
INSERT INTO `oa_role_node` VALUES ('2', '136', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '137', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '135', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '83', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '94', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '97', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '98', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '99', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '69', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '6', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '2', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '7', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '131', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '130', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '133', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '132', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '189', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '125', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '183', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '135', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '136', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '117', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '138', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '134', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '194', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '103', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '126', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '88', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '133', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '130', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '158', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('7', '124', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '108', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '104', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '107', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '106', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '105', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '101', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '100', null, null, null);
INSERT INTO `oa_role_node` VALUES ('7', '125', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '152', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '134', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '156', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '169', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '132', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '148', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '143', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '102', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '103', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '157', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '91', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '177', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '107', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '105', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '104', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '106', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '103', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '109', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '101', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '100', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '85', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '150', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '185', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '147', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '144', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '87', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '192', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '193', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '191', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '198', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '117', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '117', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '117', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '117', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '103', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '109', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '117', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '117', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '163', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '158', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '170', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '164', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '121', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '146', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '114', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '108', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '113', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '155', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '154', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '206', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '120', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '119', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '118', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '205', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '111', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '112', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '204', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '116', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '153', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '122', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '150', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '149', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '148', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '147', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '144', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '143', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '102', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '177', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '107', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '105', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '104', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '106', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '101', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '156', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '168', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '162', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '166', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '161', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '171', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '125', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '165', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '174', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '172', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '173', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '160', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '175', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '169', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '185', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '213', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '181', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '199', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '200', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '201', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '184', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '176', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '123', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '194', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '193', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '100', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '85', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '87', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '126', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '157', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '167', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '83', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '128', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '192', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '191', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '190', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '88', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '115', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '203', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '212', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '198', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '180', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '229', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '228', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '227', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '226', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '225', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '224', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '223', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '222', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '221', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '220', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '219', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '217', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '218', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '216', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '215', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '214', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '179', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '178', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '186', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '196', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '195', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '197', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '110', null, null, null);
INSERT INTO `oa_role_node` VALUES ('1', '84', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '208', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '209', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '207', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '211', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '182', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '137', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '186', null, '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '195', null, '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '197', null, '1', '1');
INSERT INTO `oa_role_node` VALUES ('1', '124', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '108', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '124', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '149', null, null, null);
INSERT INTO `oa_role_node` VALUES ('2', '182', null, '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '91', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '152', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '178', null, '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '179', null, '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '180', null, '1', '1');
INSERT INTO `oa_role_node` VALUES ('2', '190', '1', '1', '1');
INSERT INTO `oa_role_node` VALUES ('7', '182', '1', '1', '1');

-- ----------------------------
-- Table structure for oa_role_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_role_user`;
CREATE TABLE `oa_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_role_user
-- ----------------------------
INSERT INTO `oa_role_user` VALUES ('4', '27');
INSERT INTO `oa_role_user` VALUES ('4', '26');
INSERT INTO `oa_role_user` VALUES ('5', '31');
INSERT INTO `oa_role_user` VALUES ('3', '22');
INSERT INTO `oa_role_user` VALUES ('2', '67');
INSERT INTO `oa_role_user` VALUES ('1', '4');
INSERT INTO `oa_role_user` VALUES ('1', '3');
INSERT INTO `oa_role_user` VALUES ('1', '35');
INSERT INTO `oa_role_user` VALUES ('1', '36');
INSERT INTO `oa_role_user` VALUES ('1', '54');
INSERT INTO `oa_role_user` VALUES ('2', '3');
INSERT INTO `oa_role_user` VALUES ('1', '53');
INSERT INTO `oa_role_user` VALUES ('7', '36');
INSERT INTO `oa_role_user` VALUES ('1', '2');
INSERT INTO `oa_role_user` VALUES ('2', '66');
INSERT INTO `oa_role_user` VALUES ('2', '65');
INSERT INTO `oa_role_user` VALUES ('2', '62');
INSERT INTO `oa_role_user` VALUES ('2', '2');
INSERT INTO `oa_role_user` VALUES ('7', '2');
INSERT INTO `oa_role_user` VALUES ('2', '61');
INSERT INTO `oa_role_user` VALUES ('2', '60');
INSERT INTO `oa_role_user` VALUES ('2', '59');
INSERT INTO `oa_role_user` VALUES ('2', '58');
INSERT INTO `oa_role_user` VALUES ('2', '57');
INSERT INTO `oa_role_user` VALUES ('2', '55');
INSERT INTO `oa_role_user` VALUES ('1', '56');
INSERT INTO `oa_role_user` VALUES ('2', '52');
INSERT INTO `oa_role_user` VALUES ('2', '51');
INSERT INTO `oa_role_user` VALUES ('2', '50');
INSERT INTO `oa_role_user` VALUES ('2', '49');
INSERT INTO `oa_role_user` VALUES ('2', '48');
INSERT INTO `oa_role_user` VALUES ('2', '44');
INSERT INTO `oa_role_user` VALUES ('2', '43');
INSERT INTO `oa_role_user` VALUES ('2', '1');
INSERT INTO `oa_role_user` VALUES ('2', '42');
INSERT INTO `oa_role_user` VALUES ('1', '1');
INSERT INTO `oa_role_user` VALUES ('1', '63');
INSERT INTO `oa_role_user` VALUES ('1', '64');
INSERT INTO `oa_role_user` VALUES ('2', '41');
INSERT INTO `oa_role_user` VALUES ('2', '68');
INSERT INTO `oa_role_user` VALUES ('7', '44');
INSERT INTO `oa_role_user` VALUES ('1', '42');
INSERT INTO `oa_role_user` VALUES ('1', '55');
INSERT INTO `oa_role_user` VALUES ('2', '56');
INSERT INTO `oa_role_user` VALUES ('7', '42');

-- ----------------------------
-- Table structure for oa_schedule
-- ----------------------------
DROP TABLE IF EXISTS `oa_schedule`;
CREATE TABLE `oa_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `content` text,
  `location` varchar(50) DEFAULT '',
  `priority` int(11) DEFAULT NULL,
  `actor` varchar(200) DEFAULT '',
  `user_id` int(11) DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `add_file` varchar(200) DEFAULT '',
  `is_del` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_schedule
-- ----------------------------
INSERT INTO `oa_schedule` VALUES ('74', 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', '', '3', '', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0');
INSERT INTO `oa_schedule` VALUES ('75', 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', '', '3', '', '1', '2014-12-27 22:33:57', '2014-12-04 03:20:00', '', '0');

-- ----------------------------
-- Table structure for oa_slide
-- ----------------------------
DROP TABLE IF EXISTS `oa_slide`;
CREATE TABLE `oa_slide` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '文档编号',
  `link` varchar(200) NOT NULL DEFAULT '' COMMENT '名称',
  `color` varchar(10) NOT NULL DEFAULT '' COMMENT '内容',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_slide
-- ----------------------------

-- ----------------------------
-- Table structure for oa_supplier
-- ----------------------------
DROP TABLE IF EXISTS `oa_supplier`;
CREATE TABLE `oa_supplier` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `letter` varchar(50) DEFAULT '',
  `short` varchar(30) DEFAULT '',
  `account` varchar(20) DEFAULT '',
  `tax_no` varchar(20) DEFAULT '',
  `payment` varchar(20) DEFAULT NULL,
  `contact` varchar(20) NOT NULL DEFAULT '',
  `office_tel` varchar(20) DEFAULT NULL,
  `mobile_tel` varchar(20) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `im` varchar(20) DEFAULT '',
  `address` varchar(50) DEFAULT '',
  `user_id` int(11) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` text,
  `fax` varchar(255) DEFAULT NULL,
  `user_name` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_supplier
-- ----------------------------
INSERT INTO `oa_supplier` VALUES ('21', '11111111', '', '111111111111', '1111111111', '11111111111', '1111111111111111', '1111111', null, '1111111111111', '11111111111', '', '111111111', '1', '1', '11111111111111', '11111111111', null);
INSERT INTO `oa_supplier` VALUES ('22', '1', '', '2', '3', '4', '5', '7', '1231231', '10', '9', '12', '6', '1', '1', '13', '11', null);
INSERT INTO `oa_supplier` VALUES ('23', '234234', '', '112', '312', '3123', '3123', '12', null, '312', '31', '12', '3123', '1', '0', '3123', '231', null);

-- ----------------------------
-- Table structure for oa_system_config
-- ----------------------------
DROP TABLE IF EXISTS `oa_system_config`;
CREATE TABLE `oa_system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `sort` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_system_config
-- ----------------------------
INSERT INTO `oa_system_config` VALUES ('1', 'SYSTEM_NAME', '系统名称', '基于B/S架构的在线OA系统', '1', '');
INSERT INTO `oa_system_config` VALUES ('7', 'UPLOAD_FILE_TYPE', '上传文件类型', 'doc,docx,xls,xlsx,ppt,pptx,pdf,gif,png,tif,zip,rar,jpg,jpeg,txt', '0', null);
INSERT INTO `oa_system_config` VALUES ('8', 'IS_VERIFY_CODE', '验证码', '0', '0', null);
INSERT INTO `oa_system_config` VALUES ('9', 'XMK_LEVEL', '项目级别1', '1', '0', '1');
INSERT INTO `oa_system_config` VALUES ('10', 'XMK_LEVEL', '项目级别2', '2', '0', '2');
INSERT INTO `oa_system_config` VALUES ('11', 'XMK_LEVEL', '项目级别3', '3', '0', '3');
INSERT INTO `oa_system_config` VALUES ('12', 'XMK_STATUS', '项目状态1', '1', '0', '1');
INSERT INTO `oa_system_config` VALUES ('13', 'XMK_STATUS', '2', '2', '0', '2');
INSERT INTO `oa_system_config` VALUES ('14', 'XMK_STATUS', '3', '3', '0', '3');
INSERT INTO `oa_system_config` VALUES ('15', 'FINANCE_INCOME_TYPE', '办公费', '办公费', '0', '1');
INSERT INTO `oa_system_config` VALUES ('16', 'FINANCE_INCOME_TYPE', '通讯费', '通讯费', '0', '2');
INSERT INTO `oa_system_config` VALUES ('17', 'FINANCE_PAYMENT_TYPE', '办公费', '办公费', '0', '');
INSERT INTO `oa_system_config` VALUES ('18', 'FINANCE_PAYMENT_TYPE', '通讯费', '通讯费', '0', '');

-- ----------------------------
-- Table structure for oa_system_folder
-- ----------------------------
DROP TABLE IF EXISTS `oa_system_folder`;
CREATE TABLE `oa_system_folder` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `admin` varchar(200) NOT NULL,
  `write` varchar(200) NOT NULL,
  `read` varchar(200) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_system_folder
-- ----------------------------
INSERT INTO `oa_system_folder` VALUES ('66', '0', 'DocFolder', '虎豹骑论坛项目', '总经理1001/总经理|1001;基于B/S架构的在线OA系统                          |dept_1;', '', '', '', '0', '');
INSERT INTO `oa_system_folder` VALUES ('67', '0', 'ForumFolder', '测试论坛标题', '总经理1001/总经理|1001;基于B/S架构的在线OA系统                          |dept_1;', '', '', '', '0', '');
INSERT INTO `oa_system_folder` VALUES ('68', '0', 'NoticeFolder', '关于寒假放假通知', '基于B/S架构的在线OA系统                          |dept_1;', '', '', '', '0', '');

-- ----------------------------
-- Table structure for oa_system_tag
-- ----------------------------
DROP TABLE IF EXISTS `oa_system_tag`;
CREATE TABLE `oa_system_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_system_tag
-- ----------------------------
INSERT INTO `oa_system_tag` VALUES ('11', '0', 'Video', '所属科室', '11', '');
INSERT INTO `oa_system_tag` VALUES ('12', '11', 'Video', '外科系统', '12', '');
INSERT INTO `oa_system_tag` VALUES ('13', '11', 'Video', '内科系统', '13', '');
INSERT INTO `oa_system_tag` VALUES ('14', '12', 'Video', '普通外科', '14', '');
INSERT INTO `oa_system_tag` VALUES ('15', '12', 'Video', '肛肠科', '15', '');
INSERT INTO `oa_system_tag` VALUES ('16', '11', 'Video', '专科中心', '16', '');
INSERT INTO `oa_system_tag` VALUES ('17', '11', 'Video', '医技辅助', '17', '');
INSERT INTO `oa_system_tag` VALUES ('18', '12', 'Video', '肝胆外科', '18', '');
INSERT INTO `oa_system_tag` VALUES ('19', '12', 'Video', '器官移植', '19', '');
INSERT INTO `oa_system_tag` VALUES ('20', '12', 'Video', '心血管外科', '20', '');
INSERT INTO `oa_system_tag` VALUES ('21', '12', 'Video', '显微外科', '21', '');
INSERT INTO `oa_system_tag` VALUES ('22', '12', 'Video', '胸外科', '22', '');
INSERT INTO `oa_system_tag` VALUES ('23', '12', 'Video', '泌尿生殖', '23', '');
INSERT INTO `oa_system_tag` VALUES ('24', '12', 'Video', '神经外科', '24', '');
INSERT INTO `oa_system_tag` VALUES ('25', '12', 'Video', '烧伤外科', '25', '');
INSERT INTO `oa_system_tag` VALUES ('26', '13', 'Video', '普通内科', '26', '');
INSERT INTO `oa_system_tag` VALUES ('27', '13', 'Video', '心血管内科', '27', '');
INSERT INTO `oa_system_tag` VALUES ('28', '13', 'Video', '呼吸内科', '28', '');
INSERT INTO `oa_system_tag` VALUES ('29', '13', 'Video', '消化内科', '29', '');
INSERT INTO `oa_system_tag` VALUES ('30', '13', 'Video', '肾内科', '30', '');
INSERT INTO `oa_system_tag` VALUES ('31', '13', 'Video', '血液科', '31', '');
INSERT INTO `oa_system_tag` VALUES ('32', '13', 'Video', '神经内科', '32', '');
INSERT INTO `oa_system_tag` VALUES ('33', '13', 'Video', '心理、精神科', '33', '');
INSERT INTO `oa_system_tag` VALUES ('34', '13', 'Video', '内分泌科', '34', '');
INSERT INTO `oa_system_tag` VALUES ('35', '13', 'Video', '感染传染', '35', '');
INSERT INTO `oa_system_tag` VALUES ('36', '16', 'Video', '妇产科', '36', '');
INSERT INTO `oa_system_tag` VALUES ('37', '16', 'Video', '儿科', '37', '');
INSERT INTO `oa_system_tag` VALUES ('38', '16', 'Video', '口腔科', '38', '');
INSERT INTO `oa_system_tag` VALUES ('39', '16', 'Video', '骨科', '39', '');
INSERT INTO `oa_system_tag` VALUES ('40', '16', 'Video', '皮肤病与性病科', '40', '');
INSERT INTO `oa_system_tag` VALUES ('41', '16', 'Video', '眼科', '41', '');
INSERT INTO `oa_system_tag` VALUES ('42', '16', 'Video', '耳鼻咽喉科', '42', '');
INSERT INTO `oa_system_tag` VALUES ('43', '16', 'Video', '肿瘤及核医学', '43', '');
INSERT INTO `oa_system_tag` VALUES ('44', '16', 'Video', '中医及中西医结合', '44', '');
INSERT INTO `oa_system_tag` VALUES ('45', '16', 'Video', '麻醉科', '45', '');
INSERT INTO `oa_system_tag` VALUES ('46', '16', 'Video', '美容整形', '46', '');
INSERT INTO `oa_system_tag` VALUES ('47', '17', 'Video', '门、急诊，ICU', '47', '');
INSERT INTO `oa_system_tag` VALUES ('48', '17', 'Video', '医学影像', '48', '');
INSERT INTO `oa_system_tag` VALUES ('49', '17', 'Video', '护理', '49', '');
INSERT INTO `oa_system_tag` VALUES ('50', '17', 'Video', '检验科', '50', '');
INSERT INTO `oa_system_tag` VALUES ('51', '17', 'Video', '康复理疗科', '51', '');
INSERT INTO `oa_system_tag` VALUES ('52', '17', 'Video', '药剂科', '52', '');
INSERT INTO `oa_system_tag` VALUES ('53', '17', 'Video', '信息科', '53', '');
INSERT INTO `oa_system_tag` VALUES ('54', '17', 'Video', '医院管理', '54', '');
INSERT INTO `oa_system_tag` VALUES ('55', '17', 'Video', '基础教学', '55', '');
INSERT INTO `oa_system_tag` VALUES ('56', '17', 'Video', '其他', '56', '');
INSERT INTO `oa_system_tag` VALUES ('57', '0', 'Customer', '123', '', '');
INSERT INTO `oa_system_tag` VALUES ('58', '0', 'Supplier', '123', '', '');
INSERT INTO `oa_system_tag` VALUES ('59', '0', 'Doc', '123123', '123123', '');
INSERT INTO `oa_system_tag` VALUES ('60', '0', 'Doc', '123123', '', '');
INSERT INTO `oa_system_tag` VALUES ('61', '0', 'Doc', 'abc', '', '');
INSERT INTO `oa_system_tag` VALUES ('62', '0', 'Customer', '2345', '', '');
INSERT INTO `oa_system_tag` VALUES ('63', '0', 'Customer', 'qqqqqq', '', '');
INSERT INTO `oa_system_tag` VALUES ('64', '0', 'Customer', '22222', '', '');
INSERT INTO `oa_system_tag` VALUES ('65', '0', 'Customer', '22222', '', '');
INSERT INTO `oa_system_tag` VALUES ('66', '0', 'Flow', '人事', '', '');
INSERT INTO `oa_system_tag` VALUES ('67', '0', 'Flow', 'IT', '', '');
INSERT INTO `oa_system_tag` VALUES ('68', '0', 'Flow', '公告', '', '');
INSERT INTO `oa_system_tag` VALUES ('69', '0', 'FlowType', '人事', '1', '');
INSERT INTO `oa_system_tag` VALUES ('70', '0', 'FlowType', '行政', '2', '');
INSERT INTO `oa_system_tag` VALUES ('71', '0', 'FlowType', '采购', '3', '');
INSERT INTO `oa_system_tag` VALUES ('72', '0', 'FlowType', '出差', '4', '');
INSERT INTO `oa_system_tag` VALUES ('74', '75', 'ProductType', '红色', '', '');
INSERT INTO `oa_system_tag` VALUES ('75', '0', 'ProductType', '颜色', '', '');
INSERT INTO `oa_system_tag` VALUES ('76', '75', 'ProductType', '蓝色', '', '');
INSERT INTO `oa_system_tag` VALUES ('77', '0', 'ProductType', '面料', '', '');
INSERT INTO `oa_system_tag` VALUES ('78', '77', 'ProductType', 'A', '', '');
INSERT INTO `oa_system_tag` VALUES ('79', '77', 'ProductType', 'B', '', '');
INSERT INTO `oa_system_tag` VALUES ('80', '0', 'FlowType', '车辆管理', '5', '');

-- ----------------------------
-- Table structure for oa_system_tag_data
-- ----------------------------
DROP TABLE IF EXISTS `oa_system_tag_data`;
CREATE TABLE `oa_system_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_system_tag_data
-- ----------------------------
INSERT INTO `oa_system_tag_data` VALUES ('18', '58', 'Supplier');
INSERT INTO `oa_system_tag_data` VALUES ('29', '14', 'Video');
INSERT INTO `oa_system_tag_data` VALUES ('18', '57', 'Customer');
INSERT INTO `oa_system_tag_data` VALUES ('29', '46', 'Video');
INSERT INTO `oa_system_tag_data` VALUES ('30', '46', 'Video');
INSERT INTO `oa_system_tag_data` VALUES ('30', '47', 'Video');
INSERT INTO `oa_system_tag_data` VALUES ('30', '56', 'Video');
INSERT INTO `oa_system_tag_data` VALUES ('64', '59', 'Doc');
INSERT INTO `oa_system_tag_data` VALUES ('64', '60', 'Doc');
INSERT INTO `oa_system_tag_data` VALUES ('64', '61', 'Doc');
INSERT INTO `oa_system_tag_data` VALUES ('65', '61', 'Doc');
INSERT INTO `oa_system_tag_data` VALUES ('33', '14', 'Video');
INSERT INTO `oa_system_tag_data` VALUES ('18', '62', 'Customer');
INSERT INTO `oa_system_tag_data` VALUES ('17', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('18', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('19', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('20', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('21', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('22', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('23', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('17', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('18', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('19', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('20', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('21', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('22', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('23', '66', 'Flow');
INSERT INTO `oa_system_tag_data` VALUES ('17', '70', 'FlowType');
INSERT INTO `oa_system_tag_data` VALUES ('23', '72', 'FlowType');
INSERT INTO `oa_system_tag_data` VALUES ('22', '72', 'FlowType');
INSERT INTO `oa_system_tag_data` VALUES ('21', '72', 'FlowType');
INSERT INTO `oa_system_tag_data` VALUES ('20', '72', 'FlowType');
INSERT INTO `oa_system_tag_data` VALUES ('19', '71', 'FlowType');
INSERT INTO `oa_system_tag_data` VALUES ('18', '71', 'FlowType');
INSERT INTO `oa_system_tag_data` VALUES ('24', '70', 'FlowType');

-- ----------------------------
-- Table structure for oa_task
-- ----------------------------
DROP TABLE IF EXISTS `oa_task`;
CREATE TABLE `oa_task` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `task_no` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `executor` varchar(200) DEFAULT NULL,
  `add_file` varchar(255) DEFAULT NULL,
  `expected_time` datetime DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `update_user_id` int(11) DEFAULT NULL,
  `update_user_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_task
-- ----------------------------

-- ----------------------------
-- Table structure for oa_task_detail
-- ----------------------------
DROP TABLE IF EXISTS `oa_task_detail`;
CREATE TABLE `oa_task_detail` (
  `taskid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `appoint` int(4) unsigned NOT NULL DEFAULT '0',
  `finishstatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `plantime` int(10) unsigned NOT NULL DEFAULT '0',
  `realitytime` int(10) unsigned NOT NULL DEFAULT '0',
  `bestresult` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`taskid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_task_detail
-- ----------------------------

-- ----------------------------
-- Table structure for oa_task_log
-- ----------------------------
DROP TABLE IF EXISTS `oa_task_log`;
CREATE TABLE `oa_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `assigner` int(11) DEFAULT NULL COMMENT '分配任务的人',
  `executor` varchar(20) DEFAULT NULL,
  `executor_name` varchar(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `plan_time` datetime DEFAULT NULL,
  `transactor_name` varchar(20) DEFAULT NULL,
  `transactor` int(11) DEFAULT NULL COMMENT '由谁处理的',
  `finish_rate` tinyint(3) DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `feed_back` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_task_log
-- ----------------------------
INSERT INTO `oa_task_log` VALUES ('162', '162', '1', '1', '1', '企业', '2', '2014-11-28 04:30:00', '管理员', '1', '100', '2014-12-22 22:28:30', 'CCCCCCCCCCCCC');
INSERT INTO `oa_task_log` VALUES ('163', '162', '2', '1', '42', '总监2001', '0', null, null, null, null, '1901-01-06 09:20:00', null);
INSERT INTO `oa_task_log` VALUES ('164', '163', '1', '1', '1', '企业', '4', '0000-00-00 00:00:00', '管理员', '1', '0', '1901-01-06 09:20:00', '啊手动阀手动阀');
INSERT INTO `oa_task_log` VALUES ('165', '163', '2', '1', '42', '总监2001', '2', '1901-01-06 09:20:00', '总监2001', '42', '0', '1901-01-06 09:20:00', '<p>\r\n	feed_back<span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span>_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span><span>_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span><span>_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span><span>feed_back</span></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>');
INSERT INTO `oa_task_log` VALUES ('166', '163', '2', '1', '44', '总经理1001', '0', null, null, null, null, null, null);
INSERT INTO `oa_task_log` VALUES ('175', '162', '2', '1', '44', '总经理1001', '0', null, null, null, null, null, null);
INSERT INTO `oa_task_log` VALUES ('176', '164', null, null, '1', '管理员', '1', null, '管理员', '1', null, null, null);
INSERT INTO `oa_task_log` VALUES ('182', '165', null, null, '1', '管理员', '1', null, '管理员', '1', null, null, null);
INSERT INTO `oa_task_log` VALUES ('183', '166', '1', '1', '42', '总监2001', '0', null, null, null, null, null, null);
INSERT INTO `oa_task_log` VALUES ('184', '167', '1', '1', '42', '总监2001', '0', null, null, null, null, null, null);
INSERT INTO `oa_task_log` VALUES ('185', '173', '1', '1', '42', '总监2001', '0', null, null, null, null, null, null);
INSERT INTO `oa_task_log` VALUES ('186', '176', '1', '1', '42', '总监2001', '0', null, null, null, null, null, null);
INSERT INTO `oa_task_log` VALUES ('187', '194', '1', '1', '42', '总监2001', '0', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for oa_todo
-- ----------------------------
DROP TABLE IF EXISTS `oa_todo`;
CREATE TABLE `oa_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_todo
-- ----------------------------

-- ----------------------------
-- Table structure for oa_udf_expense
-- ----------------------------
DROP TABLE IF EXISTS `oa_udf_expense`;
CREATE TABLE `oa_udf_expense` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(20) NOT NULL DEFAULT '',
  `B` varchar(20) DEFAULT '',
  `C` varchar(20) DEFAULT '',
  `D` varchar(20) DEFAULT '',
  `E` varchar(20) DEFAULT '',
  `F` varchar(20) DEFAULT '',
  `G` varchar(20) DEFAULT '',
  `H` varchar(20) DEFAULT '',
  `I` varchar(20) DEFAULT '',
  `J` varchar(20) DEFAULT '',
  `K` varchar(20) DEFAULT '',
  `L` varchar(20) DEFAULT '',
  `M` varchar(20) DEFAULT '',
  `N` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_udf_expense
-- ----------------------------
INSERT INTO `oa_udf_expense` VALUES ('152', '1003', '201310', '张三', '业招待费', '1500', '500', '5', '', '', '', '', '', '', '');
INSERT INTO `oa_udf_expense` VALUES ('153', '1003', '201310', '张三', '通行费', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_udf_expense` VALUES ('154', '1003', '201310', '张三', '交通费', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oa_udf_expense` VALUES ('155', '1003', '201310', '李四', '业招待费', '1500', '500', '5', '', '', '', '', '', '', '');
INSERT INTO `oa_udf_expense` VALUES ('157', '1003', '201310', '李四', '交通费', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for oa_udf_field
-- ----------------------------
DROP TABLE IF EXISTS `oa_udf_field`;
CREATE TABLE `oa_udf_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `row_type` int(11) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `msg` varchar(50) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `control_layout` varchar(255) DEFAULT NULL,
  `control_data` varchar(255) DEFAULT NULL,
  `validate` varchar(20) DEFAULT NULL,
  `controller` varchar(20) DEFAULT NULL,
  `is_del` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_udf_field
-- ----------------------------
INSERT INTO `oa_udf_field` VALUES ('56', 'A11', '1', '', '', 'text', '3', '', '', 'Flow', '0');
INSERT INTO `oa_udf_field` VALUES ('57', 'A2', '1', '', '', 'select', '4', '', '', 'Flow', '0');
INSERT INTO `oa_udf_field` VALUES ('58', '呵 3 ', '1', '', '', 'select', '1', '', '', 'Flow', '0');
INSERT INTO `oa_udf_field` VALUES ('59', 'A1', '33', '', '', 'text', '1', '', '', 'Flow', '0');

-- ----------------------------
-- Table structure for oa_udf_field_data
-- ----------------------------
DROP TABLE IF EXISTS `oa_udf_field_data`;
CREATE TABLE `oa_udf_field_data` (
  `row_id` int(11) NOT NULL,
  `field_id` varchar(50) NOT NULL,
  `val` varchar(50) DEFAULT NULL,
  `controller` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_udf_field_data
-- ----------------------------
INSERT INTO `oa_udf_field_data` VALUES ('0', '59', 'A1', 'Flow');
INSERT INTO `oa_udf_field_data` VALUES ('0', '59', 'A2', 'Flow');
INSERT INTO `oa_udf_field_data` VALUES ('0', '59', 'A3', 'Flow');
INSERT INTO `oa_udf_field_data` VALUES ('242', '59', 'A4', 'Flow');
INSERT INTO `oa_udf_field_data` VALUES ('243', '59', 'a6', 'Flow');

-- ----------------------------
-- Table structure for oa_udf_salary
-- ----------------------------
DROP TABLE IF EXISTS `oa_udf_salary`;
CREATE TABLE `oa_udf_salary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(20) NOT NULL DEFAULT '',
  `B` varchar(20) DEFAULT '',
  `C` varchar(20) DEFAULT '',
  `D` varchar(20) DEFAULT '',
  `E` varchar(20) DEFAULT '',
  `F` varchar(20) DEFAULT '',
  `G` varchar(20) DEFAULT '',
  `H` varchar(20) DEFAULT '',
  `I` varchar(20) DEFAULT '',
  `J` varchar(20) DEFAULT '',
  `K` varchar(20) DEFAULT '',
  `L` varchar(20) DEFAULT '',
  `M` varchar(20) DEFAULT '',
  `N` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_udf_salary
-- ----------------------------
INSERT INTO `oa_udf_salary` VALUES ('120', '1001', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('121', '1002', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('122', '1003', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('123', '1004', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('124', '1005', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('125', '1006', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('126', '1007', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('127', '1008', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('128', '1009', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('129', '1010', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('130', '1011', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('131', '1012', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('132', '1013', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('133', '1014', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('134', '1015', '201310', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('135', '1016', '201310', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('136', '1001', '201210', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('137', '1002', '201210', '李四', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);
INSERT INTO `oa_udf_salary` VALUES ('138', '1003', '201210', '张三', '1000', '500', null, '1500', '150', '100', '5', '50', '100', '2200', null);

-- ----------------------------
-- Table structure for oa_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL,
  `letter` varchar(10) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` int(8) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `duty` varchar(2000) NOT NULL,
  `office_tel` varchar(20) NOT NULL,
  `mobile_tel` varchar(20) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `westatus` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`emp_no`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES ('1', 'admin', '管理员', 'GLY', '21232f297a57a5a743894a0e4a801fc3', '1', '1', '2', 'male', '2013-09-18', '0.0.0.0', '2841', 'emp_pic/1.jpeg', '1838283393@qq.com', '1231254123123', '5086-2222-2222', '12123123', '1222907803', '1451975357', '0', '1231512315123', '1');
INSERT INTO `oa_user` VALUES ('41', '2002', '总监2002', 'ZJ', '4ba29b9f9e5732ed33761840f4ba6c53', '6', '3', '1', 'male', '2013-10-30', '0.0.0.0', null, '', '', '行政，财务', '', '', '1376896154', '1407565312', '1', null, '1');
INSERT INTO `oa_user` VALUES ('42', '2001', '总监2001', 'ZJ', 'd0fb963ff976f9c37fc81fe03c21ea7b', '8', '3', '1', 'male', '2013-10-10', '127.0.0.1', null, 'emp_pic/42.jpeg', '1838283393@qq.com', '开发', '123', '12312312', '1380970837', '1401287019', '0', '12312541231251243123', '1');
INSERT INTO `oa_user` VALUES ('43', '2003', '总监2003', 'ZJ', 'a591024321c5e2bdbd23ed35f0574dde', '7', '3', '1', 'male', '0000-00-00', '127.0.0.1', null, 'emp_pic/43.jpeg', '', '销售', '', '', '1381035116', '1401287063', '0', null, '1');
INSERT INTO `oa_user` VALUES ('44', '1001', '总经理1001', 'ZJL', 'b8c37e33defde51cf91e1e03e51657da', '1', '5', '5', 'male', '0000-00-00', '127.0.0.1', null, '', '', '全面管理', '', '', '1381502796', '1401288611', '0', null, '1');
INSERT INTO `oa_user` VALUES ('48', '1003', '副总1003', 'FZ', 'aa68c75c4a77c87f97fb686b2f068676', '6', '4', '1', 'female', '0000-00-00', '0.0.0.0', null, '', '', '销售，运营', '', '', '1381503490', '1401286413', '0', null, '1');
INSERT INTO `oa_user` VALUES ('49', '3001', '经理3001', 'JL', '908c9a564a86426585b29f5335b619bc', '24', '2', '2', 'male', '2013-10-10', '14.104.59.86', null, '', '', '财务', '123', '12312312', '1391694170', '1401287097', '0', null, '1');
INSERT INTO `oa_user` VALUES ('50', '3002', '经理3002', 'JL', 'd806ca13ca3449af72a1ea5aedbed26a', '23', '2', '2', 'male', '2013-10-10', '124.127.209.138', null, '', '', '人事', '123', '12312312', '1391694193', '1401287121', '0', null, null);
INSERT INTO `oa_user` VALUES ('51', '3003', '经理3003', 'JL', 'a4380923dd651c195b1631af7c829187', '25', '2', '2', 'male', '2013-10-10', '127.0.0.1', null, '', '', '销售-南方区域', '123', '12312312', '1391694198', '1401287147', '0', null, null);
INSERT INTO `oa_user` VALUES ('52', '3004', '经理3004', 'JL', '20479c788fb27378c2c99eadcf207e7f', '26', '2', '2', 'male', '2013-10-10', null, null, '', '', '新产品研发', '123', '12312312', '1391694202', '1401287170', '0', null, null);
INSERT INTO `oa_user` VALUES ('55', '5001', '员工5001', 'YG', '03b264c595403666634ac75d828439bc', '24', '1', '3', 'male', '2013-10-10', '121.10.236.201', null, '', '', '会计', '123', '12312312', '1391694320', '1401287296', '0', null, null);
INSERT INTO `oa_user` VALUES ('56', '5007', '员工5007', 'YG', '351869bde8b9d6ad1e3090bd173f600d', '26', '1', '3', 'male', '2013-10-10', null, null, '', '', '程序员3', '123', '12312312', '1391694335', '1401287430', '0', null, null);
INSERT INTO `oa_user` VALUES ('57', '5002', '员工5002', 'YG', '415585bd389b69659223807d77a96791', '24', '1', '3', 'male', '2013-10-10', null, null, '', '', '出纳', '123', '12312312', '1391694413', '1401287322', '0', null, null);
INSERT INTO `oa_user` VALUES ('58', '5003', '员工5003', 'YG', '240ac9371ec2671ae99847c3ae2e6384', '23', '1', '3', 'male', '2013-10-10', '127.0.0.1', null, '', '', '招聘，薪资管理', '123', '12312312', '1391694420', '1401287339', '0', null, null);
INSERT INTO `oa_user` VALUES ('59', '5004', '员工5004', 'YG', '3202111cf90e7c816a472aaceb72b0df', '23', '1', '3', 'male', '2013-10-10', '127.0.0.1', null, '', '', '负责公司日常采购', '123', '12312312', '1391694427', '1401287371', '0', null, null);
INSERT INTO `oa_user` VALUES ('60', '5005', '员工5005', 'YG', '1d6408264d31d453d556c60fe7d0459e', '25', '1', '3', 'male', '2013-10-10', '127.0.0.1', null, '', '', '程序员1', '123', '12312312', '1391694435', '1401287390', '0', null, null);
INSERT INTO `oa_user` VALUES ('61', '5006', '员工5006', 'YG', '2c27a260f16ad3098393cc529f391f4a', '25', '1', '3', 'male', '2013-10-10', '127.0.0.1', null, '', '', '程序员2', '123', '12312312', '1391694478', '1401287410', '0', null, null);
INSERT INTO `oa_user` VALUES ('62', '5008', '员工5008', 'YG', 'b3848d61bbbc6207c6668a8a9e2730ed', '26', '1', '3', 'male', '2013-10-10', '127.0.0.1', null, '', '', '网站编辑，SEO', '123', '12312312', '1391694489', '1401287450', '0', null, null);
INSERT INTO `oa_user` VALUES ('65', 'test1', 'test1', 'TEST', 'db03fa33c1e2ca35794adbb14aebb153', '7', '5', '1', 'male', '2014-05-07', '0.0.0.0', null, '', '', '', '', '', '1399618939', '0', '0', null, '0');
INSERT INTO `oa_user` VALUES ('66', 'test2', 'test2', 'TEST', '261d684f6b7d9af996a5691e7106075e', '2', '2', '2', 'male', '2014-05-09', '0.0.0.0', null, '', '', '', '', '', '1399618964', '0', '0', null, '0');
INSERT INTO `oa_user` VALUES ('67', '123456', '员工123456', 'YG', 'e10adc3949ba59abbe56e057f20f883e', '5', '4', '1', 'male', '0000-00-00', '0.0.0.0', null, '', 'hongweichen8888@163.com', '', '', '', '1399712207', '1452670838', '0', null, '0');

-- ----------------------------
-- Table structure for oa_user_config
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_config`;
CREATE TABLE `oa_user_config` (
  `id` int(11) NOT NULL DEFAULT '0',
  `home_sort` varchar(255) DEFAULT NULL,
  `list_rows` int(11) DEFAULT '20',
  `readed_notice` text,
  `push_web` varchar(255) DEFAULT NULL,
  `push_wechat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_config
-- ----------------------------
INSERT INTO `oa_user_config` VALUES ('1', 'undefined,11,12,22,|undefined,14,14,24,21,23,13,', '12', '54,55,56,57,58', null, null);
INSERT INTO `oa_user_config` VALUES ('49', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('50', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('51', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('52', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('53', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('54', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('55', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('56', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('57', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('58', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('59', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('60', 'undefined,22,13,23,|undefined,12,21,11,', '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('61', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('62', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('63', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('64', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('65', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('66', '11,12,13,|21,22,23,', '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('67', null, '20', '54,55,56', null, null);
INSERT INTO `oa_user_config` VALUES ('68', null, '20', '54,55,56', null, null);

-- ----------------------------
-- Table structure for oa_user_folder
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_folder`;
CREATE TABLE `oa_user_folder` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_folder
-- ----------------------------
INSERT INTO `oa_user_folder` VALUES ('31', '0', 'MailFolder', '1', '自定义文件夹1', '', '0', '');
INSERT INTO `oa_user_folder` VALUES ('32', '0', 'MailFolder', '1', '自定义文件夹1', '', '0', '');
INSERT INTO `oa_user_folder` VALUES ('33', '0', 'MailFolder', '1', '自定义文件夹2', '', '0', '');

-- ----------------------------
-- Table structure for oa_user_info_base
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_info_base`;
CREATE TABLE `oa_user_info_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xing_ming` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `xing_bie` varchar(10) DEFAULT NULL,
  `min_zu` varchar(10) DEFAULT NULL,
  `sheng_ri` date DEFAULT NULL,
  `jian_kang` varchar(20) DEFAULT NULL,
  `guan_ji` varchar(50) DEFAULT NULL,
  `zheng_zhi` varchar(20) DEFAULT NULL,
  `xue_li` varchar(20) DEFAULT NULL,
  `zhuan_ye` varchar(20) DEFAULT NULL,
  `xue_xiao` varchar(20) DEFAULT NULL,
  `can_jia` date DEFAULT NULL,
  `zhi_wu` varchar(20) DEFAULT NULL,
  `zhu_zhi` varchar(50) DEFAULT NULL,
  `shen_fen` varchar(20) DEFAULT NULL,
  `dian_hua` varchar(20) DEFAULT NULL,
  `zi_ge` varchar(20) DEFAULT NULL,
  `zi_ge_date` date DEFAULT NULL,
  `zhi_ye` varchar(20) DEFAULT NULL,
  `zhi_ye_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `check_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_info_base
-- ----------------------------

-- ----------------------------
-- Table structure for oa_user_info_tab1
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_info_tab1`;
CREATE TABLE `oa_user_info_tab1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `zhi_cheng` varchar(20) DEFAULT NULL,
  `pi_zhun_date` date DEFAULT NULL,
  `ji_guan` varchar(20) DEFAULT NULL,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_info_tab1
-- ----------------------------

-- ----------------------------
-- Table structure for oa_user_info_tab2
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_info_tab2`;
CREATE TABLE `oa_user_info_tab2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `zheng_shu` varchar(20) DEFAULT NULL,
  `zheng_shu_date` date DEFAULT NULL,
  `bian_hao` varchar(20) DEFAULT NULL,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_info_tab2
-- ----------------------------

-- ----------------------------
-- Table structure for oa_user_info_tab3
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_info_tab3`;
CREATE TABLE `oa_user_info_tab3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `dan_wei` varchar(20) DEFAULT NULL,
  `zhi_wu` varchar(20) DEFAULT NULL,
  `shou_pin_date` date DEFAULT NULL,
  `zhuan_ye` varchar(20) DEFAULT NULL,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `is_check` tinyint(3) NOT NULL DEFAULT '0',
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_info_tab3
-- ----------------------------

-- ----------------------------
-- Table structure for oa_user_tag
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_tag`;
CREATE TABLE `oa_user_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `remark` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_tag
-- ----------------------------
INSERT INTO `oa_user_tag` VALUES ('21', '0', 'Contact', '1', '123', '', '');

-- ----------------------------
-- Table structure for oa_user_tag_data
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_tag_data`;
CREATE TABLE `oa_user_tag_data` (
  `row_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '',
  KEY `row_id` (`row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_tag_data
-- ----------------------------

-- ----------------------------
-- Table structure for oa_vip
-- ----------------------------
DROP TABLE IF EXISTS `oa_vip`;
CREATE TABLE `oa_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `english_name` varchar(20) NOT NULL DEFAULT '' COMMENT '英文名',
  `office_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `mobile_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '移动电话',
  `wechat_no` varchar(20) NOT NULL DEFAULT '' COMMENT '微信号',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `remark` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `vip_type` varchar(11) DEFAULT NULL COMMENT 'VIP类别',
  `vip_no` varchar(255) DEFAULT NULL COMMENT 'VIP卡号',
  `area` varchar(255) DEFAULT NULL COMMENT '地区',
  `active_shop` varchar(255) DEFAULT NULL COMMENT '开卡姓名',
  `active_date` date DEFAULT NULL COMMENT '开卡日期',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `paper_type` varchar(10) DEFAULT NULL COMMENT '证件类型',
  `paper_no` varchar(20) DEFAULT NULL COMMENT '证件号',
  `dressing_style` varchar(50) DEFAULT NULL,
  `wechat_vip_no` varchar(255) DEFAULT NULL COMMENT '微信VIP卡号',
  `top_size` varchar(255) DEFAULT NULL COMMENT '上衣尺寸',
  `bottom_size` varchar(255) DEFAULT NULL,
  `like_color` varchar(255) DEFAULT NULL,
  `like_shop` varchar(255) DEFAULT NULL,
  `like_brand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oa_vip
-- ----------------------------
INSERT INTO `oa_vip` VALUES ('1', '123123', '', '', '', '', '', '', '1', '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', null, '', null, null, null, null, null);
INSERT INTO `oa_vip` VALUES ('2', '222222', '', '', '', '', '', '', '1', '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '7', '', null, null, null, null, null);
INSERT INTO `oa_vip` VALUES ('3', '1231231', '', '', '', '', '', '', '1', '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', null, '', null, null, null, null, null);
INSERT INTO `oa_vip` VALUES ('4', '11111111111111111111', '', '', '', '', '', '', '1', '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '2,3', '', null, null, null, null, null);
INSERT INTO `oa_vip` VALUES ('5', '55555555555555', '', '', '', '', '', '', '1', '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '1,2', '', null, null, null, null, null);
INSERT INTO `oa_vip` VALUES ('6', '77777777', '', '', '', '', '', '', '1', '1', '', '123', '', '0000-00-00', '0000-00-00', 'male', '', '', '1,8,9,9,10', '', null, null, null, null, null);
INSERT INTO `oa_vip` VALUES ('7', '王大立', 'eNGLISH', '+86-654654-546545', '134-1253-4565', '11', '10', '', '0', '白金卡', 'VIP卡号', '地区', '开卡店铺', '0000-11-30', '0000-00-00', 'female', '身份证', '7', '休闲,性感', '微信VIP', 'XL', 'XL', '蓝色系,豹纹系', '', '');
INSERT INTO `oa_vip` VALUES ('8', '11111111111111', '', '', '2222222', '', '', '', '0', '金卡', '', '22222222222', '222222', '0000-00-00', '0000-00-00', 'male', '', '', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('9', '333333333', '', '', '333333', '', '', '', '0', '金卡', '', '3', '33333333333333333', '0000-00-00', '0000-00-00', 'male', '', '', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('10', '444444444444444', '', '', '4444444444444444', '', '', '', '0', '金卡', '4444444444', '444444444444444444', '444444', '0000-00-00', '0000-00-00', 'male', '', '', null, '44444', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('11', '5555555555', '', '', '55555555555555555', '', '', '', '1', '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '55555555', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('12', '66666666', '', '', '6666666666666666', '', '', '', '1', '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '6666666666', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('13', '777777', '', '', '777777777777777', '', '', '', '1', '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '77777777777777777777', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('14', '88888888', '', '', '88888888888888', '', '', '', '1', '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('15', '9999999', '', '', '999999999999999', '', '', '', '1', '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '', '', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('16', '1212121212', '', '', '1212121212', '', '', '', '0', '金卡', '', '北京', '百盛', '0000-00-00', '0000-00-00', 'male', '身份证', '', null, '', null, null, null, '', '');
INSERT INTO `oa_vip` VALUES ('17', '1313131313131313', '', '', '13131313131131313', '', '', '', '1', '金卡', '', '', '', '0000-00-00', '0000-00-00', 'male', '身份证', '123', null, '', null, null, null, '', '');

-- ----------------------------
-- Table structure for oa_vip_sales
-- ----------------------------
DROP TABLE IF EXISTS `oa_vip_sales`;
CREATE TABLE `oa_vip_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_id` int(11) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `qty` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `point` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_vip_sales
-- ----------------------------
INSERT INTO `oa_vip_sales` VALUES ('1', '16', '123123', '1900-12-31', 'XL', '2', '3', '400', '100');
INSERT INTO `oa_vip_sales` VALUES ('2', '16', '1', '2014-05-05', 'XXL', '4', '4', '654789', '-20');
INSERT INTO `oa_vip_sales` VALUES ('3', '14', 'Djfjcjdhdhh', '2014-04-29', 'L,XS', '18', '12', '33', '33');
INSERT INTO `oa_vip_sales` VALUES ('4', '16', 'LA41pl55', '2014-04-30', 'L', '1', '', '1000', '');
INSERT INTO `oa_vip_sales` VALUES ('5', '7', 'LA41pl55', '2014-05-19', 'XL', '2', '', '2000', '2000');
INSERT INTO `oa_vip_sales` VALUES ('6', '7', '', '0000-00-00', null, '', '', '', '');

-- ----------------------------
-- Table structure for oa_weekly_report
-- ----------------------------
DROP TABLE IF EXISTS `oa_weekly_report`;
CREATE TABLE `oa_weekly_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `is_submit` tinyint(3) DEFAULT NULL,
  `add_file` text,
  `score_total` tinyint(3) DEFAULT NULL,
  `work_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_weekly_report
-- ----------------------------
INSERT INTO `oa_weekly_report` VALUES ('43', '1', '管理员', '1', '企业', '1421213978', '44', '', '0', '0', '', '0', '2014-12');
INSERT INTO `oa_weekly_report` VALUES ('44', '0', null, null, null, null, null, null, '0', '0', null, null, null);

-- ----------------------------
-- Table structure for oa_weekly_report_comment
-- ----------------------------
DROP TABLE IF EXISTS `oa_weekly_report_comment`;
CREATE TABLE `oa_weekly_report_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `reply` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_weekly_report_comment
-- ----------------------------
INSERT INTO `oa_weekly_report_comment` VALUES ('66', '43', '', 'ddddddddddddddd', '1', '管理员', '', '1', '1421220460', '1421220479', null, 'bbbbbbbbbbbbbb');
INSERT INTO `oa_weekly_report_comment` VALUES ('67', '43', '', 'AAAAAAAAAAAA', '1', '管理员', '', '0', '1421220490', '0', null, null);

-- ----------------------------
-- Table structure for oa_weekly_report_detail
-- ----------------------------
DROP TABLE IF EXISTS `oa_weekly_report_detail`;
CREATE TABLE `oa_weekly_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `seq` tinyint(3) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `item` text,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `priority` varchar(10) DEFAULT NULL,
  `is_need_help` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_weekly_report_detail
-- ----------------------------
INSERT INTO `oa_weekly_report_detail` VALUES ('182', '43', null, '11', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_weekly_report_detail` VALUES ('183', '43', null, '22', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_weekly_report_detail` VALUES ('184', '43', null, '33', '|||', '|||', '|||', '1', null, null, null);
INSERT INTO `oa_weekly_report_detail` VALUES ('185', '43', null, '55', '', '', '', '2', null, '', '0');
INSERT INTO `oa_weekly_report_detail` VALUES ('186', '43', null, '66', '', '', '', '2', null, '', '0');
INSERT INTO `oa_weekly_report_detail` VALUES ('187', '43', null, '77', '', '', '', '2', null, '', '0');
INSERT INTO `oa_weekly_report_detail` VALUES ('188', '43', null, '88', '', '', '', '2', null, '', '0');
INSERT INTO `oa_weekly_report_detail` VALUES ('189', '43', null, '99', '', '', '', '2', null, '', '0');
INSERT INTO `oa_weekly_report_detail` VALUES ('190', '43', null, '00', '', '', '', '2', null, '', '0');

-- ----------------------------
-- Table structure for oa_work_log
-- ----------------------------
DROP TABLE IF EXISTS `oa_work_log`;
CREATE TABLE `oa_work_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `content` text,
  `plan` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `add_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_work_log
-- ----------------------------

-- ----------------------------
-- Table structure for oa_xmk
-- ----------------------------
DROP TABLE IF EXISTS `oa_xmk`;
CREATE TABLE `oa_xmk` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `xm_no` varchar(20) NOT NULL DEFAULT '' COMMENT '文档编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text NOT NULL COMMENT '内容',
  `folder` int(11) NOT NULL DEFAULT '0' COMMENT '文件夹',
  `add_file` varchar(200) NOT NULL DEFAULT '' COMMENT '附件',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(3) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `progress` text COMMENT '项目进展',
  `start_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_xmk
-- ----------------------------

-- ----------------------------
-- Table structure for oa_xmk_report
-- ----------------------------
DROP TABLE IF EXISTS `oa_xmk_report`;
CREATE TABLE `oa_xmk_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `add_file` varchar(200) NOT NULL,
  `is_del` tinyint(3) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `reply` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_xmk_report
-- ----------------------------
