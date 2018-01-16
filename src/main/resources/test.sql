/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2018-01-16 11:16:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `action`
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('1', '打开页面', 'open');
INSERT INTO `action` VALUES ('2', '建立页面对象', 'newPageObject');
INSERT INTO `action` VALUES ('3', '输入', 'sendkeys');
INSERT INTO `action` VALUES ('4', '点击', 'click');
INSERT INTO `action` VALUES ('5', '判断是否相等', 'AssertEquals');
INSERT INTO `action` VALUES ('6', '窗口最大化', 'max');

-- ----------------------------
-- Table structure for `api`
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(50) CHARACTER SET utf8 NOT NULL,
  `path` varchar(50) CHARACTER SET utf8 NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_api` (`module_id`),
  CONSTRAINT `module_api` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of api
-- ----------------------------

-- ----------------------------
-- Table structure for `attachment`
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `id` varchar(36) NOT NULL,
  `owner_id` varchar(36) NOT NULL,
  `belong_id` varchar(36) NOT NULL,
  `config_id` varchar(36) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `relative_path` varchar(512) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `attach_2_user_info` (`owner_id`),
  KEY `attach_2_config` (`config_id`),
  CONSTRAINT `attach_2_config` FOREIGN KEY (`config_id`) REFERENCES `attach_config` (`id`),
  CONSTRAINT `attach_2_user_info` FOREIGN KEY (`owner_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `attach_config`
-- ----------------------------
DROP TABLE IF EXISTS `attach_config`;
CREATE TABLE `attach_config` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attach_config
-- ----------------------------

-- ----------------------------
-- Table structure for `case`
-- ----------------------------
DROP TABLE IF EXISTS `case`;
CREATE TABLE `case` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `casename` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `modules` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of case
-- ----------------------------
INSERT INTO `case` VALUES ('1', '登录', '验证登录功能', '登录');
INSERT INTO `case` VALUES ('2', '下单', '验证下单功能', 'order');
INSERT INTO `case` VALUES ('3', '9189b9cef1be49e2f752', null, null);

-- ----------------------------
-- Table structure for `caseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `caseinfo`;
CREATE TABLE `caseinfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `caseid` int(20) DEFAULT NULL,
  `step` int(20) DEFAULT NULL,
  `pageid` int(20) DEFAULT NULL,
  `pagename` varchar(20) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `parameters` varchar(500) DEFAULT NULL,
  `returnvalue` varchar(500) DEFAULT NULL,
  `target` varchar(255) NOT NULL DEFAULT '',
  `from` varchar(255) DEFAULT NULL,
  `Assert` varchar(255) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`,`target`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caseinfo
-- ----------------------------
INSERT INTO `caseinfo` VALUES ('1', '1', '1', '1', '登录页面', '账号', 'sendkeys', 'ztest', 'soso', '88', '1', '1', '输入账号');
INSERT INTO `caseinfo` VALUES ('2', '1', '2', '1', '登录页面', '密码', 'sendkeys', '111111', 'soso', '77', '2', null, '输入密码');
INSERT INTO `caseinfo` VALUES ('3', '1', '3', '1', '登录页面', '登录', 'click', null, 'soso', '66', '3', '', '点击登录按钮');
INSERT INTO `caseinfo` VALUES ('4', '1', '5', '2', 'soso', '', 'AssertEquals', null, 'soso', '55', '4', 'AssertEquals', '判断欢迎词是否包含账号');
INSERT INTO `caseinfo` VALUES ('5', '2', '1', '2', '主页面', '邀请码', 'getAttribute', 'style', 'soso', '44', '5', null, '判断right是否大于0px');
INSERT INTO `caseinfo` VALUES ('6', '2', '2', '2', '主页面', '鼠标', 'hover', null, 'soso', '33', '6', null, null);
INSERT INTO `caseinfo` VALUES ('7', '1', '4', '2', '主页面', '欢迎词', 'gettext', null, 'soso', '22', '7', 'AssertEquals', '获取欢迎词');
INSERT INTO `caseinfo` VALUES ('8', '2', '3', '2', '主页面', '邀请码', 'getAttribute', 'style', 'soso', '11', '8', null, '判断right是否为0px');

-- ----------------------------
-- Table structure for `casevo`
-- ----------------------------
DROP TABLE IF EXISTS `casevo`;
CREATE TABLE `casevo` (
  `id` int(36) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Level` varchar(255) DEFAULT NULL,
  `stepCount` int(11) DEFAULT NULL,
  `result` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of casevo
