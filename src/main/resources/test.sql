/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2018-02-24 14:28:33
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
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES ('259', 'DELETE', '/error', '102');
INSERT INTO `api` VALUES ('260', 'GET', '/error', '102');
INSERT INTO `api` VALUES ('261', 'HEAD', '/error', '102');
INSERT INTO `api` VALUES ('262', 'OPTIONS', '/error', '102');
INSERT INTO `api` VALUES ('263', 'PATCH', '/error', '102');
INSERT INTO `api` VALUES ('264', 'POST', '/error', '102');
INSERT INTO `api` VALUES ('265', 'PUT', '/error', '102');
INSERT INTO `api` VALUES ('266', 'GET', '/businessCenter/getBusinessInfo', '103');
INSERT INTO `api` VALUES ('267', 'GET', '/businessCenter/getSettlementWay', '103');
INSERT INTO `api` VALUES ('268', 'POST', '/businessCenter/setDefault', '103');
INSERT INTO `api` VALUES ('269', 'POST', '/saveBorrower/channelRegister', '104');
INSERT INTO `api` VALUES ('270', 'GET', '/saveBorrower/checkPhone', '104');
INSERT INTO `api` VALUES ('271', 'GET', '/city/getHotCity', '105');
INSERT INTO `api` VALUES ('272', 'GET', '/city/getRecentlyCity', '105');
INSERT INTO `api` VALUES ('273', 'POST', '/city/saveRecentlyCity', '105');
INSERT INTO `api` VALUES ('274', 'POST', '/collect/deleteInformationVisit', '106');
INSERT INTO `api` VALUES ('275', 'GET', '/collect/getCustomInformationVisit', '106');
INSERT INTO `api` VALUES ('276', 'POST', '/collect/insertInformationVisit', '106');
INSERT INTO `api` VALUES ('277', 'POST', '/comment/add', '107');
INSERT INTO `api` VALUES ('278', 'POST', '/comment/addCommentFavor', '107');
INSERT INTO `api` VALUES ('279', 'POST', '/comment/getCommentDetailByCommentId', '107');
INSERT INTO `api` VALUES ('280', 'POST', '/comment/postComment', '107');
INSERT INTO `api` VALUES ('281', 'GET', '/platform/cardPage', '108');
INSERT INTO `api` VALUES ('282', 'GET', '/platform/clickCount', '108');
INSERT INTO `api` VALUES ('283', 'GET', '/platform/homePage', '108');
INSERT INTO `api` VALUES ('284', 'POST', '/platform/visitCount', '108');
INSERT INTO `api` VALUES ('285', 'GET', '/distribution/balanceList', '109');
INSERT INTO `api` VALUES ('286', 'DELETE', '/favor/deleteInformationFavor', '110');
INSERT INTO `api` VALUES ('287', 'POST', '/favor/insertInformationFavor', '110');
INSERT INTO `api` VALUES ('288', 'POST', '/foot/deleteInformationVisit', '111');
INSERT INTO `api` VALUES ('289', 'GET', '/foot/getCustomInformationVisit', '111');
INSERT INTO `api` VALUES ('290', 'POST', '/foot/insertInformationVisit', '111');
INSERT INTO `api` VALUES ('291', 'GET', '/foot/selectCustomInformationVisit', '111');
INSERT INTO `api` VALUES ('292', 'GET', '/img/getVerifyCode', '112');
INSERT INTO `api` VALUES ('293', 'GET', '/information/deleteCmsDiscuss', '113');
INSERT INTO `api` VALUES ('294', 'POST', '/information/deleteInformationVisit', '113');
INSERT INTO `api` VALUES ('295', 'GET', '/information/getBbsBannar', '113');
INSERT INTO `api` VALUES ('296', 'GET', '/information/getCustomInformationVisit', '113');
INSERT INTO `api` VALUES ('297', 'GET', '/information/getDiscussList', '113');
INSERT INTO `api` VALUES ('298', 'GET', '/information/getInformationBannar', '113');
INSERT INTO `api` VALUES ('299', 'GET', '/information/getInformationBranchList', '113');
INSERT INTO `api` VALUES ('300', 'GET', '/information/getInformationList', '113');
INSERT INTO `api` VALUES ('301', 'GET', '/information/getInformationMoreList', '113');
INSERT INTO `api` VALUES ('302', 'POST', '/information/insertInformationVisit', '113');
INSERT INTO `api` VALUES ('303', 'GET', '/information/saveCmsDiscuss', '113');
INSERT INTO `api` VALUES ('304', 'GET', '/join/getIfMerchant', '114');
INSERT INTO `api` VALUES ('305', 'POST', '/join/getInformation', '114');
INSERT INTO `api` VALUES ('306', 'POST', '/join/getMerchantInfo', '114');
INSERT INTO `api` VALUES ('307', 'GET', '/join/getMode', '114');
INSERT INTO `api` VALUES ('308', 'POST', '/user/codeLogin', '115');
INSERT INTO `api` VALUES ('309', 'POST', '/user/idenAuttt', '115');
INSERT INTO `api` VALUES ('310', 'POST', '/user/login', '115');
INSERT INTO `api` VALUES ('311', 'POST', '/user/loginOut', '115');
INSERT INTO `api` VALUES ('312', 'POST', '/user/modifyPwd', '115');
INSERT INTO `api` VALUES ('313', 'POST', '/user/queryUser', '115');
INSERT INTO `api` VALUES ('314', 'POST', '/user/registerLogin', '115');
INSERT INTO `api` VALUES ('315', 'POST', '/user/resetPwd', '115');
INSERT INTO `api` VALUES ('316', 'POST', '/index/findAppDetail', '116');
INSERT INTO `api` VALUES ('317', 'GET', '/index/getActivity', '116');
INSERT INTO `api` VALUES ('318', 'GET', '/index/getBannar', '116');
INSERT INTO `api` VALUES ('319', 'GET', '/index/getBorrowAmount', '116');
INSERT INTO `api` VALUES ('320', 'GET', '/index/getBorrowRecord', '116');
INSERT INTO `api` VALUES ('321', 'GET', '/index/getCmsDesc', '116');
INSERT INTO `api` VALUES ('322', 'GET', '/index/getCommentAddress', '116');
INSERT INTO `api` VALUES ('323', 'DELETE', '/index/getHelpCenter', '116');
INSERT INTO `api` VALUES ('324', 'GET', '/index/getHelpCenter', '116');
INSERT INTO `api` VALUES ('325', 'HEAD', '/index/getHelpCenter', '116');
INSERT INTO `api` VALUES ('326', 'OPTIONS', '/index/getHelpCenter', '116');
INSERT INTO `api` VALUES ('327', 'PATCH', '/index/getHelpCenter', '116');
INSERT INTO `api` VALUES ('328', 'POST', '/index/getHelpCenter', '116');
INSERT INTO `api` VALUES ('329', 'PUT', '/index/getHelpCenter', '116');
INSERT INTO `api` VALUES ('330', 'GET', '/index/getIndexNews', '116');
INSERT INTO `api` VALUES ('331', 'POST', '/index/getIndexNewsForNum', '116');
INSERT INTO `api` VALUES ('332', 'POST', '/index/getInsurance', '116');
INSERT INTO `api` VALUES ('333', 'GET', '/index/getStarProduct', '116');
INSERT INTO `api` VALUES ('334', 'GET', '/index/getUpdateActivity', '116');
INSERT INTO `api` VALUES ('335', 'GET', '/mainpage/getLastData', '117');
INSERT INTO `api` VALUES ('336', 'GET', '/mainpage/getMainPageData', '117');
INSERT INTO `api` VALUES ('337', 'GET', '/mainpage/getTotalMainPageData', '117');
INSERT INTO `api` VALUES ('338', 'GET', '/merchant/getMerchantInformation', '118');
INSERT INTO `api` VALUES ('339', 'POST', '/personal/addApply', '119');
INSERT INTO `api` VALUES ('340', 'POST', '/personal/deleteCommet', '119');
INSERT INTO `api` VALUES ('341', 'POST', '/personal/deletePersonPostList', '119');
INSERT INTO `api` VALUES ('342', 'POST', '/personal/getApplyListCount', '119');
INSERT INTO `api` VALUES ('343', 'POST', '/personal/getApplyListPage', '119');
INSERT INTO `api` VALUES ('344', 'POST', '/personal/getBorrowInfo', '119');
INSERT INTO `api` VALUES ('345', 'POST', '/personal/getBorrowInfoList', '119');
INSERT INTO `api` VALUES ('346', 'POST', '/personal/h5headimage', '119');
INSERT INTO `api` VALUES ('347', 'POST', '/personal/h5headimage1', '119');
INSERT INTO `api` VALUES ('348', 'POST', '/personal/headimage', '119');
INSERT INTO `api` VALUES ('349', 'POST', '/personal/postList', '119');
INSERT INTO `api` VALUES ('350', 'POST', '/personal/postListComment', '119');
INSERT INTO `api` VALUES ('351', 'POST', '/personal/saveBorrowInfo', '119');
INSERT INTO `api` VALUES ('352', 'POST', '/personal/saveCustomerFeedBack', '119');
INSERT INTO `api` VALUES ('353', 'GET', '/platform/getAloneProduct', '120');
INSERT INTO `api` VALUES ('354', 'GET', '/platform/getAudit', '120');
INSERT INTO `api` VALUES ('355', 'GET', '/platform/getIndexPlatformByCity', '120');
INSERT INTO `api` VALUES ('356', 'GET', '/platform/getIsFirstClick', '120');
INSERT INTO `api` VALUES ('357', 'GET', '/platform/getPlatformDetail', '120');
INSERT INTO `api` VALUES ('358', 'GET', '/platform/getPlatformList', '120');
INSERT INTO `api` VALUES ('359', 'GET', '/platform/getPlatformSortName', '120');
INSERT INTO `api` VALUES ('360', 'GET', '/platform/getProductRecommendation', '120');
INSERT INTO `api` VALUES ('361', 'GET', '/platform/togglr', '120');
INSERT INTO `api` VALUES ('362', 'GET', '/platform/togglr1', '120');
INSERT INTO `api` VALUES ('363', 'GET', '/platform/togglr2', '120');
INSERT INTO `api` VALUES ('364', 'POST', '/post/Hadds', '121');
INSERT INTO `api` VALUES ('365', 'POST', '/post/add', '121');
INSERT INTO `api` VALUES ('366', 'POST', '/post/getCommentByPid', '121');
INSERT INTO `api` VALUES ('367', 'POST', '/post/getPost', '121');
INSERT INTO `api` VALUES ('368', 'POST', '/post/getPostDetailByPid', '121');
INSERT INTO `api` VALUES ('369', 'POST', '/post/list', '121');
INSERT INTO `api` VALUES ('370', 'GET', '/settlement/getSettlementDetail', '122');
INSERT INTO `api` VALUES ('371', 'GET', '/sms/sendSmsByImg', '123');
INSERT INTO `api` VALUES ('372', 'GET', '/sms/sendSmsEncryption', '123');
INSERT INTO `api` VALUES ('373', 'POST', '/stattc/creditRayList', '124');
INSERT INTO `api` VALUES ('374', 'POST', '/stattc/custSttList', '124');
INSERT INTO `api` VALUES ('375', 'POST', '/stattc/registerList', '124');
INSERT INTO `api` VALUES ('376', 'DELETE', '/test/edas', '125');
INSERT INTO `api` VALUES ('377', 'GET', '/test/edas', '125');
INSERT INTO `api` VALUES ('378', 'HEAD', '/test/edas', '125');
INSERT INTO `api` VALUES ('379', 'OPTIONS', '/test/edas', '125');
INSERT INTO `api` VALUES ('380', 'PATCH', '/test/edas', '125');
INSERT INTO `api` VALUES ('381', 'POST', '/test/edas', '125');
INSERT INTO `api` VALUES ('382', 'PUT', '/test/edas', '125');
INSERT INTO `api` VALUES ('383', 'GET', '/weixin/getJssdkSignature', '126');
INSERT INTO `api` VALUES ('384', 'GET', '/weixin/getLocation', '126');
INSERT INTO `api` VALUES ('385', 'GET', '/weixin/getLocationIndex', '126');
INSERT INTO `api` VALUES ('386', 'GET', '/weixin/getOpenId', '126');
INSERT INTO `api` VALUES ('387', 'GET', '/weixin/getOpenIdIndex', '126');
INSERT INTO `api` VALUES ('388', '', '', '102');
INSERT INTO `api` VALUES ('389', '', '', '103');
INSERT INTO `api` VALUES ('390', 'POST', '', '104');
INSERT INTO `api` VALUES ('391', '', '', '105');
INSERT INTO `api` VALUES ('392', '', '', '107');
INSERT INTO `api` VALUES ('393', '', '', '108');
INSERT INTO `api` VALUES ('394', '', '', '109');
INSERT INTO `api` VALUES ('395', '', '', '110');
INSERT INTO `api` VALUES ('396', '', '', '111');
INSERT INTO `api` VALUES ('397', '', '', '112');
INSERT INTO `api` VALUES ('398', '', '', '113');
INSERT INTO `api` VALUES ('399', '', '', '114');
INSERT INTO `api` VALUES ('400', '', '', '115');
INSERT INTO `api` VALUES ('401', '', '', '116');
INSERT INTO `api` VALUES ('402', '', '', '117');
INSERT INTO `api` VALUES ('403', '', '', '118');
INSERT INTO `api` VALUES ('404', '', '', '119');
INSERT INTO `api` VALUES ('405', '', '', '120');
INSERT INTO `api` VALUES ('406', 'GET', '/platform/getIndexAloneProduct', '120');
INSERT INTO `api` VALUES ('407', '', '', '121');
INSERT INTO `api` VALUES ('408', '', '', '123');
INSERT INTO `api` VALUES ('409', '', '', '124');
INSERT INTO `api` VALUES ('410', '', '', '125');
INSERT INTO `api` VALUES ('411', '', '', '126');
INSERT INTO `api` VALUES ('412', '', '', '127');
INSERT INTO `api` VALUES ('413', '', '', '128');
INSERT INTO `api` VALUES ('414', '', '', '129');
INSERT INTO `api` VALUES ('415', '', '', '130');
INSERT INTO `api` VALUES ('416', '', '', '131');
INSERT INTO `api` VALUES ('417', 'POST', '/b1/app/orderBEnd/a4/checkLoginBEnd/zxMsg.do', '127');

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
-- Table structure for `ct_casevo`
-- ----------------------------
DROP TABLE IF EXISTS `ct_casevo`;
CREATE TABLE `ct_casevo` (
  `id` int(36) NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Level` varchar(255) DEFAULT NULL,
  `stepCount` int(11) DEFAULT NULL,
  `result` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ct_casevo
-- ----------------------------
INSERT INTO `ct_casevo` VALUES ('1', '登录创建项目->获取bugId->关闭BugId->检查Bug是否关闭', 'P0', null, null);
INSERT INTO `ct_casevo` VALUES ('2', '搜索Bug', 'P0', null, null);

-- ----------------------------
-- Table structure for `ct_stepvo`
-- ----------------------------
DROP TABLE IF EXISTS `ct_stepvo`;
CREATE TABLE `ct_stepvo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `case_id` int(11) DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Level` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CheckStr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `transfer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `response` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ct_stepvo
-- ----------------------------
INSERT INTO `ct_stepvo` VALUES ('1', '1', '登录', 'P0', 'POST', 'http://www.hibug.cn/api/ebugs/member/login.do', 'email=979916060@qq.com&password=a5201314', '登录成功,$..result:1', null, null);
INSERT INTO `ct_stepvo` VALUES ('2', '1', '创建项目', 'P0', 'POST', 'http://www.hibug.cn/api/ebugs/project/create-project.do', 'project_name=VarTime', '创建成功', null, null);
INSERT INTO `ct_stepvo` VALUES ('3', '1', '创建bug', 'P0', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/save-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'bug_title=自动化创建Bug-VarTime&version_id=627&module_id=724&priority=1&handle_member_id=610&description=“VarTime<br>自动化测试步骤1<br>自动化测试步骤2”&project_id=452\r\n', '$..message:添加成功\r\n', null, null);
INSERT INTO `ct_stepvo` VALUES ('4', '1', '获取bug列表', 'P0', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'projectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\n', null, 'bug_id=$.data[0].bug_id\r\n', null);
INSERT INTO `ct_stepvo` VALUES ('5', '1', '关闭bug', 'P0', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\n', 'bug_id=${bug_id}\r\nprojectId=b6nTxnDh6HQ=\r\nbug_title=test&version_id=627&module_id=724&priority=1&handle_member_id=610&description=“自动化测试步骤1<br>自动化测试步骤2”&project_id=452\r\n', '', null, null);
INSERT INTO `ct_stepvo` VALUES ('6', '1', '检查Bug是否关闭', 'P0', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'projectId=b6nTxnDh6HQ=\r\n', '$.data[0].last_status_name:已关闭\r\n', null, null);
INSERT INTO `ct_stepvo` VALUES ('7', '2', '搜索Bug', 'P0', 'GET\r\n', 'http://www.hibug.cn/api/ebugs/project-bug/get-all-bug.do\r\n', 'projectId=b6nTxnDh6HQ=&keyword=add&priority=0&last_status=0&create_member_id=0&handle_member_id=0&module_id=0&version_id=0\r\n', '$.draw:1,$.draw>0\r\n,$.data[0].version_name:默认版本,\r\n$.data[0].create_time<VarTime', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('102', 'basic-error-controller', '44');
INSERT INTO `module` VALUES ('103', 'business-center-controller', '44');
INSERT INTO `module` VALUES ('104', 'channel-register-controller', '44');
INSERT INTO `module` VALUES ('105', 'city-controller', '44');
INSERT INTO `module` VALUES ('106', 'collect-controller', '44');
INSERT INTO `module` VALUES ('107', 'comment-controller', '44');
INSERT INTO `module` VALUES ('108', 'count-controller-two', '44');
INSERT INTO `module` VALUES ('109', 'distribution-controller', '44');
INSERT INTO `module` VALUES ('110', 'favor-controller', '44');
INSERT INTO `module` VALUES ('111', 'footprint-controller', '44');
INSERT INTO `module` VALUES ('112', 'img-controller', '44');
INSERT INTO `module` VALUES ('113', 'information-controller', '44');
INSERT INTO `module` VALUES ('114', 'join-controller', '44');
INSERT INTO `module` VALUES ('115', 'login-controller', '44');
INSERT INTO `module` VALUES ('116', 'main-index-controller', '44');
INSERT INTO `module` VALUES ('117', 'main-page-controller', '44');
INSERT INTO `module` VALUES ('118', 'merchant-key-controller', '44');
INSERT INTO `module` VALUES ('119', 'personal-controller', '44');
INSERT INTO `module` VALUES ('120', 'platform-controller', '44');
INSERT INTO `module` VALUES ('121', 'post-controller', '44');
INSERT INTO `module` VALUES ('122', 'settlement-controller', '44');
INSERT INTO `module` VALUES ('123', 'sms-controller', '44');
INSERT INTO `module` VALUES ('124', 'statistics-controller', '44');
INSERT INTO `module` VALUES ('125', 'test-controller', '44');
INSERT INTO `module` VALUES ('126', 'weixin-controller', '44');
INSERT INTO `module` VALUES ('127', 'b1-m1-orderbend', '45');
INSERT INTO `module` VALUES ('128', 'b1-m2-analysis', '45');
INSERT INTO `module` VALUES ('129', 'b1-m2-merchant', '45');
INSERT INTO `module` VALUES ('130', 'b1-m2-product', '45');
INSERT INTO `module` VALUES ('131', 'b3-m5-cms', '45');

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
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parameter
-- ----------------------------
INSERT INTO `parameter` VALUES ('1', '266', 'token', '(required)', 'header', 'string', '认证令牌');
INSERT INTO `parameter` VALUES ('2', '267', 'token', '(required)', 'header', 'string', '认证令牌');
INSERT INTO `parameter` VALUES ('3', '268', 'id', '(required)', 'query', 'integer', '结算卡主键id');
INSERT INTO `parameter` VALUES ('4', '268', 'merchant_id', '(required)', 'query', 'integer', '商户id');
INSERT INTO `parameter` VALUES ('5', '269', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('6', '269', 'cid', '(required)', 'query', 'integer', '渠道cid');
INSERT INTO `parameter` VALUES ('7', '269', 'password', '(required)', 'query', 'integer', '密码');
INSERT INTO `parameter` VALUES ('8', '269', 'validateCode', '(required)', 'query', 'integer', '短信验证码');
INSERT INTO `parameter` VALUES ('9', '272', 'token', '', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('10', '273', 'token', '', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('11', '273', 'city', '(required)', 'query', 'string', '城市名称');
INSERT INTO `parameter` VALUES ('12', '274', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('13', '274', 'idStr', '(required)', 'query', 'string', '浏览记录id串');
INSERT INTO `parameter` VALUES ('14', '274', 'visitType', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('15', '275', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('16', '275', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('17', '276', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('18', '276', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('19', '276', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('20', '277', 'commentId', '', 'query', 'integer', '评论id');
INSERT INTO `parameter` VALUES ('21', '277', 'postId', '(required)', 'query', 'integer', '论坛帖子id');
INSERT INTO `parameter` VALUES ('22', '277', 'content', '(required)', 'query', 'integer', '论坛评论内容');
INSERT INTO `parameter` VALUES ('23', '277', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('24', '278', 'informationId', '', 'query', 'integer', '帖子ID');
INSERT INTO `parameter` VALUES ('25', '278', 'commentId', '(required)', 'query', 'integer', '评论ID');
INSERT INTO `parameter` VALUES ('26', '278', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('27', '279', 'token', '', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('28', '279', 'commentId', '(required)', 'query', 'integer', '评论ID');
INSERT INTO `parameter` VALUES ('29', '280', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('30', '280', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('31', '280', 'pid', '(required)', 'query', 'integer', '帖子ID');
INSERT INTO `parameter` VALUES ('32', '285', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('33', '285', 'pageNum', '', 'query', 'integer', '分页页码');
INSERT INTO `parameter` VALUES ('34', '285', 'pageSize', '', 'query', 'integer', '每页条数');
INSERT INTO `parameter` VALUES ('35', '286', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('36', '286', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('37', '286', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('38', '287', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('39', '287', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('40', '287', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('41', '288', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('42', '288', 'idStr', '(required)', 'query', 'string', '浏览记录id串');
INSERT INTO `parameter` VALUES ('43', '288', 'visitType', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('44', '289', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('45', '289', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('46', '290', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('47', '290', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('48', '290', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('49', '291', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('50', '291', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('51', '291', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('52', '292', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('53', '302', 'visitType', '', 'query', 'integer', '浏览类型1:资讯 2：帖子');
INSERT INTO `parameter` VALUES ('54', '302', 'informationId', '', 'query', 'integer', '帖子id');
INSERT INTO `parameter` VALUES ('55', '302', 'token', '', 'query', 'integer', 'token秘钥');
INSERT INTO `parameter` VALUES ('56', '304', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('57', '305', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('58', '305', 'nickname1', '(required)', 'query', 'string', '商户昵称');
INSERT INTO `parameter` VALUES ('59', '305', 'phone', '(required)', 'query', 'string', '商户手机号');
INSERT INTO `parameter` VALUES ('60', '305', 'idCard', '(required)', 'query', 'string', '身份证号码');
INSERT INTO `parameter` VALUES ('61', '305', 'name', '(required)', 'query', 'string', '真实姓名');
INSERT INTO `parameter` VALUES ('62', '305', 'card', '(required)', 'query', 'string', '银行卡');
INSERT INTO `parameter` VALUES ('63', '305', 'bankCard', '(required)', 'query', 'string', '银行卡类型');
INSERT INTO `parameter` VALUES ('64', '305', 'mode', '(required)', 'query', 'integer', '收费方式，商户结算方式表id');
INSERT INTO `parameter` VALUES ('65', '305', 'period', '(required)', 'query', 'integer', '结算周期');
INSERT INTO `parameter` VALUES ('66', '306', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('67', '308', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('68', '308', 'code', '(required)', 'query', 'integer', '短信验证码');
INSERT INTO `parameter` VALUES ('69', '308', 'Vsign', '(required)', 'query', 'integer', '版本标志');
INSERT INTO `parameter` VALUES ('70', '308', 'channel', '(required)', 'query', 'integer', '渠道ID');
INSERT INTO `parameter` VALUES ('71', '309', 'token', '(required)', 'header', 'string', 'token');
INSERT INTO `parameter` VALUES ('72', '309', 'nickName', '(required)', 'query', 'integer', '昵称');
INSERT INTO `parameter` VALUES ('73', '309', 'name', '(required)', 'query', 'integer', '真实姓名');
INSERT INTO `parameter` VALUES ('74', '309', 'idCard', '(required)', 'query', 'integer', '身份证号');
INSERT INTO `parameter` VALUES ('75', '310', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('76', '310', 'pwd', '(required)', 'query', 'integer', '密码');
INSERT INTO `parameter` VALUES ('77', '310', 'channel', '(required)', 'query', 'integer', '渠道ID');
INSERT INTO `parameter` VALUES ('78', '311', 'token', '(required)', 'query', 'integer', 'token秘钥');
INSERT INTO `parameter` VALUES ('79', '312', 'token', '(required)', 'query', 'integer', 'token秘钥');
INSERT INTO `parameter` VALUES ('80', '312', 'oldPwd', '(required)', 'query', 'integer', '旧密码');
INSERT INTO `parameter` VALUES ('81', '312', 'newPwd', '(required)', 'query', 'integer', '新设置密码');
INSERT INTO `parameter` VALUES ('82', '313', 'token', '(required)', 'query', 'integer', 'token秘钥');
INSERT INTO `parameter` VALUES ('83', '314', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('84', '314', 'code', '(required)', 'query', 'integer', '短信验证码');
INSERT INTO `parameter` VALUES ('85', '314', 'pwd', '(required)', 'query', 'integer', '密码');
INSERT INTO `parameter` VALUES ('86', '314', 'channel', '(required)', 'query', 'integer', '渠道ID');
INSERT INTO `parameter` VALUES ('87', '314', 'source', '(required)', 'query', 'integer', '渠道来源');
INSERT INTO `parameter` VALUES ('88', '315', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('89', '315', 'code', '(required)', 'query', 'integer', '短信验证码');
INSERT INTO `parameter` VALUES ('90', '315', 'pwd', '(required)', 'query', 'integer', '新设置密码');
INSERT INTO `parameter` VALUES ('91', '316', 'versionId', '(required)', 'query', 'integer', 'Version版本1:安卓,2:IOS');
INSERT INTO `parameter` VALUES ('92', '316', 'storeNameChannel', '(required)', 'query', 'string', '渠道名称');
INSERT INTO `parameter` VALUES ('93', '321', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('94', '321', 'cmsId', '(required)', 'query', 'string', 'cmsId');
INSERT INTO `parameter` VALUES ('95', '322', 'channelId', '', 'query', 'string', '渠道名称');
INSERT INTO `parameter` VALUES ('96', '322', 'type', '(required)', 'query', 'string', '1:安卓,2:ios');
INSERT INTO `parameter` VALUES ('97', '331', 'number', '', 'query', 'string', '获取资讯数');
INSERT INTO `parameter` VALUES ('98', '332', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('99', '334', 'token', '', 'query', 'string', 'token');
INSERT INTO `parameter` VALUES ('100', '335', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('101', '336', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('102', '336', 'zhouqi', '', 'query', 'string', '天周月');
INSERT INTO `parameter` VALUES ('103', '337', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('104', '337', 'Apptoken', '', 'query', 'string', 'App用户token');
INSERT INTO `parameter` VALUES ('105', '338', 'channelId', '(required)', 'query', 'string', '商户的渠道id');
INSERT INTO `parameter` VALUES ('106', '338', 'bizData', '(required)', 'query', 'string', '商户传入的业务参数');
INSERT INTO `parameter` VALUES ('107', '339', 'token', '(required)', 'query', 'string', 'token密匙');
INSERT INTO `parameter` VALUES ('108', '339', 'productId', '', 'query', 'integer', '产品id');
INSERT INTO `parameter` VALUES ('109', '340', 'idStr', '(required)', 'query', 'string', '评论记录id串');
INSERT INTO `parameter` VALUES ('110', '341', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('111', '341', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('112', '342', 'token', '', 'query', 'string', 'token');
INSERT INTO `parameter` VALUES ('113', '343', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('114', '343', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('115', '343', 'token', '(required)', 'query', 'string', 'token密匙');
INSERT INTO `parameter` VALUES ('116', '344', 'id', '(required)', 'query', 'integer', '申请记录id');
INSERT INTO `parameter` VALUES ('117', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('118', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('119', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('120', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('121', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('122', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('123', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('124', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('125', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('126', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('127', '345', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('128', '345', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('129', '345', 'token', '(required)', 'query', 'string', '密匙');
INSERT INTO `parameter` VALUES ('130', '346', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('131', '346', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('132', '347', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('133', '347', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('134', '348', 'token', '', 'query', 'string', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('135', '348', 'url', '', 'query', 'string', '当前页');
INSERT INTO `parameter` VALUES ('136', '349', 'token', '(required)', 'header', 'string', 'token');
INSERT INTO `parameter` VALUES ('137', '349', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('138', '349', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('139', '350', 'token', '(required)', 'header', 'string', 'token');
INSERT INTO `parameter` VALUES ('140', '350', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('141', '350', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('142', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('143', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('144', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('145', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('146', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('147', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('148', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('149', '351', 'expectedAmount', '(required)', 'query', 'integer', '期望金额');
INSERT INTO `parameter` VALUES ('150', '351', 'borrowCycle', '(required)', 'query', 'integer', '借款周期(天)');
INSERT INTO `parameter` VALUES ('151', '351', 'paymentDate', '(required)', 'query', 'integer', '到账时间(小时)');
INSERT INTO `parameter` VALUES ('152', '351', 'token', '(required)', 'query', 'string', 'token密匙');
INSERT INTO `parameter` VALUES ('153', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('154', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('155', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('156', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('157', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('158', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('159', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('160', '352', 'token', '(required)', 'query', 'string', 'token密匙');
INSERT INTO `parameter` VALUES ('161', '352', 'type', '(required)', 'query', 'integer', '反馈类型');
INSERT INTO `parameter` VALUES ('162', '352', 'content', '(required)', 'query', 'string', '反馈内容');
INSERT INTO `parameter` VALUES ('163', '352', 'reservePhone', '(required)', 'query', 'integer', '预留手机号');
INSERT INTO `parameter` VALUES ('164', '355', 'city', '(required)', 'query', 'string', '城市名称');
INSERT INTO `parameter` VALUES ('165', '357', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('166', '357', 'platformId', '(required)', 'query', 'string', '产品id');
INSERT INTO `parameter` VALUES ('167', '357', 'status', '(required)', 'query', 'string', '产品类型');
INSERT INTO `parameter` VALUES ('168', '363', 'appVersion', '(required)', 'query', 'string', 'Version版本号');
INSERT INTO `parameter` VALUES ('169', '363', 'channel', '(required)', 'query', 'string', '渠道ID');
INSERT INTO `parameter` VALUES ('170', '364', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('171', '364', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('172', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('173', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('174', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('175', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('176', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('177', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('178', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('179', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('180', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('181', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('182', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('183', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('184', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('185', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('186', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('187', '365', 'title', '(required)', 'query', 'integer', '帖子标题');
INSERT INTO `parameter` VALUES ('188', '365', 'content', '(required)', 'query', 'integer', '帖子内容');
INSERT INTO `parameter` VALUES ('189', '365', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('190', '366', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('191', '366', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('192', '366', 'pid', '', 'query', 'integer', '帖子id');
INSERT INTO `parameter` VALUES ('193', '367', 'pid', '', 'query', 'integer', '帖子id');
INSERT INTO `parameter` VALUES ('194', '368', 'postId', '', 'query', 'integer', '帖子id');
INSERT INTO `parameter` VALUES ('195', '369', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('196', '369', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('197', '370', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('198', '370', 'channel', '(required)', 'query', 'string', '产品id');
INSERT INTO `parameter` VALUES ('199', '370', 'id', '(required)', 'query', 'string', '产品类型');
INSERT INTO `parameter` VALUES ('200', '371', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('201', '371', 'smsType', '(required)', 'query', 'integer', '短信类型：1.登录或注册，2.找回密码，3.借记卡绑定验证，4.信用卡绑定验证');
INSERT INTO `parameter` VALUES ('202', '371', 'imgCode', '(required)', 'query', 'integer', '发短信前图片验证码');
INSERT INTO `parameter` VALUES ('203', '371', 'reqType', '(required)', 'query', 'integer', '请求类型：1.水珠钱包，2.水珠信用卡管家');
INSERT INTO `parameter` VALUES ('204', '372', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('205', '372', 'smsType', '(required)', 'query', 'integer', '短信类型：1.登录或注册，2.找回密码，3.借记卡绑定验证，4.信用卡绑定验证');
INSERT INTO `parameter` VALUES ('206', '372', 'reqType', '(required)', 'query', 'integer', '请求类型：1.水珠钱包，2.水珠信用卡管家');
INSERT INTO `parameter` VALUES ('207', '373', 'token', '(required)', 'query', 'integer', 'token令牌');
INSERT INTO `parameter` VALUES ('208', '373', 'startDate', '(required)', 'query', 'integer', '起始日期');
INSERT INTO `parameter` VALUES ('209', '373', 'endDate', '(required)', 'query', 'integer', '结束日期');
INSERT INTO `parameter` VALUES ('210', '373', 'settleState', '(required)', 'query', 'integer', '结算类型');
INSERT INTO `parameter` VALUES ('211', '374', 'token', '(required)', 'query', 'integer', 'token令牌');
INSERT INTO `parameter` VALUES ('212', '374', 'startDate', '(required)', 'query', 'integer', '起始日期');
INSERT INTO `parameter` VALUES ('213', '374', 'endDate', '(required)', 'query', 'integer', '结束日期');
INSERT INTO `parameter` VALUES ('214', '374', 'settleState', '(required)', 'query', 'integer', '结算类型');
INSERT INTO `parameter` VALUES ('215', '375', 'token', '(required)', 'query', 'integer', 'token令牌');
INSERT INTO `parameter` VALUES ('216', '375', 'startDate', '(required)', 'query', 'integer', '起始日期');
INSERT INTO `parameter` VALUES ('217', '375', 'endDate', '(required)', 'query', 'integer', '结束日期');
INSERT INTO `parameter` VALUES ('218', '375', 'settleState', '(required)', 'query', 'integer', '结算类型');
INSERT INTO `parameter` VALUES ('219', '376', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('220', '377', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('221', '378', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('222', '379', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('223', '380', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('224', '381', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('225', '382', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('226', '267', 'token', '(required)', 'header', 'string', '认证令牌');
INSERT INTO `parameter` VALUES ('227', '268', 'id', '(required)', 'query', 'integer', '结算卡主键id');
INSERT INTO `parameter` VALUES ('228', '268', 'merchant_id', '(required)', 'query', 'integer', '商户id');
INSERT INTO `parameter` VALUES ('229', '272', 'token', '', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('230', '273', 'token', '', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('231', '273', 'city', '(required)', 'query', 'string', '城市名称');
INSERT INTO `parameter` VALUES ('232', '274', '', '(required)', '', '', '');
INSERT INTO `parameter` VALUES ('233', '274', '', '(required)', '', '', '');
INSERT INTO `parameter` VALUES ('234', '274', 'visitType', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('235', '275', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('236', '275', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('237', '276', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('238', '276', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('239', '276', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('240', '278', 'informationId', '', 'query', 'integer', '帖子ID');
INSERT INTO `parameter` VALUES ('241', '278', 'commentId', '(required)', 'query', 'integer', '评论ID');
INSERT INTO `parameter` VALUES ('242', '278', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('243', '279', 'token', '', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('244', '279', 'commentId', '(required)', 'query', 'integer', '评论ID');
INSERT INTO `parameter` VALUES ('245', '280', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('246', '280', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('247', '280', 'pid', '(required)', 'query', 'integer', '帖子ID');
INSERT INTO `parameter` VALUES ('248', '287', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('249', '287', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('250', '287', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('251', '289', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('252', '289', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('253', '290', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('254', '290', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('255', '290', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('256', '291', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('257', '291', 'visitType', '(required)', 'query', 'string', '访问类型');
INSERT INTO `parameter` VALUES ('258', '291', 'informationId', '(required)', 'query', 'string', '资讯/帖子/产品id');
INSERT INTO `parameter` VALUES ('259', '305', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('260', '305', 'nickname1', '(required)', 'query', 'string', '商户昵称');
INSERT INTO `parameter` VALUES ('261', '305', 'phone', '(required)', 'query', 'string', '商户手机号');
INSERT INTO `parameter` VALUES ('262', '305', 'idCard', '(required)', 'query', 'string', '身份证号码');
INSERT INTO `parameter` VALUES ('263', '305', 'name', '(required)', 'query', 'string', '真实姓名');
INSERT INTO `parameter` VALUES ('264', '305', 'card', '(required)', 'query', 'string', '银行卡');
INSERT INTO `parameter` VALUES ('265', '305', 'bankCard', '(required)', 'query', 'string', '银行卡类型');
INSERT INTO `parameter` VALUES ('266', '305', 'mode', '(required)', 'query', 'integer', '收费方式，商户结算方式表id');
INSERT INTO `parameter` VALUES ('267', '305', 'period', '(required)', 'query', 'integer', '结算周期');
INSERT INTO `parameter` VALUES ('268', '306', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('269', '309', 'token', '(required)', 'header', 'string', 'token');
INSERT INTO `parameter` VALUES ('270', '309', 'nickName', '(required)', 'query', 'integer', '昵称');
INSERT INTO `parameter` VALUES ('271', '309', 'name', '(required)', 'query', 'integer', '真实姓名');
INSERT INTO `parameter` VALUES ('272', '309', 'idCard', '(required)', 'query', 'integer', '身份证号');
INSERT INTO `parameter` VALUES ('273', '310', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('274', '310', 'pwd', '(required)', 'query', 'integer', '密码');
INSERT INTO `parameter` VALUES ('275', '310', 'channel', '(required)', 'query', 'integer', '渠道ID');
INSERT INTO `parameter` VALUES ('276', '311', 'token', '(required)', 'query', 'integer', 'token秘钥');
INSERT INTO `parameter` VALUES ('277', '312', 'token', '(required)', 'query', 'integer', 'token秘钥');
INSERT INTO `parameter` VALUES ('278', '312', 'oldPwd', '(required)', 'query', 'integer', '旧密码');
INSERT INTO `parameter` VALUES ('279', '312', 'newPwd', '(required)', 'query', 'integer', '新设置密码');
INSERT INTO `parameter` VALUES ('280', '313', 'token', '(required)', 'query', 'integer', 'token秘钥');
INSERT INTO `parameter` VALUES ('281', '314', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('282', '314', 'code', '(required)', 'query', 'integer', '短信验证码');
INSERT INTO `parameter` VALUES ('283', '314', 'pwd', '(required)', 'query', 'integer', '密码');
INSERT INTO `parameter` VALUES ('284', '314', 'channel', '(required)', 'query', 'integer', '渠道ID');
INSERT INTO `parameter` VALUES ('285', '314', 'source', '(required)', 'query', 'integer', '渠道来源');
INSERT INTO `parameter` VALUES ('286', '315', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('287', '315', 'code', '(required)', 'query', 'integer', '短信验证码');
INSERT INTO `parameter` VALUES ('288', '315', 'pwd', '(required)', 'query', 'integer', '新设置密码');
INSERT INTO `parameter` VALUES ('289', '321', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('290', '321', 'cmsId', '(required)', 'query', 'string', 'cmsId');
INSERT INTO `parameter` VALUES ('291', '322', 'channelId', '', 'query', 'string', '渠道名称');
INSERT INTO `parameter` VALUES ('292', '322', 'type', '(required)', 'query', 'string', '1:安卓,2:ios');
INSERT INTO `parameter` VALUES ('293', '331', 'number', '', 'query', 'string', '获取资讯数');
INSERT INTO `parameter` VALUES ('294', '332', 'token', '(required)', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('295', '334', 'token', '', 'query', 'string', 'token');
INSERT INTO `parameter` VALUES ('296', '335', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('297', '337', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('298', '337', 'Apptoken', '', 'query', 'string', 'App用户token');
INSERT INTO `parameter` VALUES ('299', '340', 'idStr', '(required)', 'query', 'string', '评论记录id串');
INSERT INTO `parameter` VALUES ('300', '341', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('301', '341', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('302', '342', 'token', '', 'query', 'string', 'token');
INSERT INTO `parameter` VALUES ('303', '343', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('304', '343', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('305', '343', 'token', '(required)', 'query', 'string', 'token密匙');
INSERT INTO `parameter` VALUES ('306', '344', 'id', '(required)', 'query', 'integer', '申请记录id');
INSERT INTO `parameter` VALUES ('307', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('308', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('309', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('310', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('311', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('312', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('313', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('314', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('315', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('316', '345', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('317', '345', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('318', '345', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('319', '345', 'token', '(required)', 'query', 'string', '密匙');
INSERT INTO `parameter` VALUES ('320', '346', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('321', '346', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('322', '347', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('323', '347', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('324', '348', 'token', '', 'query', 'string', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('325', '348', 'url', '', 'query', 'string', '当前页');
INSERT INTO `parameter` VALUES ('326', '349', 'token', '(required)', 'header', 'string', 'token');
INSERT INTO `parameter` VALUES ('327', '349', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('328', '349', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('329', '350', 'token', '(required)', 'header', 'string', 'token');
INSERT INTO `parameter` VALUES ('330', '350', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('331', '350', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('332', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('333', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('334', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('335', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('336', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('337', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('338', '351', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('339', '351', 'expectedAmount', '(required)', 'query', 'integer', '期望金额');
INSERT INTO `parameter` VALUES ('340', '351', 'borrowCycle', '(required)', 'query', 'integer', '借款周期(天)');
INSERT INTO `parameter` VALUES ('341', '351', 'paymentDate', '(required)', 'query', 'integer', '到账时间(小时)');
INSERT INTO `parameter` VALUES ('342', '351', 'token', '(required)', 'query', 'string', 'token密匙');
INSERT INTO `parameter` VALUES ('343', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('344', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('345', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('346', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('347', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('348', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('349', '352', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('350', '352', 'token', '(required)', 'query', 'string', 'token密匙');
INSERT INTO `parameter` VALUES ('351', '352', 'type', '(required)', 'query', 'integer', '反馈类型');
INSERT INTO `parameter` VALUES ('352', '352', 'content', '(required)', 'query', 'string', '反馈内容');
INSERT INTO `parameter` VALUES ('353', '352', 'reservePhone', '(required)', 'query', 'integer', '预留手机号');
INSERT INTO `parameter` VALUES ('354', '355', 'city', '(required)', 'query', 'string', '城市名称');
INSERT INTO `parameter` VALUES ('355', '357', 'token', '', 'query', 'string', '用户token');
INSERT INTO `parameter` VALUES ('356', '357', 'platformId', '(required)', 'query', 'string', '产品id');
INSERT INTO `parameter` VALUES ('357', '357', 'status', '(required)', 'query', 'string', '产品类型');
INSERT INTO `parameter` VALUES ('358', '363', 'appVersion', '(required)', 'query', 'string', 'Version版本号');
INSERT INTO `parameter` VALUES ('359', '363', 'channel', '(required)', 'query', 'string', '渠道ID');
INSERT INTO `parameter` VALUES ('360', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('361', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('362', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('363', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('364', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('365', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('366', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('367', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('368', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('369', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('370', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('371', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('372', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('373', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('374', '365', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('375', '365', 'title', '(required)', 'query', 'integer', '帖子标题');
INSERT INTO `parameter` VALUES ('376', '365', 'content', '(required)', 'query', 'integer', '帖子内容');
INSERT INTO `parameter` VALUES ('377', '365', 'token', '(required)', 'query', 'string', 'token秘钥');
INSERT INTO `parameter` VALUES ('378', '366', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('379', '366', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('380', '366', 'pid', '', 'query', 'integer', '帖子id');
INSERT INTO `parameter` VALUES ('381', '367', 'pid', '', 'query', 'integer', '帖子id');
INSERT INTO `parameter` VALUES ('382', '368', 'postId', '', 'query', 'integer', '帖子id');
INSERT INTO `parameter` VALUES ('383', '369', 'pageSize', '', 'query', 'integer', '每页多少行（默认值5）');
INSERT INTO `parameter` VALUES ('384', '369', 'pageNum', '', 'query', 'integer', '当前页');
INSERT INTO `parameter` VALUES ('385', '370', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('386', '370', 'channel', '(required)', 'query', 'string', '产品id');
INSERT INTO `parameter` VALUES ('387', '370', 'id', '(required)', 'query', 'string', '产品类型');
INSERT INTO `parameter` VALUES ('388', '372', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('389', '372', 'smsType', '(required)', 'query', 'integer', '短信类型：1.登录或注册，2.找回密码，3.借记卡绑定验证，4.信用卡绑定验证');
INSERT INTO `parameter` VALUES ('390', '372', 'reqType', '(required)', 'query', 'integer', '请求类型：1.水珠钱包，2.水珠信用卡管家');
INSERT INTO `parameter` VALUES ('391', '374', 'token', '(required)', 'query', 'integer', 'token令牌');
INSERT INTO `parameter` VALUES ('392', '374', 'startDate', '(required)', 'query', 'integer', '起始日期');
INSERT INTO `parameter` VALUES ('393', '374', 'endDate', '(required)', 'query', 'integer', '结束日期');
INSERT INTO `parameter` VALUES ('394', '374', 'settleState', '(required)', 'query', 'integer', '结算类型');
INSERT INTO `parameter` VALUES ('395', '375', 'token', '(required)', 'query', 'integer', 'token令牌');
INSERT INTO `parameter` VALUES ('396', '375', 'startDate', '(required)', 'query', 'integer', '起始日期');
INSERT INTO `parameter` VALUES ('397', '375', 'endDate', '(required)', 'query', 'integer', '结束日期');
INSERT INTO `parameter` VALUES ('398', '375', 'settleState', '(required)', 'query', 'integer', '结算类型');
INSERT INTO `parameter` VALUES ('399', '377', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('400', '378', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('401', '379', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('402', '380', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('403', '381', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('404', '382', '', '', '', '', '');
INSERT INTO `parameter` VALUES ('405', '266', 'token', '(required)', 'header', 'string', '认证令牌');
INSERT INTO `parameter` VALUES ('406', '267', 'token', '(required)', 'header', 'string', '认证令牌');
INSERT INTO `parameter` VALUES ('407', '268', 'id', '(required)', 'query', 'integer', '结算卡主键id');
INSERT INTO `parameter` VALUES ('408', '268', 'merchant_id', '(required)', 'query', 'integer', '商户id');
INSERT INTO `parameter` VALUES ('409', '269', 'phone', '(required)', 'query', 'integer', '手机号');
INSERT INTO `parameter` VALUES ('410', '269', 'cid', '(required)', 'query', 'integer', '渠道cid');
INSERT INTO `parameter` VALUES ('411', '269', 'password', '(required)', 'query', 'integer', '密码');
INSERT INTO `parameter` VALUES ('412', '269', 'validateCode', '(required)', 'query', 'integer', '短信验证码');

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
INSERT INTO `pro01_user` VALUES ('b1715426ffe511e7a63300e070315e7e', null, null, null, null, null);

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
-- Table structure for `stepvo_copy`
-- ----------------------------
DROP TABLE IF EXISTS `stepvo_copy`;
CREATE TABLE `stepvo_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Level` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CheckStr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `transfer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `response` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of stepvo_copy
-- ----------------------------
INSERT INTO `stepvo_copy` VALUES ('1', '登录', 'POST', 'http://www.hibug.cn/api/ebugs/member/login.do', 'email=979916060@qq.com&password=a5201314', 'P0', '登录成功,$..result:1', null, null);
INSERT INTO `stepvo_copy` VALUES ('2', '创建项目', 'POST', 'http://www.hibug.cn/api/ebugs/project/create-project.do', 'project_name=VarTime', 'P0', '创建成功', null, null);
INSERT INTO `stepvo_copy` VALUES ('3', '创建bug', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/save-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'bug_title=自动化创建Bug-VarTime&version_id=627&module_id=724&priority=1&handle_member_id=610&description=“VarTime<br>自动化测试步骤1<br>自动化测试步骤2”&project_id=452\r\n', 'P0', '$..message:添加成功\r\n', null, null);
INSERT INTO `stepvo_copy` VALUES ('4', '获取bug列表', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'projectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\nprojectId=b6nTxnDh6HQ=\r\n', 'P0', null, 'bug_id=$.data[0].bug_id\r\n', null);
INSERT INTO `stepvo_copy` VALUES ('5', '关闭bug', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\nhttp://www.hibug.cn/api/ebugs/project-bug/close-bug.do\r\n', 'bug_id=${bug_id}\r\nprojectId=b6nTxnDh6HQ=\r\nbug_title=test&version_id=627&module_id=724&priority=1&handle_member_id=610&description=“自动化测试步骤1<br>自动化测试步骤2”&project_id=452\r\n', 'P0', null, null, null);
INSERT INTO `stepvo_copy` VALUES ('6', '检查Bug是否关闭', 'POST', 'http://www.hibug.cn/api/ebugs/project-bug/get-my-create.do\r\n', 'projectId=b6nTxnDh6HQ=\r\n', 'P0', '$.data[0].last_status_name:已关闭\r\n', null, null);
INSERT INTO `stepvo_copy` VALUES ('7', '搜索Bug', 'GET\r\n', 'http://www.hibug.cn/api/ebugs/project-bug/get-all-bug.do\r\n', 'projectId=b6nTxnDh6HQ=&keyword=add&priority=0&last_status=0&create_member_id=0&handle_member_id=0&module_id=0&version_id=0\r\n', 'P0', null, null, null);

-- ----------------------------
-- Table structure for `suite`
-- ----------------------------
DROP TABLE IF EXISTS `suite`;
CREATE TABLE `suite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suite_url` varchar(1000) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of suite
-- ----------------------------
INSERT INTO `suite` VALUES ('44', 'http://106.14.97.38/loansupermarket-app/swagger-ui.html#!');
INSERT INTO `suite` VALUES ('45', 'http://106.14.99.159/loanapp-api-web/');

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