-- ----------------------------
INSERT INTO `casevo` VALUES ('1', '111', 'P0', null, null);
INSERT INTO `casevo` VALUES ('2', '222', 'P0', null, null);
INSERT INTO `casevo` VALUES ('3', '搜索Bug', 'P0', null, null);

-- ----------------------------
-- Table structure for `case_step`
-- ----------------------------
DROP TABLE IF EXISTS `case_step`;
CREATE TABLE `case_step` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `caseid` int(255) DEFAULT NULL,
  `stepid` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of case_step
-- ----------------------------
INSERT INTO `case_step` VALUES ('1', '1', '1');
INSERT INTO `case_step` VALUES ('2', '1', '2');
INSERT INTO `case_step` VALUES ('3', '1', '3');
INSERT INTO `case_step` VALUES ('4', '1', '4');
INSERT INTO `case_step` VALUES ('5', '1', '5');
INSERT INTO `case_step` VALUES ('6', '1', '6');
INSERT INTO `case_step` VALUES ('7', '2', '7');
INSERT INTO `case_step` VALUES ('8', '5', '8');

-- ----------------------------
-- Table structure for `configvo`
-- ----------------------------
DROP TABLE IF EXISTS `configvo`;
CREATE TABLE `configvo` (
  `FilePath` varchar(255) DEFAULT NULL,
  `RunLevel` varchar(255) DEFAULT NULL,
  `tomail` varchar(255) DEFAULT NULL,
  `Environment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of configvo
-- ----------------------------

-- ----------------------------
-- Table structure for `data_source_info`
-- ----------------------------
DROP TABLE IF EXISTS `data_source_info`;
CREATE TABLE `data_source_info` (
  `id` varchar(36) NOT NULL,
  `project_id` varchar(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` longtext,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_source_info_2_project` (`project_id`),
  CONSTRAINT `data_source_info_2_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_source_info
-- ----------------------------

-- ----------------------------
-- Table structure for `element`
-- ----------------------------
DROP TABLE IF EXISTS `element`;
CREATE TABLE `element` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pageid` int(20) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `findbykey` varchar(50) DEFAULT NULL,
  `findbyvalue` varchar(50) DEFAULT NULL,
  `soso` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of element
-- ----------------------------
INSERT INTO `element` VALUES ('1', '1', '账号', 'id', 'account', null);
INSERT INTO `element` VALUES ('2', '1', '密码', 'id', 'pwd', null);
INSERT INTO `element` VALUES ('3', '1', '登录', 'xpath', '/html/body/div[2]/form/div[5]/input', null);
INSERT INTO `element` VALUES ('4', '2', '欢迎词', 'xpath', '/html/body/div[1]/ul/li[1]/a/span', null);
INSERT INTO `element` VALUES ('5', '1', '记住秘密', 'xpath', '/html/body/div[2]/form/div[4]/a', null);
INSERT INTO `element` VALUES ('6', '1', '忘记密码', 'id', 'ck_rmbUser', null);
INSERT INTO `element` VALUES ('7', '1', '免费注册', 'xpath', '/html/body/div[2]/form/div[1]/a', null);
INSERT INTO `element` VALUES ('11', '2', '2', 'xpath', '是否', null);
INSERT INTO `element` VALUES ('12', '8', '订单编号', 'id', 'orderCode', null);
INSERT INTO `element` VALUES ('13', '8', '订单状态', 'id', 'orderStatus', null);
INSERT INTO `element` VALUES ('14', '8', '下单时间', 'id', 'startTime1', null);
INSERT INTO `element` VALUES ('15', '8', '至', 'id', 'endTime1', null);
INSERT INTO `element` VALUES ('16', '8', '查询按钮', 'id', 'query', null);
INSERT INTO `element` VALUES ('17', '7', '新建账号', 'xpath', '/html/body/div[4]/div[1]/a', null);
INSERT INTO `element` VALUES ('18', '21', '新建客户', 'xpath', '/html/body/div[4]/div/div[1]/a[1]', null);
INSERT INTO `element` VALUES ('19', '21', '门店名称', 'id', 'shopName', null);
INSERT INTO `element` VALUES ('20', '21', '查询按钮', 'xpath', '/html/body/div[4]/div/form/ul/li[2]/button', null);
INSERT INTO `element` VALUES ('21', '2', '我的账户', 'xpath', '/html/body/div[3]/ul/li[1]', null);
INSERT INTO `element` VALUES ('22', '2', '采购管理', 'xpath', '/html/body/div[3]/ul/li[2]', null);
INSERT INTO `element` VALUES ('23', '2', '客户管理', 'xpath', '/html/body/div[3]/ul/li[3]', null);
INSERT INTO `element` VALUES ('24', '2', '食材管理', 'xpath', '/html/body/div[3]/ul/li[4]', null);
INSERT INTO `element` VALUES ('25', '2', '统计分析', 'xpath', '/html/body/div[3]/ul/li[5]', null);
INSERT INTO `element` VALUES ('26', '2', '客服服务', 'xpath', '/html/body/div[3]/ul/li[6]', null);
INSERT INTO `element` VALUES ('27', '2', '库存管理', 'xpath', '/html/body/div[3]/ul/li[7]', null);

-- ----------------------------
-- Table structure for `group_info`
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `id` varchar(36) NOT NULL,
  `owner_id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_info_2_user_info` (`owner_id`),
  CONSTRAINT `group_info_2_user_info` FOREIGN KEY (`owner_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_info
-- ----------------------------

-- ----------------------------
-- Table structure for `locatorvo`
-- ----------------------------
DROP TABLE IF EXISTS `locatorvo`;
CREATE TABLE `locatorvo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `timeOut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locatorvo
-- ----------------------------

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `suite_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `suite_module` (`suite_id`),
  CONSTRAINT `suite_module` FOREIGN KEY (`suite_id`) REFERENCES `suite` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of module
-- ----------------------------

-- ----------------------------
-- Table structure for `modulevo`
-- ----------------------------
DROP TABLE IF EXISTS `modulevo`;
CREATE TABLE `modulevo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Pass` int(11) DEFAULT NULL,
  `Sum` int(11) DEFAULT NULL,
  `Fail` int(11) DEFAULT NULL,
  `PassRate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fileName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `doTime` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `stepCount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `result` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modulevo
-- ----------------------------
INSERT INTO `modulevo` VALUES ('1', null, null, null, null, 'hahaha', 'sdfsdsSDfsjdlfk dskflj sdkfjsld史蒂夫卡了', null, null, null);

-- ----------------------------
-- Table structure for `module_case`
-- ----------------------------
DROP TABLE IF EXISTS `module_case`;
CREATE TABLE `module_case` (
  `moduleid` int(11) DEFAULT NULL,
  `caseid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_case
-- ----------------------------
INSERT INTO `module_case` VALUES ('1', '1');
INSERT INTO `module_case` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `options`
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` varchar(36) NOT NULL,
  `opt_key` varchar(100) NOT NULL,
  `opt_value` varchar(300) DEFAULT NULL,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `opt_key` (`opt_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of options
-- ----------------------------

-- ----------------------------
-- Table structure for `page`
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `cname` varchar(200) DEFAULT NULL,
  `ename` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('1', 'http://order.lbd99.com/scm/web/view/login.jsp', '登录页面', 'login');
INSERT INTO `page` VALUES ('2', 'http://order.lbd99.com/scm/web/view/main.jsp', '主页面', 'main');
INSERT INTO `page` VALUES ('3', 'http://order.lbd99.com/scm/view/account/userinfo.jsp', '我的信息', 'userinfo');
INSERT INTO `page` VALUES ('4', 'http://order.lbd99.com/scm/view/account/password.jsp', '修改密码', 'password');
INSERT INTO `page` VALUES ('5', 'http://order.lbd99.com/scm/companyConfig/index.do', '企业配置', 'companyConfig');
INSERT INTO `page` VALUES ('6', 'http://order.lbd99.com/scm/view/account/companyRla', '贸易伙伴管理', 'partner');
INSERT INTO `page` VALUES ('7', 'http://order.lbd99.com/scm/view/order/accountManagement.jsp', '企业账号管理', 'accountManage');
INSERT INTO `page` VALUES ('8', 'http://order.lbd99.com/scm/directOrder/initToDirectOrderList.do', '补货管理', 'initToDirectOrderList');
INSERT INTO `page` VALUES ('9', 'http://order.lbd99.com/scm/view/order/orderManagement.jsp', '订单管理', 'orderManagement');
INSERT INTO `page` VALUES ('10', 'http://order.lbd99.com/scm/view/order/orderErrorManagement.jsp', '异常订单管理', 'orderErrorManagement');
INSERT INTO `page` VALUES ('11', 'http://order.lbd99.com/scm/view/order/outOrderManagement.jsp', '仓库订单管理', 'outOrderManagement');
INSERT INTO `page` VALUES ('12', 'http://order.lbd99.com/scm/replenishment/manager.do', '订单汇总', 'replenishment');
INSERT INTO `page` VALUES ('13', 'http://order.lbd99.com/scm/view/product/product_classification.jsp', '食材分类', 'classification');
INSERT INTO `page` VALUES ('14', 'http://order.lbd99.com/scm/view/product/productList.jsp', '食材列表', 'productList');
INSERT INTO `page` VALUES ('15', 'http://order.lbd99.com/scm/ps/manager.do', '食材价格管理', 'priceManagement');
INSERT INTO `page` VALUES ('16', 'http://order.lbd99.com/scm/view/message/message.jsp', '留言', 'message');
INSERT INTO `page` VALUES ('17', 'http://order.lbd99.com/scm/productQty/indexToWm.do', '库存管理', 'indexToWm');
INSERT INTO `page` VALUES ('18', 'http://order.lbd99.com/scm/productQty/index.do', '库存查询', 'qtyQuery');
INSERT INTO `page` VALUES ('19', 'http://order.lbd99.com/scm/bussSkuScm/bussSkuInit.do', '库存日报表', 'kcrbb');
INSERT INTO `page` VALUES ('20', 'http://order.lbd99.com/scm/bussSkuScm/bussSkuWarnInit.do', '商品库存预警', 'bussSkuWarnInit');
INSERT INTO `page` VALUES ('21', 'http://order.lbd99.com/scm/view/shop/shopManagement.jsp', '客户管理', 'shopManagement');
INSERT INTO `page` VALUES ('22', 'http://order.lbd99.com/scm/view/account/accountList.jsp', '客户账户管理', 'accountList');
INSERT INTO `page` VALUES ('23', 'http://order.lbd99.com/scm/view/saleman/saleManManager.jsp', '区域负责人管理', 'saleManManager');
INSERT INTO `page` VALUES ('24', 'http://order.lbd99.com/scm/view/account/areaList.jsp', '区域管理', 'areaList');
INSERT INTO `page` VALUES ('25', 'http://order.lbd99.com/scm/view/account/brandList.jsp', '品牌管理', 'brandList');

-- ----------------------------
-- Table structure for `page_info`
-- ----------------------------
DROP TABLE IF EXISTS `page_info`;
CREATE TABLE `page_info` (
  `id` varchar(36) NOT NULL,
  `project_id` varchar(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` longtext,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `page_info_2_project` (`project_id`),
  CONSTRAINT `page_info_2_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_info
-- ----------------------------

-- ----------------------------
-- Table structure for `parameter`
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `parameter` varchar(50) CHARACTER SET utf8 NOT NULL,
  `isrequired` varchar(50) CHARACTER SET utf8 NOT NULL,
  `parametertype` varchar(50) CHARACTER SET utf8 NOT NULL,
  `datatype` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_params` (`api_id`),
  CONSTRAINT `api_params` FOREIGN KEY (`api_id`) REFERENCES `api` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parameter
-- ----------------------------

-- ----------------------------
-- Table structure for `pro01_dept`
-- ----------------------------
DROP TABLE IF EXISTS `pro01_dept`;
CREATE TABLE `pro01_dept` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pro01_dept
-- ----------------------------
INSERT INTO `pro01_dept` VALUES ('1', '技术部', '02', '0');

-- ----------------------------
-- Table structure for `pro01_user`
-- ----------------------------
DROP TABLE IF EXISTS `pro01_user`;
CREATE TABLE `pro01_user` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `telehone` varchar(255) DEFAULT NULL,
  `idCord` varchar(255) DEFAULT NULL,
  `deptId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pro01_user
-- ----------------------------

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` varchar(36) NOT NULL,
  `owner_id` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pkg_name` varchar(300) DEFAULT NULL,
  `remark` longtext,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `project_2_user_info` (`owner_id`),
  CONSTRAINT `project_2_user_info` FOREIGN KEY (`owner_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for `project_foucs`
-- ----------------------------
DROP TABLE IF EXISTS `project_foucs`;
CREATE TABLE `project_foucs` (
  `id` varchar(36) NOT NULL,
  `project_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `focus_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `project_foucs_2_project` (`project_id`),
  KEY `project_foucs_2_user_info` (`user_id`),
  CONSTRAINT `project_foucs_2_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `project_foucs_2_user_info` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_foucs
-- ----------------------------

-- ----------------------------
-- Table structure for `role_info`
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES ('1', 'test');

-- ----------------------------
-- Table structure for `stepvo`
-- ----------------------------
DROP TABLE IF EXISTS `stepvo`;
CREATE TABLE `stepvo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Level` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CheckStr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `transfer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `response` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stepvo
-- ----------------------------
INSERT INTO `stepvo` VALUES ('1', '登录', 'POST', 'http://www.hibug.cn/api/ebugs/member/login.do', 'email=979916060@qq.com&password=a5201314', 'P0', '登录成功,$..result:1', null, null);
INSERT INTO `stepvo` VALUES ('2', '创建项目', 'POST', 'http://www.hibug.cn/api/ebugs/project/create-project.do', 'project_name=VarTime', 'P0', '创建成功', null, null);
INSERT INTO `stepvo` VALUES ('3', '创建bug', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/save-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'bug_title=自动化创建Bug-VarTime&version_id=627&module_id=724&priority=1&handle_member_id=610&description=“VarTime<br>自动化测试步骤1<br>自动化测试步骤2”&project_id=452\r\n', 'P0', '$..message:添加成功\r\n', null, null);
INSERT INTO `stepvo` VALUES ('4', '获取bug列表', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'projectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\n', 'P0', null, 'bug_id=$.data[0].bug_id\r\n', null);
INSERT INTO `stepvo` VALUES ('5', '关闭bug', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\n', 'bug_id=${bug_id}\r\nprojectId=b6nTxnDh6HQ=\r\nbug_title=test&version_id=627&module_id=724&priority=1&handle_member_id=610&description=“自动化测试步骤1<br>自动化测试步骤2”&project_id=452\r\n', 'P0', null, null, null);
INSERT INTO `stepvo` VALUES ('6', '检查Bug是否关闭', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'projectId=b6nTxnDh6HQ=\r\n', 'P0', '$.data[0].last_status_name:已关闭\r\n', null, null);
INSERT INTO `stepvo` VALUES ('7', '搜索Bug', 'GET\r\n', 'http://www.hibug.cn/api/ebugs/project-bug/get-all-bug.do\r\n', 'projectId=b6nTxnDh6HQ=&keyword=add&priority=0&last_status=0&create_member_id=0&handle_member_id=0&module_id=0&version_id=0\r\n', 'P0', null, null, null);

-- ----------------------------
-- Table structure for `suite`
-- ----------------------------
DROP TABLE IF EXISTS `suite`;
CREATE TABLE `suite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suite_url` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suite
-- ----------------------------
INSERT INTO `suite` VALUES ('24', 'http://cc.beadwallet.com:8060/loansupermarket-app/swagger-ui.html#!');
INSERT INTO `suite` VALUES ('25', 'http://www.baidu.com');
INSERT INTO `suite` VALUES ('26', 'http://cc.beadwallet.com:8060/loansupermarket-app/swagger-ui.html#!');
INSERT INTO `suite` VALUES ('27', 'http://106.15.126.160:8065/loansupermarket-pay/swagger-ui.html#/');

-- ----------------------------
-- Table structure for `suite_runner_info`
-- ----------------------------
DROP TABLE IF EXISTS `suite_runner_info`;
CREATE TABLE `suite_runner_info` (
  `id` varchar(36) NOT NULL,
  `project_id` varchar(36) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` longtext,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `suite_runner_info_2_project` (`project_id`),
  CONSTRAINT `suite_runner_info_2_project` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suite_runner_info
-- ----------------------------

-- ----------------------------
-- Table structure for `suite_runner_log`
-- ----------------------------
DROP TABLE IF EXISTS `suite_runner_log`;
CREATE TABLE `suite_runner_log` (
  `id` varchar(36) NOT NULL,
  `suite_runner_info_id` varchar(36) NOT NULL,
  `trigger_user_id` varchar(36) NOT NULL,
  `message` longtext,
  `begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `suite_runner_log_2_info` (`suite_runner_info_id`),
  KEY `suite_runner_log_2_user_info` (`trigger_user_id`),
  CONSTRAINT `suite_runner_log_2_info` FOREIGN KEY (`suite_runner_info_id`) REFERENCES `suite_runner_info` (`id`),
  CONSTRAINT `suite_runner_log_2_user_info` FOREIGN KEY (`trigger_user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suite_runner_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` varchar(36) NOT NULL,
  `attach_root` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_config
-- ----------------------------

-- ----------------------------
-- Table structure for `tasks`
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tasks
-- ----------------------------

-- ----------------------------
-- Table structure for `test_plan`
-- ----------------------------
DROP TABLE IF EXISTS `test_plan`;
CREATE TABLE `test_plan` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `owner_id` varchar(36) NOT NULL,
  `suite_runner_id` varchar(36) NOT NULL,
  `cron_exp` varchar(300) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_plan_2_suite_runner` (`suite_runner_id`),
  CONSTRAINT `test_plan_2_suite_runner` FOREIGN KEY (`suite_runner_id`) REFERENCES `suite_runner_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_plan
-- ----------------------------

-- ----------------------------
-- Table structure for `tree`
-- ----------------------------
DROP TABLE IF EXISTS `tree`;
CREATE TABLE `tree` (
  `id` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tree
-- ----------------------------

-- ----------------------------
-- Table structure for `user_behavior`
-- ----------------------------
DROP TABLE IF EXISTS `user_behavior`;
CREATE TABLE `user_behavior` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `method` varchar(10) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `server_ip` varchar(20) DEFAULT NULL,
  `client_ip` varchar(20) DEFAULT NULL,
  `operating_system` varchar(20) DEFAULT NULL,
  `request_uri` varchar(200) DEFAULT NULL,
  `query_info` varchar(200) DEFAULT NULL,
  `visit_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_behavior_2_user_info` (`user_id`),
  CONSTRAINT `user_behavior_2_user_info` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_behavior
-- ----------------------------

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(36) NOT NULL,
  `nick_name` varchar(100) NOT NULL,
  `login_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `regist_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'test', '1', '1', '123@123.com', null);

-- ----------------------------
-- Table structure for `user_role_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_role_info`;
CREATE TABLE `user_role_info` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role_info_2_user` (`user_id`),
  KEY `user_role_info_2_role` (`role_id`),
  CONSTRAINT `user_role_info_2_role` FOREIGN KEY (`role_id`) REFERENCES `role_info` (`id`),
  CONSTRAINT `user_role_info_2_user` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_info
-- ----------------------------
INSERT INTO `user_role_info` VALUES ('1', '1', '1');

-- ----------------------------
-- View structure for `project_user_view`
-- ----------------------------
DROP VIEW IF EXISTS `project_user_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`mm`@`localhost` SQL SECURITY DEFINER VIEW `project_user_view` AS select `test`.`project`.`id` AS `id`,`test`.`project`.`name` AS `name`,`test`.`project`.`owner_id` AS `owner_id`,`test`.`user_info`.`nick_name` AS `userName` from (`project` left join `user_info` on((`test`.`project`.`owner_id` = `test`.`user_info`.`id`))) ;
