# Host: localhost  (Version: 5.1.62-community)
# Date: 2018-06-02 17:11:58
# Generator: MySQL-Front 5.3  (Build 3.22)

/*!40101 SET NAMES utf8 */;

DROP DATABASE IF EXISTS `qj_wukong`;
CREATE DATABASE `qj_wukong` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `qj_wukong`;

#
# Source for table "article_management"
#

DROP TABLE IF EXISTS `article_management`;
CREATE TABLE `article_management` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `u_id` int(11) NOT NULL COMMENT '发布人主键',
  `a_type` int(11) NOT NULL COMMENT '文章类型',
  `a_context` text NOT NULL COMMENT '文章内容',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  `a_status` int(11) NOT NULL COMMENT '文章状态1可用 2禁用',
  `a_title` varchar(22) NOT NULL COMMENT '文章标题',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

#
# Data for table "article_management"
#

INSERT INTO `article_management` VALUES (1,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',1,'asd'),(3,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',1,'asd3'),(4,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',2,'4'),(5,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',1,'asd632134'),(6,1,6,'内容23','2018-03-31 14:46:05',1,'标题2'),(7,1,7,'的撒的撒的大声道asdasdasd撒d','2018-03-19 14:27:58',1,'碧桃2'),(8,1,9,'云顶开业','2018-03-23 11:57:42',2,'云顶开业'),(9,1,9,'云顶交易开业','2018-03-23 11:57:57',1,'云顶交易开业'),(10,1,9,'云顶交易','2018-03-23 11:58:22',2,'云顶交易所开业'),(11,1,10,'区块链开业','2018-03-23 11:58:42',1,'区块链开业'),(12,1,10,'区块链正式开业','2018-03-23 11:59:03',1,'区块链正式开业'),(13,1,1,'区块链今天正式开业','2018-03-23 11:59:24',1,'区块链今天正式开业'),(14,1,11,'区块链是啥','2018-03-23 11:59:43',1,'什么是区块链'),(16,1,11,'这个行业是做什么的','2018-03-23 14:48:33',1,'这个是什么');

#
# Source for table "article_type"
#

DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `at_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `at_identifying` varchar(22) NOT NULL COMMENT '类型标识',
  `at_title` varchar(22) NOT NULL COMMENT '类型标题',
  `is_view` int(11) NOT NULL COMMENT '首页是否显示1显示 2不显示',
  `at_status` int(11) NOT NULL COMMENT '类型状态 1启用 2禁用',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "article_type"
#

INSERT INTO `article_type` VALUES (2,'1234','官方公告',2,2,'2018-03-17 15:41:03'),(4,'1236','帮助中心',2,2,'2018-03-26 15:41:03'),(5,'1237','行业资讯',1,2,'2018-03-26 15:41:03'),(6,'8','币种介绍',1,1,'2018-03-26 15:41:03'),(7,'1','法律声明',1,1,'2018-03-17 16:06:50'),(9,'1','网站公告',1,1,'2018-03-23 10:53:07'),(10,'2','区块链企业动态',1,1,'2018-03-23 10:53:38'),(11,'3','行业咨询',1,1,'2018-03-28 10:53:52'),(12,'123','123',1,1,'2018-03-28 22:32:02');

#
# Source for table "backups"
#

DROP TABLE IF EXISTS `backups`;
CREATE TABLE `backups` (
  `backups_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '备份id',
  `table_name` varchar(50) DEFAULT NULL COMMENT '表名',
  `data_number` int(11) DEFAULT NULL COMMENT '数据量',
  `data_size` varchar(50) DEFAULT '0PB' COMMENT '数据大小',
  `Creation_time` datetime DEFAULT NULL COMMENT '创建时间',
  `Backups_state` int(11) DEFAULT '0' COMMENT '0为未备注，1为已备注',
  PRIMARY KEY (`backups_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

#
# Data for table "backups"
#

INSERT INTO `backups` VALUES (73,'article_management',6,'0PB','2018-03-17 10:45:25',0),(74,'article_type',6,'0PB','2018-03-17 10:46:58',0),(75,'backups',2,'0PB','2018-03-19 15:04:39',0),(76,'balance_of_water',4,'0PB','2018-03-14 21:10:49',0),(77,'basic_configuration',1,'0PB','2018-03-15 11:11:32',0),(78,'blogroll',7,'0PB','2018-03-17 10:50:01',0),(79,'change_gomon',2,'0PB','2018-03-14 16:08:01',0),(80,'chat_list',4,'0PB','2018-03-17 10:50:56',0),(81,'contact_address',2,'0PB','2018-03-13 14:32:01',0),(82,'currenct_configuration',1,'0PB','2018-03-17 17:40:56',0),(83,'currency_appraise',2,'0PB','2018-03-16 11:16:43',0),(84,'customerservice_configuration',1,'0PB','2018-03-15 11:22:55',0),(85,'deal_recode',1,'0PB','2018-03-16 11:14:02',0),(86,'dividend',2,'0PB','2018-03-19 17:22:51',0),(87,'entrust_recode',3,'0PB','2018-03-16 11:10:24',0),(88,'entry_note',4,'0PB','2018-03-14 11:24:12',0),(89,'hint_text',2,'0PB','2018-03-16 20:48:20',0),(90,'lantern_slide',3,'0PB','2018-03-17 10:48:37',0),(91,'market_distribution',2,'0PB','2018-03-19 17:13:39',0),(92,'money_always_docking',7,'0PB','2018-03-20 11:06:03',0),(93,'other_configuration',1,'0PB','2018-03-15 19:41:16',0),(94,'present_configuration',1,'0PB','2018-03-15 11:05:48',0),(95,'recharge_act',2,'0PB','2018-03-14 16:12:35',0),(96,'recharge_record',5,'0PB','2018-03-14 11:27:44',0),(97,'short_messageinteface',1,'0PB','2018-03-15 11:13:49',0),(98,'stock',3,'0PB','2018-03-20 11:47:20',0),(99,'stock_configuration',0,'0PB','2018-03-20 14:31:38',0),(100,'stock_detail',2,'0PB','2018-03-20 11:50:11',0),(101,'transfer_record',2,'0PB','2018-03-13 14:24:30',0),(102,'user',3,'0PB','2018-03-12 16:58:15',0),(103,'user_log',4,'0PB','2018-03-13 14:22:27',0),(104,'user_wallet',2,'0PB','2018-03-13 14:20:54',0),(105,'withdraw_deposit_address',2,'0PB','2018-03-13 14:27:15',0),(106,'withdraw_recode',2,'0PB','2018-03-14 16:17:29',0),(107,'extension',0,'0PB','2018-03-20 19:16:49',0);

#
# Source for table "balance_of_water"
#

DROP TABLE IF EXISTS `balance_of_water`;
CREATE TABLE `balance_of_water` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `b_type` int(11) NOT NULL COMMENT '1支出 2收入',
  `b_money` decimal(10,0) NOT NULL COMMENT '流水金额',
  `b_markes` varchar(255) NOT NULL COMMENT '备注内容',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "balance_of_water"
#

INSERT INTO `balance_of_water` VALUES (2,2,32,'4'),(4,2,32,'4'),(5,2,32,'4'),(6,1,123,'123'),(7,1,123,'123');

#
# Source for table "basic_configuration"
#

DROP TABLE IF EXISTS `basic_configuration`;
CREATE TABLE `basic_configuration` (
  `ws_id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(255) DEFAULT NULL COMMENT '网站名称',
  `ws_title` varchar(255) DEFAULT NULL COMMENT '网站标题',
  `ws_logo` varchar(255) DEFAULT NULL COMMENT '网站大logo',
  `ws_smalllogo` varchar(255) DEFAULT NULL COMMENT '网站小logo',
  `ws_keyword` varchar(255) DEFAULT NULL COMMENT '网站关键字',
  `ws_describe` varchar(255) DEFAULT NULL COMMENT '网站描述',
  `ws_state` int(11) DEFAULT NULL COMMENT '网站状态（0.禁止访问  1.正常状态）',
  `ws_prohibitreason` varchar(255) DEFAULT NULL COMMENT '网站禁止访问原因',
  `ws_keeprecordnum` varchar(255) DEFAULT NULL COMMENT '网站备案号',
  `ws_statisticalcode` varchar(255) DEFAULT NULL COMMENT '网站统计代码',
  `ws_userregistrationagreement` varchar(255) DEFAULT NULL COMMENT '用户注册协议',
  PRIMARY KEY (`ws_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "basic_configuration"
#

INSERT INTO `basic_configuration` VALUES (1,'/888','23','C:\\fakepath\\be868a90082f274b99f6b2c3b3432259 - 副本.png','C:\\fakepath\\be868a90082f274b99f6b2c3b3432259.png','123','11111111111111',1,'123','123','123','111');

#
# Source for table "blogroll"
#

DROP TABLE IF EXISTS `blogroll`;
CREATE TABLE `blogroll` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友情链接主键',
  `b_name` varchar(22) NOT NULL COMMENT '链接名称',
  `b_title` varchar(55) NOT NULL COMMENT '链接标题',
  `b_url` varchar(255) NOT NULL COMMENT '链接地址',
  `b_status` int(11) NOT NULL COMMENT '链接状态1启用 2禁用',
  `create_time` datetime NOT NULL COMMENT '链接创建时间',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "blogroll"
#

INSERT INTO `blogroll` VALUES (2,'1','1','1',1,'2018-03-19 19:51:23'),(3,'1','1','1',1,'2018-03-19 19:51:23'),(5,'1','1','1',1,'2018-03-19 19:51:23'),(6,'1','1','1',1,'2018-03-19 19:51:23'),(7,'123','123','123',2,'2018-03-19 20:00:06'),(8,'123','4123','3214',2,'2018-03-19 20:00:19');

#
# Source for table "change_gomon"
#

DROP TABLE IF EXISTS `change_gomon`;
CREATE TABLE `change_gomon` (
  `cg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `type` int(11) DEFAULT NULL COMMENT '币种(1.比卡通BCD 2.鸿承通HCT 3.健康通JKT 4.云鑫通YXT 5.奌点链DDL)',
  `add_time` date DEFAULT NULL COMMENT '申请时间',
  `go_address` varchar(255) DEFAULT NULL COMMENT '转出地址',
  `cg_num` int(11) DEFAULT NULL COMMENT '数量',
  `cg_prepare` varchar(255) DEFAULT NULL COMMENT '注释',
  `cg_state` int(11) DEFAULT '1' COMMENT '状态(0.失败 1.成功)',
  `true_num` int(11) DEFAULT NULL COMMENT '实际到账',
  PRIMARY KEY (`cg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "change_gomon"
#

INSERT INTO `change_gomon` VALUES (1,1,1,'2018-03-01','12456',12456,'456',1,100),(2,2,2,'2018-03-08','451',24,'54',0,23),(3,1,2,'2018-03-28','yja67fGc8UBXLWtjwvHFkjrmYhTFGH9PTs',1,'张三的地址',1,1),(4,1,2,'2018-03-28','112233445566',1,'123',1,1),(5,1,3,'2018-03-28','777888999444',1,'123456',1,1),(6,1,4,'2018-03-28','44555661112233',1,'1234',1,1),(7,1,5,'2018-03-28','14445566688',1,'489',1,1),(8,1,1,'2018-03-30','4dca6a86-6732-4767-b934-a888ae501b5d',10,'cs',1,10);

#
# Source for table "chat_list"
#

DROP TABLE IF EXISTS `chat_list`;
CREATE TABLE `chat_list` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '聊天列表主键',
  `u_id` int(11) NOT NULL COMMENT '用户',
  `c_context` varchar(255) NOT NULL COMMENT '内容',
  `create_time` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "chat_list"
#

INSERT INTO `chat_list` VALUES (1,1,'1','2018-03-19 21:11:47'),(3,2,'3','2018-03-16 21:11:47'),(4,2,'4','2018-03-16 21:11:47'),(5,3,'5','2018-03-16 21:11:47');

#
# Source for table "commission"
#

DROP TABLE IF EXISTS `commission`;
CREATE TABLE `commission` (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `first_level_invitation` double NOT NULL COMMENT '一级邀请佣金',
  `tow_level_invitation` double NOT NULL COMMENT '二级邀请佣金',
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='佣金表';

#
# Data for table "commission"
#

INSERT INTO `commission` VALUES (1,10,5);

#
# Source for table "commission_record"
#

DROP TABLE IF EXISTS `commission_record`;
CREATE TABLE `commission_record` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL COMMENT '用户（编码）',
  `uId` int(11) DEFAULT NULL COMMENT '被邀请人ID',
  `money` double DEFAULT NULL COMMENT '佣金',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='佣金记录表';

#
# Data for table "commission_record"
#

INSERT INTO `commission_record` VALUES (22,'YDL17620484326',66,10,'2018-03-30 18:57:37'),(24,'YDL15361401403',68,10,'2018-03-30 19:02:10'),(25,'YDL17620484326',68,5,'2018-03-30 19:02:10'),(26,'YDL15361401403',68,10,'2018-03-30 19:02:13'),(28,'YDL17620484329',74,10,'2018-03-30 19:42:12'),(29,NULL,74,5,'2018-03-30 19:42:12'),(30,'YDL17620484329',74,10,'2018-03-30 19:42:15'),(31,NULL,74,5,'2018-03-30 19:42:15'),(32,'',79,10,'2018-03-30 19:58:46');

#
# Source for table "contact_address"
#

DROP TABLE IF EXISTS `contact_address`;
CREATE TABLE `contact_address` (
  `c_id` int(11) NOT NULL COMMENT '自动增长',
  `u_id` int(11) NOT NULL COMMENT '用户主键',
  `c_remarks` varchar(22) NOT NULL COMMENT '备注名称',
  `c_phone` varchar(55) NOT NULL COMMENT '联系电话',
  `c_address` varchar(255) NOT NULL COMMENT '联系地址',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "contact_address"
#

INSERT INTO `contact_address` VALUES (1,1,'1','12456','1','2018-03-08 15:10:50'),(2,2,'2','15487','2','2018-03-23 15:11:00');

#
# Source for table "currenct_configuration"
#

DROP TABLE IF EXISTS `currenct_configuration`;
CREATE TABLE `currenct_configuration` (
  `cy_id` int(11) NOT NULL AUTO_INCREMENT,
  `cy_estate` int(11) DEFAULT '1' COMMENT '状态 1.可用 2.不可用',
  `cy_eabbreviation` varchar(255) DEFAULT NULL COMMENT '英文简称',
  `cy_ename` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `cy_cname` varchar(255) DEFAULT NULL COMMENT '中文名称',
  `cy_type` int(11) DEFAULT NULL COMMENT '币种类型(1.认购币，2.钱包币，3.以太坊，4.以太坊代币)',
  `cy_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `cy_ip` varchar(255) DEFAULT NULL COMMENT '钱包服务器ip',
  `cy_rpc_inte` varchar(255) DEFAULT NULL COMMENT '钱包rpc端口',
  `cy_rpc_name` varchar(255) DEFAULT NULL COMMENT '钱包RPC用户名',
  `cy_rpc_pass` varchar(255) DEFAULT NULL COMMENT '钱包RPC密码',
  `cy_password` varchar(255) NOT NULL COMMENT '钱包密码',
  `cy_yt_assress` varchar(255) NOT NULL COMMENT '以太坊主钱包地址',
  `cy_yt_password` varchar(255) NOT NULL COMMENT '以太坊主钱包密码',
  `cy_contractaddress` varchar(255) NOT NULL COMMENT '智能合约地址',
  `cy_contractaccuracy` varchar(255) NOT NULL COMMENT ' 智能合约精度',
  `cy_proportion` varchar(255) NOT NULL COMMENT ' 挂单比例',
  `cy_maxsell` varchar(255) NOT NULL COMMENT '今日卖出最多',
  `cy_give` varchar(255) NOT NULL COMMENT '转入赠送',
  `cy_state` int(11) NOT NULL COMMENT '转入状态1.正常转入 2.禁止转入',
  `cy_num` varchar(255) NOT NULL COMMENT '确认次数',
  `cy_servicecharge` varchar(255) NOT NULL COMMENT '转出手续费',
  `cy_officialaddress` varchar(255) NOT NULL COMMENT '官方手续费地址',
  `cy_rolloutmin` varchar(255) NOT NULL COMMENT '最小转出数量',
  `cy_rolloutmax` varchar(255) NOT NULL COMMENT '最大转出数量',
  `cy_rolloutstate` int(255) NOT NULL COMMENT '转出状态(1.正常转出  2.禁止转出)',
  `cy_rolloutautomatic` varchar(255) NOT NULL COMMENT '转出自动',
  `cy_introduce` varchar(255) NOT NULL COMMENT '详细介绍',
  `cy_download` varchar(255) NOT NULL COMMENT '钱包下载',
  `cy_sourcecodedownload` varchar(255) NOT NULL COMMENT '源码下载',
  `cy_officialhref` varchar(255) NOT NULL COMMENT '官方链接',
  `cy_officialforum` varchar(255) NOT NULL COMMENT '官方论坛',
  `cy_officialmining` varchar(255) NOT NULL COMMENT '官方挖矿',
  `cy_developer` varchar(255) NOT NULL COMMENT '研发者',
  `cy_algorithm` varchar(255) NOT NULL COMMENT '核心算法',
  `cy_addtime` varchar(255) NOT NULL COMMENT '发布时间',
  `cy_proofact` varchar(255) NOT NULL COMMENT '证明方式',
  `cy_blockspeed` varchar(255) NOT NULL COMMENT '区块速度',
  `cy_total` varchar(255) NOT NULL COMMENT '发行总量',
  `cy_stock` varchar(255) NOT NULL COMMENT '存量',
  `cy_difficulty` varchar(255) NOT NULL COMMENT '难度调整',
  `cy_blockaward` varchar(255) NOT NULL COMMENT '区块奖励',
  `cy_characteristic` varchar(255) NOT NULL COMMENT '特色',
  `cy_insufficient` varchar(255) NOT NULL COMMENT '不足',
  `market` varchar(20) DEFAULT NULL COMMENT '市场值',
  PRIMARY KEY (`cy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "currenct_configuration"
#

INSERT INTO `currenct_configuration` VALUES (1,1,'1','1','哈哈',1,'C:\\fakepath\\be868a90082f274b99f6b2c3b3432259 - 副本 (4).png','1','55555555','1','1','1','1','1','1','1','1','1','',1,'1','1','1','1','1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',NULL);

#
# Source for table "currency_appraise"
#

DROP TABLE IF EXISTS `currency_appraise`;
CREATE TABLE `currency_appraise` (
  `appraise_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名称',
  `currency` varchar(10) NOT NULL COMMENT '币种',
  `contentsuper_praise` varchar(255) NOT NULL COMMENT '内容',
  `super_praise` int(11) NOT NULL COMMENT '超级赞',
  `too_ordinary_num` int(11) NOT NULL COMMENT '太平庸',
  `bullshit_num` int(11) NOT NULL COMMENT '瞎扯淡',
  `create_date_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`appraise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='币种评价';

#
# Data for table "currency_appraise"
#

INSERT INTO `currency_appraise` VALUES (1,'czk1668','hlc','预祝：华金平台 华龙庄家出门给车撞死 在家给煤气炸死！谢谢你给的坑',1,2,3,'2018-03-17 15:08:18'),(2,'ljf18802679563','hlc','大家把价格卖高就会上来的吧',6,5,2,'2018-03-17 15:08:47');

#
# Source for table "currency_wallet"
#

DROP TABLE IF EXISTS `currency_wallet`;
CREATE TABLE `currency_wallet` (
  `cw_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标示id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `cw_name` varchar(255) DEFAULT NULL COMMENT '币种名称',
  `cw_total` decimal(22,12) DEFAULT NULL COMMENT '总量',
  `cw_available` decimal(22,12) DEFAULT NULL COMMENT '可用余额',
  `cw_frozen` decimal(22,12) DEFAULT NULL COMMENT '冻结余额',
  PRIMARY KEY (`cw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

#
# Data for table "currency_wallet"
#

INSERT INTO `currency_wallet` VALUES (80,64,'人民币CNY',1094722.717892000000,489770.800000000000,604954.139892000000),(81,64,'比卡通BCD',5205.298000000000,23615.000000000000,1544.298000000000),(82,64,'鸿承通HCT',11.995600000000,5.000000000000,6.997800000000),(83,64,'健康通JKT',24.995600000000,12.000000000000,12.997800000000),(84,64,'云鑫通YXT',6.995600000000,2.000000000000,4.997800000000),(85,64,'奌点链DDL',5.995600000000,2.333000000000,3.664800000000),(92,66,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(93,66,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(94,66,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(95,66,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(96,66,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(97,66,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(98,67,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(99,67,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(100,67,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(101,67,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(102,67,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(103,67,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(110,69,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(111,69,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(112,69,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(113,69,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(114,69,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(115,69,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(116,70,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(117,70,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(118,70,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(119,70,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(120,70,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(121,70,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(122,71,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(123,71,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(124,71,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(125,71,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(126,71,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(127,71,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(134,73,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(135,73,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(136,73,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(137,73,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(138,73,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(139,73,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(140,74,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(141,74,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(142,74,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(143,74,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(144,74,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(145,74,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(146,75,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(147,75,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(148,75,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(149,75,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(150,75,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(151,75,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(152,76,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(153,76,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(154,76,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(155,76,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(156,76,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(157,76,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(158,77,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(159,77,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(160,77,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(161,77,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(162,77,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(163,77,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(164,78,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(165,78,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(166,78,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(167,78,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(168,78,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(169,78,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000),(170,79,'人民币CNY',0.000000000000,0.000000000000,0.000000000000),(171,79,'比卡通BCD',0.000000000000,0.000000000000,0.000000000000),(172,79,'鸿承通HCT',0.000000000000,0.000000000000,0.000000000000),(173,79,'健康通JKT',0.000000000000,0.000000000000,0.000000000000),(174,79,'云鑫通YXT',0.000000000000,0.000000000000,0.000000000000),(175,79,'奌点链DDL',0.000000000000,0.000000000000,0.000000000000);

#
# Source for table "customerservice_configuration"
#

DROP TABLE IF EXISTS `customerservice_configuration`;
CREATE TABLE `customerservice_configuration` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_phone` varchar(255) DEFAULT NULL COMMENT '联系手机号',
  `cs_blog` varchar(255) DEFAULT NULL COMMENT '联系微博',
  `cs_txblog` varchar(255) DEFAULT NULL COMMENT '联系腾讯微博',
  `cs_QQ` varchar(255) DEFAULT NULL COMMENT '联系qq',
  `cs_QQgroup` varchar(255) DEFAULT NULL COMMENT '联系qq群',
  `cs_wechat` varchar(255) DEFAULT NULL COMMENT '联系微信',
  `cs_wechatQRcode` varchar(255) DEFAULT NULL COMMENT '微信二维码',
  `cs_mailbox` varchar(255) DEFAULT NULL COMMENT '联系邮箱',
  `cs_alipay` varchar(255) DEFAULT NULL COMMENT '联系支付宝',
  `cs_alipatQRcode` varchar(255) DEFAULT NULL COMMENT '支付宝二维码',
  `cs_banknum` varchar(255) DEFAULT NULL COMMENT '联系银行账号',
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "customerservice_configuration"
#

INSERT INTO `customerservice_configuration` VALUES (1,'1123','123','123','123','123','123','123','123','123123','1123123','2312312');

#
# Source for table "deal_recode"
#

DROP TABLE IF EXISTS `deal_recode`;
CREATE TABLE `deal_recode` (
  `deal_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '交易id',
  `buyer` varchar(20) NOT NULL COMMENT '买家名称',
  `seller` varchar(20) NOT NULL COMMENT '卖家名称',
  `deal_bazaar` varchar(10) NOT NULL COMMENT '交易市场',
  `deal_price` decimal(20,6) NOT NULL COMMENT '交易价格',
  `deal_quantity` decimal(20,6) NOT NULL COMMENT '交易数量',
  `buyer_service_charge` decimal(20,6) NOT NULL COMMENT '买家手续费',
  `seller_service_charge` decimal(20,6) NOT NULL COMMENT '卖家手续费',
  `merchandise_volume` decimal(20,6) NOT NULL COMMENT '交易总量',
  `means_of_exchange` int(1) NOT NULL COMMENT '交易方式（1.卖出,2.买入）',
  `deal_date_time` datetime NOT NULL COMMENT '交易时间',
  `currency` varchar(11) DEFAULT NULL COMMENT '1为比卡通BCD，2为鸿承通HCT，3为健康通JKT，4为云鑫通YXT，5为奌点链DDL',
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='委托记录';

#
# Data for table "deal_recode"
#

INSERT INTO `deal_recode` VALUES (1,'xgllplw','Ots668','ltc_cny',0.420000,0.420000,0.000000,0.199080,99.540000,1,'2018-03-27 14:14:29','1'),(2,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','2'),(3,'xgllplw','Ots668','ltc_cny',0.320000,0.420000,0.000000,0.199080,99.540000,1,'2018-03-27 14:14:29','5'),(4,'xgllplw','Ots668','ltc_cny',0.230000,0.420000,0.000000,0.199080,39.630000,1,'2018-03-27 14:14:29','4'),(5,'xgllplw','Ots668','ltc_cny',0.320000,0.420000,0.000000,0.199080,39.630000,1,'2018-03-27 14:14:29','1'),(6,'xgllplw','Ots668','ltc_cny',0.410000,0.420000,0.000000,0.199080,39.630000,2,'2018-03-27 14:14:29','1'),(7,'xgllplw','Ots668','ltc_cny',0.310000,0.220000,0.000000,0.199080,39.630000,2,'2018-03-27 14:14:29','4'),(8,'xgllplw','Ots668','ltc_cny',0.330000,0.220000,0.000000,0.199080,1100.540000,2,'2018-03-27 14:14:29','2'),(9,'xgllplw','Ots668','ltc_cny',0.330000,0.110000,0.000000,0.199080,99.540000,2,'2018-03-27 14:14:29','4'),(10,'xgllplw','Ots668','ltc_cny',0.330000,0.420000,0.000000,0.199080,99.540000,1,'2018-03-27 14:14:29','2'),(11,'xgllplw','Ots668','ltc_cny',0.350000,0.420000,0.000000,0.199080,99.540000,1,'2018-03-27 14:14:29','4'),(12,'xgllplw','Ots668','ltc_cny',0.350000,0.420000,0.000000,0.199080,99.540000,1,'2018-03-27 14:14:29','1'),(13,'xgllplw','Ots668','ltc_cny',0.350000,0.430000,0.000000,0.199080,99.540000,2,'2018-03-27 14:14:29','5'),(14,'xgllplw','Ots668','ltc_cny',0.350000,0.420000,0.000000,0.199080,99.540000,1,'2018-03-27 14:14:29','1'),(15,'xgllplw','Ots668','ltc_cny',0.360000,0.420000,0.000000,0.199080,1100.630000,1,'2018-03-27 14:14:29','2'),(16,'xgllplw','Ots668','ltc_cny',0.330000,0.230000,0.000000,0.199080,1100.540000,1,'2018-03-27 14:14:29','1'),(17,'xgllplw','Ots668','ltc_cny',0.330000,0.230000,0.000000,0.199080,1100.540000,1,'2018-03-27 14:14:29','1'),(18,'xgllplw','Ots668','ltc_cny',0.330000,0.230000,0.000000,0.199080,1100.540000,1,'2018-03-27 14:14:29','5'),(19,'xgllplw','Ots668','ltc_cny',0.330000,0.420000,0.000000,0.199080,1100.540000,1,'2018-03-27 14:14:29','4'),(20,'xgllplw','Ots668','ltc_cny',0.330000,0.420000,0.000000,0.199080,1100.540000,1,'2018-03-27 14:14:29','1'),(21,'xgllplw','Ots668','ltc_cny',0.320000,0.420000,0.000000,0.199080,99.540000,2,'2018-03-27 14:14:29','2'),(22,'xgllplw','Ots668','ltc_cny',0.320000,0.420000,0.000000,0.199080,99.540000,2,'2018-03-27 14:14:29','1'),(23,'xgllplw','Ots668','ltc_cny',0.320000,0.420000,0.000000,0.199080,99.540000,2,'2018-03-27 14:14:29','4'),(24,'xgllplw','Ots668','ltc_cny',0.230000,0.420000,0.000000,0.199080,39.630000,2,'2018-03-27 14:14:29','1'),(25,'xgllplw','Ots668','ltc_cny',0.230000,0.420000,0.000000,0.199080,39.630000,2,'2018-03-27 14:14:29','5'),(26,'xgllplw','Ots668','ltc_cny',0.230000,0.420000,0.000000,0.199080,39.630000,2,'2018-03-27 14:14:29','1'),(27,'xgllplw','Ots668','ltc_cny',0.230000,0.420000,0.000000,0.199080,39.630000,2,'2018-03-27 14:14:29','2'),(28,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','2'),(29,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','1'),(30,'xgll','ots413','asd',0.330000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','4'),(31,'xgll','ots413','asd',0.330000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','4'),(32,'xgll','ots413','asd',0.330000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','5'),(33,'xgll','ots413','asd',0.330000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','5'),(34,'xgll','asd','ots413',0.330000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','5'),(35,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','2'),(36,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','1'),(37,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','4'),(38,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','4'),(39,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','5'),(40,'xgll','ots413','asd',0.320000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','1'),(41,'xgll','ots413','asd',0.220000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','5'),(42,'xgll','ots413','asd',0.220000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','2'),(43,'ots413','xgll','asd',0.220000,0.320000,0.000000,0.154000,39.630000,2,'2018-03-28 10:09:31','5'),(44,'xgllplw','Ots668','ltc_cny',0.320000,0.420000,0.000000,0.199080,39.630000,1,'2018-03-27 14:14:29','2'),(45,'xgllplw','Ots668','ltc_cny',0.320000,0.420000,0.000000,0.199080,39.630000,1,'2018-03-27 14:14:29','4'),(46,'xgllplw','Ots668','阿斯达DDD',0.320000,0.420000,0.000000,0.199080,39.630000,1,'2018-03-27 14:14:29','2'),(47,'小小的小小','小小的小小','比卡通BCD',200.000000,3.000000,0.000000,7.980000,607.980000,1,'2018-03-30 12:53:07','1'),(48,'小小的小小','小小的小小','比卡通BCD',100.000000,200.000000,88.000000,0.000000,20088.000000,2,'2018-03-30 13:56:27','1'),(49,'小小的小小','小小的小小','比卡通BCD',100.000000,200.000000,88.000000,0.000000,20088.000000,2,'2018-03-30 13:58:12','1'),(50,'小小的小小','小小的小小','比卡通BCD',100.000000,200.000000,88.000000,0.000000,20088.000000,2,'2018-03-30 14:00:21','1'),(51,'小小的小小','小小的小小','比卡通BCD',100.000000,200.000000,88.000000,0.000000,20088.000000,2,'2018-03-30 14:01:43','1'),(52,'小小的小小','小小的小小','比卡通BCD',100.000000,200.000000,88.000000,0.000000,20088.000000,2,'2018-03-30 14:05:20','1'),(53,'小小的小小','小小的小小','比卡通BCD',100.000000,10.000000,4.400000,0.000000,1004.400000,2,'2018-03-30 14:07:36','1'),(54,'小小的小小','小小的小小','比卡通BCD',100.000000,10.000000,4.400000,0.000000,1004.400000,2,'2018-03-30 14:12:31','1'),(55,'小小的小小','小小的小小','比卡通BCD',100.000000,1200.000000,528.000000,0.000000,120528.000000,2,'2018-03-30 14:15:34','1'),(56,'小小的小小','小小的小小','比卡通BCD',100.000000,1200.000000,528.000000,0.000000,120528.000000,2,'2018-03-30 14:16:46','1'),(57,'小小的小小','小小的小小','cgt_cny',0.304000,385.351000,0.000000,0.000000,117.146704,1,'2018-03-30 14:26:34','1'),(58,'小小的小小','小小的小小','cgt_cny',0.338000,1975.000000,0.000000,1.335100,666.214900,1,'2018-03-30 14:52:32','1'),(59,'小小的小小','admin','比卡通BCD',200.000000,100.000000,88.000000,0.000000,20088.000000,2,'2018-03-30 19:44:20','1');

#
# Source for table "dividend"
#

DROP TABLE IF EXISTS `dividend`;
CREATE TABLE `dividend` (
  `dividend_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分红主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `dividend_name` varchar(20) DEFAULT NULL COMMENT '分红名称',
  `dividend_currency` int(1) DEFAULT NULL COMMENT '分红币种1.比特币 2.莱特币 3.狗狗币 4.以太币',
  `award_currency` int(1) DEFAULT NULL COMMENT '奖励币种1.比特币 2.莱特币 3.狗狗币 4.以太币',
  `currency_num` decimal(20,6) DEFAULT NULL COMMENT '持币数量',
  `dividend_num` decimal(20,6) DEFAULT NULL COMMENT '分红数量',
  `dividend_explain` varchar(255) DEFAULT NULL COMMENT '分红说明',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `dividend_status` int(1) DEFAULT '1' COMMENT '状态',
  `dividend_sort` varchar(10) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`dividend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='分红信息表';

#
# Data for table "dividend"
#

INSERT INTO `dividend` VALUES (1,1,'123',1,2,231.210000,165.150000,'大傻逼杨杰','2018-03-19 20:15:04',1,'132'),(2,2,'123',1,1,123.416540,123.000000,'123','2018-03-20 09:33:44',1,'123');

#
# Source for table "entrust_recode"
#

DROP TABLE IF EXISTS `entrust_recode`;
CREATE TABLE `entrust_recode` (
  `entrust_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '委托id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名称',
  `deal_bazaar` varchar(20) NOT NULL COMMENT '交易市场',
  `deal_price` decimal(20,6) NOT NULL COMMENT '交易价格',
  `deal_quantity` decimal(20,6) NOT NULL COMMENT '交易数量',
  `have_volume` decimal(20,6) NOT NULL COMMENT '已成交量',
  `service_charge` decimal(20,6) NOT NULL COMMENT '手续费',
  `merchandise_volume` decimal(20,6) NOT NULL COMMENT '交易总量',
  `means_of_exchange` int(1) NOT NULL COMMENT '交易方式（1.卖出 2.买入）',
  `commission_date_time` datetime NOT NULL COMMENT '委托时间',
  `status` int(1) NOT NULL COMMENT '状态（1.交易中 2.已完成',
  `currency` int(11) DEFAULT NULL COMMENT '1为比卡通BCD，2为鸿承通HCT，3为健康通JKT，4为云鑫通YXT，5为奌点链DDL',
  `e_type` int(11) DEFAULT NULL COMMENT '类型',
  `finish_time` datetime DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`entrust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='委托记录';

#
# Data for table "entrust_recode"
#

INSERT INTO `entrust_recode` VALUES (1,'小小的小小','cgt_cny',0.304000,385.351000,385.351000,0.000000,117.146704,1,'2018-03-16 17:46:44',2,1,1,'2018-03-23 20:17:01'),(2,'小小的小小','cgt_cny',0.305000,10000.000000,0.000000,0.000000,3050.000000,2,'2018-03-19 16:23:20',1,1,1,'2018-03-23 20:16:14'),(3,'小小的小小','cgt_cny',0.338000,1975.000000,1975.000000,1.335100,666.214900,1,'2018-03-19 16:25:53',2,1,1,'2018-03-23 20:16:34'),(4,'小小的小小','cgt_cny',0.300000,1000.000000,0.000000,0.000000,3050.000000,1,'2018-03-23 16:09:36',3,2,1,'2018-03-23 20:16:17'),(5,'小小的小小','比卡通BCD',100.000000,12.000000,0.000000,6.600000,12.000000,2,'2018-03-29 14:30:30',1,1,NULL,NULL),(6,'小小的小小','比卡通BCD',10.000000,10.000000,0.000000,0.550000,10.550000,2,'2018-03-29 14:33:59',1,1,NULL,NULL),(7,'小小的小小','比卡通BCD',100.000000,2.000000,0.000000,1.100000,3.100000,2,'2018-03-29 14:39:32',1,1,NULL,NULL),(8,'小小的小小','比卡通BCD',200.000000,800.000000,0.000000,704.000000,160704.000000,2,'2018-03-29 20:41:59',1,1,NULL,NULL),(9,'小小的小小','比卡通BCD',50.000000,200.000000,0.000000,44.000000,10044.000000,2,'2018-03-29 20:43:04',1,1,NULL,NULL),(10,'小小的小小','比卡通BCD',100.000000,1200.000000,0.000000,528.000000,120528.000000,2,'2018-03-29 20:44:40',1,1,NULL,NULL),(11,'小小的小小','比卡通BCD',200.000000,100.000000,100.000000,88.000000,20088.000000,2,'2018-03-29 20:46:11',2,1,NULL,NULL),(12,'小小的小小','比卡通BCD',100.000000,1200.000000,1200.000000,528.000000,120528.000000,2,'2018-03-29 20:49:34',2,1,NULL,NULL),(13,'小小的小小','比卡通BCD',100.000000,1200.000000,1200.000000,528.000000,120528.000000,2,'2018-03-29 20:50:25',2,1,NULL,NULL),(14,'小小的小小','比卡通BCD',100.000000,10.000000,10.000000,4.400000,1004.400000,2,'2018-03-29 20:50:43',2,1,NULL,NULL),(15,'小小的小小','比卡通BCD',100.000000,10.000000,10.000000,4.400000,1004.400000,2,'2018-03-29 20:51:44',2,1,NULL,NULL),(16,'小小的小小','比卡通BCD',100.000000,10.000000,0.000000,4.400000,1004.400000,2,'2018-03-29 20:54:23',2,1,NULL,NULL),(17,'小小的小小','比卡通BCD',100.000000,200.000000,200.000000,88.000000,20088.000000,2,'2018-03-29 20:55:11',2,1,NULL,NULL),(18,'小小的小小','比卡通BCD',200.000000,3.000000,0.000000,7.980000,607.980000,1,'2018-03-29 22:20:17',2,1,NULL,NULL),(19,'小小的小小','比卡通BCD',200.000000,3.000000,0.000000,7.980000,607.980000,1,'2018-03-29 22:21:18',2,1,NULL,NULL),(20,'小小的小小','比卡通BCD',200.000000,3.000000,0.000000,7.980000,607.980000,1,'2018-03-29 22:21:46',2,1,NULL,NULL),(21,'小小的小小','比卡通BCD',200.000000,3.000000,0.000000,7.980000,607.980000,1,'2018-03-29 22:23:01',3,1,NULL,NULL),(22,'小小的小小','比卡通BCD',200.000000,20.000000,0.000000,17.600000,4017.600000,2,'2018-03-29 22:24:20',3,1,NULL,NULL),(23,'小小的小小','比卡通BCD',200.000000,3.000000,0.000000,2.640000,602.640000,2,'2018-03-29 22:32:36',3,1,NULL,NULL),(24,'小小的小小','比卡通BCD',200.000000,3.000000,0.000000,7.980000,607.980000,1,'2018-03-29 22:33:40',3,1,NULL,NULL),(25,'小小的小小','比卡通BCD',200.000000,3.000000,0.000000,7.980000,607.980000,1,'2018-03-29 22:35:16',2,1,NULL,NULL);

#
# Source for table "entry_note"
#

DROP TABLE IF EXISTS `entry_note`;
CREATE TABLE `entry_note` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) NOT NULL COMMENT '用户主键',
  `e_type` int(11) NOT NULL COMMENT '转入类型（1比特币 2莱特币  3狗狗币  4以太股）',
  `e_turns_out_the_address` varchar(55) NOT NULL COMMENT '转出地址',
  `e_number` decimal(10,0) NOT NULL COMMENT '转入数量',
  `the_actual_to_account` decimal(10,0) NOT NULL COMMENT '实际到账',
  `to_give_away` decimal(10,0) NOT NULL COMMENT '转入赠送',
  `e_reate_time` datetime NOT NULL COMMENT '转入时间',
  `remarks` varchar(55) DEFAULT NULL COMMENT '备注',
  `e_status` int(11) NOT NULL COMMENT '状态0等待处理 1转入成功',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "entry_note"
#

INSERT INTO `entry_note` VALUES (1,1,1,'123',123,123,123,'2018-03-14 14:58:13','1',1),(2,2,2,'123',123,123,123,'2018-03-14 14:58:13','1',0),(3,3,3,'123',123,123,123,'2018-03-14 14:58:13','1',0),(4,4,4,'123',123,123,123,'2018-03-14 14:58:13','1',1),(5,1,1,'456',456,456,456,'2018-03-26 19:42:43','2',1),(6,1,2,'789',789,789,789,'2018-03-26 19:43:18','1',0),(7,1,1,'www.baidu.comsss',120,120,120,'2018-03-27 09:11:15','2',0),(8,1,1,'www.hao123.comyyy',110,110,110,'2018-03-27 09:33:20','2',1),(9,1,1,'www.guge.comhhh',119,119,119,'2018-03-27 09:34:32','1',0),(10,1,1,'www.sdfsdf.comggg',114,114,114,'2018-03-27 09:34:49','2',1);

#
# Source for table "extension"
#

DROP TABLE IF EXISTS `extension`;
CREATE TABLE `extension` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL COMMENT '推荐用户',
  `e_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `e_award_name` varchar(255) DEFAULT NULL COMMENT '奖励名称',
  `e_operation_type` varchar(255) DEFAULT NULL COMMENT '操作类型',
  `e_operation_money` decimal(10,0) DEFAULT NULL COMMENT '操作金额',
  `e_award_money` decimal(10,0) DEFAULT NULL COMMENT '奖励金额',
  `e_award_currency` varchar(255) DEFAULT NULL COMMENT '奖励币种',
  `e_time` datetime DEFAULT NULL COMMENT '奖励时间',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "extension"
#

INSERT INTO `extension` VALUES (1,1,'1','1','1',1,1,'1','2018-03-21 10:30:42');

#
# Source for table "finance"
#

DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance` (
  `finance_id` int(11) NOT NULL AUTO_INCREMENT,
  `finance_dec` varchar(50) DEFAULT NULL COMMENT '说明',
  `finance_state` int(11) DEFAULT NULL COMMENT '1为支出，2为收入',
  `currency` varchar(11) DEFAULT NULL COMMENT '币种',
  `finance_time` datetime DEFAULT NULL COMMENT '成交时间',
  `u_id` int(11) DEFAULT NULL COMMENT '用户关联id',
  `finance_type` int(11) DEFAULT NULL COMMENT '1为卖，2为买，3为充值，4为提现，5为冲积分，6，提积分',
  `finance_money` decimal(11,6) DEFAULT NULL,
  PRIMARY KEY (`finance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "finance"
#

INSERT INTO `finance` VALUES (1,'1',1,'1','2018-03-26 20:37:50',NULL,1,NULL),(2,'2',2,'2','2018-03-26 20:38:00',NULL,2,NULL),(3,'3',1,'3','2018-03-26 20:38:14',NULL,3,NULL),(4,'1',1,'1','2018-03-30 14:51:10',1,1,1.000000),(5,'暂无',1,'1','2018-03-30 14:52:32',1,1,666.214900),(6,'暂无',1,'1','2018-03-30 14:52:32',1,1,666.214900),(7,NULL,1,'1','2018-03-30 15:20:31',NULL,NULL,10.000000),(8,'暂无',2,'1','2018-03-30 19:44:20',NULL,2,20088.000000),(9,'暂无',2,'1','2018-03-30 19:44:20',NULL,2,20088.000000);

#
# Source for table "hint_text"
#

DROP TABLE IF EXISTS `hint_text`;
CREATE TABLE `hint_text` (
  `ht_id` int(11) NOT NULL AUTO_INCREMENT,
  `ht_mark` varchar(255) DEFAULT NULL COMMENT '提示标示',
  `ht_position` varchar(255) DEFAULT NULL COMMENT '位置说明',
  `ht_addtime` date DEFAULT NULL COMMENT '添加时间',
  `ht_updatetime` date DEFAULT NULL COMMENT '修改时间',
  `ht_markcontent` varchar(255) DEFAULT NULL COMMENT '提示内容',
  PRIMARY KEY (`ht_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "hint_text"
#

INSERT INTO `hint_text` VALUES (1,'999','123','2018-03-15','2018-03-29','ccc'),(2,'78978','123','2018-03-06','2018-03-04','dfsfsd');

#
# Source for table "invitation"
#

DROP TABLE IF EXISTS `invitation`;
CREATE TABLE `invitation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `code` varchar(50) DEFAULT NULL COMMENT '邀请人（编码）',
  `cover_Id` int(11) DEFAULT NULL COMMENT '被邀请人',
  `level` int(11) DEFAULT NULL COMMENT '邀请级别（1.一级邀请 2.二级邀请）',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='邀请表';

#
# Data for table "invitation"
#

INSERT INTO `invitation` VALUES (29,'YDL17620484326',66,1,'2018-03-30 18:57:37'),(31,'YDL15361401403',68,1,'2018-03-30 19:02:10'),(32,'YDL17620484326',68,2,'2018-03-30 19:02:10'),(33,'YDL15361401403',68,1,'2018-03-30 19:02:13'),(35,'YDL17620484329',74,1,'2018-03-30 19:42:12'),(36,NULL,74,2,'2018-03-30 19:42:12'),(37,'YDL17620484329',74,1,'2018-03-30 19:42:15'),(38,NULL,74,2,'2018-03-30 19:42:15'),(39,'',79,1,'2018-03-30 19:58:46');

#
# Source for table "lantern_slide"
#

DROP TABLE IF EXISTS `lantern_slide`;
CREATE TABLE `lantern_slide` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '幻灯片id',
  `Img_name` varchar(55) NOT NULL COMMENT '图片名称',
  `Img_title` varchar(101) NOT NULL COMMENT '图片标题',
  `Img_url` varchar(255) NOT NULL COMMENT '图片链接',
  `Img_href` varchar(255) NOT NULL COMMENT '图片',
  `l_status` int(11) NOT NULL COMMENT '状态1可用2禁用',
  `I_order` int(11) NOT NULL COMMENT '图片排序',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "lantern_slide"
#

INSERT INTO `lantern_slide` VALUES (3,'123','3','3','bfe24f45-714b-434a-a694-5a29f87717ea.png',1,3),(5,'名称','标题2','链接23','0a27459c-4b50-4a8b-94f6-313e35b335b6.jpg',1,1234);

#
# Source for table "market_distribution"
#

DROP TABLE IF EXISTS `market_distribution`;
CREATE TABLE `market_distribution` (
  `md_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `md_name` varchar(255) DEFAULT NULL COMMENT '市场名称',
  `md_decimal_digits` int(11) DEFAULT NULL COMMENT '小数位数',
  `md_purchase_poundage` decimal(10,0) DEFAULT NULL COMMENT '买入手续费',
  `md_sellout_poundage` decimal(10,0) DEFAULT NULL COMMENT '卖出手续费',
  `md_purchase_mintransaction` decimal(10,0) DEFAULT NULL COMMENT '买入最小交易价',
  `md_purchase_maxtransaction` decimal(10,0) DEFAULT NULL COMMENT '买入最大交易价',
  `md_sellout_mintransaction` decimal(10,0) DEFAULT NULL COMMENT '卖出最小交易价',
  `md_sellout_maxtransaction` decimal(10,0) DEFAULT NULL COMMENT '卖出最大交易价',
  `md_opentransaction` int(11) DEFAULT NULL COMMENT '开启交易 1.开启 2.关闭',
  `md_state` int(11) DEFAULT NULL COMMENT '状态 1.可用 2.不可用',
  `md_buyer_currency` int(11) DEFAULT NULL COMMENT ' 买方币种1.比特币 2.莱特币 3.狗狗币 4.以太股',
  `md_seller_currency` int(11) DEFAULT NULL COMMENT '卖方币种1.比特币 2.莱特币 3.狗狗币 4.以太股',
  `md_mintransaction` decimal(10,0) DEFAULT NULL COMMENT '单笔最小交易额',
  `md_maxtransaction` decimal(10,0) DEFAULT NULL COMMENT '单笔最大交易额',
  `md_generation_proportion` double DEFAULT NULL COMMENT '一代赠送比例',
  `md_twogeneration_proportion` double DEFAULT NULL COMMENT '二代赠送比例',
  `md_threegeneration_proportion` double DEFAULT NULL COMMENT '三代赠送比例',
  `md_buyer_give` int(11) DEFAULT NULL COMMENT '买家上家赠送 1.开启赠送 2.关闭赠送',
  `md_seller_give` int(11) DEFAULT NULL COMMENT '卖家上家赠送 1.开启赠送 2.关闭赠送',
  `md_opentransaction_time` varchar(255) DEFAULT NULL COMMENT '开启交易时间',
  `md_opentransaction_day` varchar(255) DEFAULT NULL COMMENT '开启交易日',
  `md_update_time` varchar(255) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`md_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "market_distribution"
#

INSERT INTO `market_distribution` VALUES (3,'2',2,2,2,2,2,22,2,2,1,2,2,2,2,2,2,22,22,2,'2','2','2018-03-28 09:01:38');

#
# Source for table "money_always_docking"
#

DROP TABLE IF EXISTS `money_always_docking`;
CREATE TABLE `money_always_docking` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_name` varchar(22) NOT NULL COMMENT '对接名称',
  `m_type` int(11) NOT NULL COMMENT '认购币种转入类型（1比特币 2莱特币  3狗狗币  4以太股）',
  `m_status` int(11) NOT NULL COMMENT '币种状态1可用2禁用',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "money_always_docking"
#

INSERT INTO `money_always_docking` VALUES (3,'1',3,1,'2018-03-20 11:47:25'),(4,'1',4,1,'2018-03-20 11:47:25'),(5,'1',2,2,'2018-03-20 11:47:25'),(6,'1',1,1,'2018-03-20 11:47:25'),(7,'1',3,1,'2018-03-20 11:47:25'),(9,'111',2,1,'2018-03-28 22:36:41');

#
# Source for table "of_customer"
#

DROP TABLE IF EXISTS `of_customer`;
CREATE TABLE `of_customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '客户姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `phone` varchar(255) DEFAULT '0' COMMENT '手机号码',
  `detailed_description` varchar(255) DEFAULT NULL COMMENT '详细描述',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='客户信息表';

#
# Data for table "of_customer"
#

INSERT INTO `of_customer` VALUES (14,'周顺佳','947723090@qq.com','18974610845',''),(15,'周顺佳','947723090@qq.com','18974610845','8888888'),(16,'44444','444@qq.com','18974610845','11111111'),(17,'3333333','33333333333333333333@qq.com','11111111111','11111111111111111'),(18,'4444444444','44444444444444@qq.com','18989999999','444'),(19,'周永生','2860846733@qq.com','18434760887','');

#
# Source for table "other_configuration"
#

DROP TABLE IF EXISTS `other_configuration`;
CREATE TABLE `other_configuration` (
  `oc_id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_currency` int(255) DEFAULT NULL COMMENT '默认币种(1.比特币   2.莱特币   3.狗狗币   4.以太股)',
  `oc_market` int(255) DEFAULT NULL COMMENT '默认市场(1.比特   2.莱特   3.狗狗   4.以太)',
  `oc_domo` int(11) DEFAULT NULL COMMENT '0.默认模板1.聚币模板 2.元宝模板',
  `oc_chatopen` int(11) DEFAULT NULL COMMENT '聊天交易是否开启(0.禁止聊天 1.开启聊天)',
  `oc_onthetape` int(11) DEFAULT NULL COMMENT '交易行情是否显示（0.不显示 1.显示）',
  `oc_money` int(11) DEFAULT NULL COMMENT '是否开启交易额(0.开启 1.关闭)',
  `oc_verification` int(11) DEFAULT NULL COMMENT '是否开启验证码(0.关闭 1.开启)',
  `oc_extension` varchar(255) DEFAULT NULL COMMENT '专属推广语言',
  `oc_information` varchar(255) DEFAULT NULL COMMENT '头部文字信息',
  `oc_risk` varchar(255) DEFAULT NULL COMMENT '风险警告',
  PRIMARY KEY (`oc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "other_configuration"
#

INSERT INTO `other_configuration` VALUES (1,2,1,2,2,1,2,1,'4564564','78978912','您正在进行风险操作');

#
# Source for table "personal_news"
#

DROP TABLE IF EXISTS `personal_news`;
CREATE TABLE `personal_news` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `u_id` int(11) NOT NULL COMMENT '用户ID',
  `p_type` int(11) NOT NULL COMMENT '消息类型',
  `p_context` text NOT NULL COMMENT '消息内容',
  `create_time` datetime NOT NULL COMMENT '发布时间',
  `p_status` int(11) NOT NULL COMMENT '消息状态1已读 2未读',
  `p_title` varchar(22) NOT NULL COMMENT '消息标题',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='个人消息表';

#
# Data for table "personal_news"
#

INSERT INTO `personal_news` VALUES (1,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',2,'asd'),(3,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',1,'asd3'),(4,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',2,'4'),(5,1,1,'dsadsadsadsadas','2018-03-17 19:03:40',1,'sadfasdf'),(6,1,6,'内容23','2018-03-31 14:46:05',1,'s标题2'),(7,1,7,'的撒的撒的大声道asdasdasd撒d','2018-03-19 14:27:58',1,'s碧桃2'),(8,1,9,'云顶开业','2018-03-23 11:57:42',2,'s顶开业'),(9,1,9,'云顶交易开业','2018-03-23 11:57:57',1,'s顶交易开业'),(10,1,9,'云顶交易','2018-03-23 11:58:22',2,'s顶交易所开业'),(11,1,10,'区块链开业','2018-03-23 11:58:42',1,'s块链开业'),(12,1,10,'区块链正式开业','2018-03-23 11:59:03',1,'s块链正式开业'),(13,1,1,'区块链今天正式开业','2018-03-23 11:59:24',1,'s块链今天正式开业'),(14,1,11,'区块链是啥','2018-03-23 11:59:43',2,'s么是区块链'),(15,1,10,'交易所是什么','2018-03-23 12:00:10',1,'s么是交易所'),(16,1,11,'这个行业是做什么的','2018-03-23 14:48:33',1,'s个是什么');

#
# Source for table "present_configuration"
#

DROP TABLE IF EXISTS `present_configuration`;
CREATE TABLE `present_configuration` (
  `pc_id` int(11) NOT NULL AUTO_INCREMENT,
  `cw_id` int(11) DEFAULT NULL COMMENT '关联钱包币种id',
  `pc_billOfcharge` decimal(11,6) DEFAULT NULL COMMENT '用户提现手续费百分比%',
  `pc_maxmoney` decimal(30,6) DEFAULT NULL COMMENT '用户可提现最大金额',
  `pc_minmoney` decimal(30,6) DEFAULT NULL COMMENT '用户最小可提现额度',
  `pc_prompt` varchar(255) DEFAULT NULL COMMENT '用户提现提示',
  `pc_multiple` decimal(11,6) DEFAULT NULL COMMENT '提现倍数',
  `pc_max_recharge` decimal(10,6) DEFAULT NULL COMMENT '最大充值金额',
  `pc_min_recharge` decimal(10,6) DEFAULT NULL COMMENT '最小充值金额',
  `pc_poundage_recharge` decimal(10,6) DEFAULT NULL COMMENT '充值手续费',
  `pc_min_purchase` decimal(10,6) DEFAULT NULL COMMENT '最小买入金额',
  `pc_max_purchase` decimal(10,6) DEFAULT NULL COMMENT '最大买入金额',
  `pc_poundage_purchase` decimal(10,6) DEFAULT NULL COMMENT '买入手续费',
  `pc_min_sellout` decimal(10,6) DEFAULT NULL COMMENT '最小卖出金额',
  `pc_max_sellout` decimal(10,6) DEFAULT NULL COMMENT '最大卖出金额',
  `pc_poundage_sellout` decimal(10,6) DEFAULT NULL COMMENT '卖出手续费',
  `pc_money` decimal(10,6) DEFAULT NULL COMMENT '当前价格',
  `pc_market` decimal(10,6) DEFAULT NULL COMMENT '市场值',
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "present_configuration"
#

INSERT INTO `present_configuration` VALUES (1,1,0.222200,800.000000,0.000000,'56555',2.000000,NULL,NULL,NULL,11.000000,222.000000,0.550000,NULL,NULL,1.330000,55.000000,100.000000),(2,2,0.222200,800.000000,0.000000,'56555',2.000000,NULL,NULL,NULL,11.000000,222.000000,0.440000,NULL,NULL,0.280000,55.000000,1000.000000),(3,3,0.222200,800.000000,0.000000,'56555',2.000000,NULL,NULL,NULL,11.000000,222.000000,0.550000,NULL,NULL,0.220000,55.000000,2000.000000),(4,4,0.222200,800.000000,0.000000,'56555',2.000000,NULL,NULL,NULL,11.000000,222.000000,0.550000,NULL,NULL,0.220000,55.000000,3000.000000),(5,5,0.222200,800.000000,0.000000,'56555',2.000000,NULL,NULL,NULL,11.000000,222.000000,0.550000,NULL,NULL,0.220000,55.000000,4000.000000),(6,6,0.222200,800.000000,0.000000,'56555',2.000000,NULL,NULL,NULL,11.000000,222.000000,0.550000,NULL,NULL,0.220000,55.000000,5000.000000);

#
# Source for table "recharge_act"
#

DROP TABLE IF EXISTS `recharge_act`;
CREATE TABLE `recharge_act` (
  `rg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rg_inteface` varchar(255) DEFAULT NULL COMMENT '接口名称',
  `rg_intenum` varchar(255) DEFAULT NULL COMMENT '接口账号',
  `rg_inteKey` varchar(255) DEFAULT NULL COMMENT '接口key',
  `rg_inte_address` varchar(255) DEFAULT NULL COMMENT '接口地址',
  `rg_inte_img` varchar(255) DEFAULT NULL COMMENT '接口图片',
  `rg_inte_ramarks` varchar(255) DEFAULT NULL COMMENT '接口备注',
  `rg_inte_sort` varchar(255) DEFAULT NULL COMMENT '接口排序',
  `state` int(11) DEFAULT NULL COMMENT '状态 (0.禁用 1.启用)',
  PRIMARY KEY (`rg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "recharge_act"
#

INSERT INTO `recharge_act` VALUES (1,'1','1','1','1','1','1','1',1),(2,NULL,'2','2','2','2','2','2',0);

#
# Source for table "recharge_configuration"
#

DROP TABLE IF EXISTS `recharge_configuration`;
CREATE TABLE `recharge_configuration` (
  `rc_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_max_money` decimal(22,12) DEFAULT NULL COMMENT '最大充值金额',
  `rc_min_money` decimal(22,12) DEFAULT NULL COMMENT '最小充值金额',
  `rc_service_charge_money` decimal(22,12) DEFAULT NULL COMMENT '充值手续费',
  PRIMARY KEY (`rc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "recharge_configuration"
#


#
# Source for table "recharge_record"
#

DROP TABLE IF EXISTS `recharge_record`;
CREATE TABLE `recharge_record` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) NOT NULL COMMENT '用户主键',
  `recharge_amount` decimal(10,0) NOT NULL COMMENT '充值金额',
  `arrival_amount` decimal(10,0) NOT NULL COMMENT '到账金额',
  `pay_type` int(11) NOT NULL COMMENT '充值方式 0支付宝 1微信 2 网银转账',
  `recharge_time` datetime NOT NULL COMMENT '充值时间',
  `arrival_time` datetime NOT NULL COMMENT '到账实际',
  `r_status` int(11) NOT NULL COMMENT '状态0人工到账1等待付款2自动到账',
  `prepaid_phone_orders` varchar(105) NOT NULL COMMENT '充值订单',
  `credit_card_cnumbers` varchar(11) DEFAULT NULL COMMENT '银行卡号',
  PRIMARY KEY (`r_id`),
  UNIQUE KEY `yuq` (`prepaid_phone_orders`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "recharge_record"
#

INSERT INTO `recharge_record` VALUES (1,2,123,123,2,'2018-03-23 16:11:07','2018-03-15 16:11:09',1,'123',''),(4,1,666666,123,2,'2018-03-02 01:11:07','2018-03-03 16:11:09',0,'12345',''),(9,2,123,123,2,'2018-03-16 16:11:07','2018-03-02 16:11:09',1,'123456',''),(10,1,123,123,2,'2018-03-24 16:11:07','2018-03-15 16:11:09',0,'12357',''),(11,2,123,123,2,'2018-03-14 16:11:07','2018-03-15 16:11:09',2,'1234568',''),(12,1,1232,1231,2,'2018-03-22 18:27:50','2018-03-22 18:27:50',0,'207181.04795296272','123123123'),(13,1,501,500,2,'2018-03-29 20:02:10','2018-03-29 20:02:10',0,'414954.0438927254','123123123'),(14,1,501,500,2,'2018-03-29 20:10:46','2018-03-29 20:10:46',0,'405028.0086158974','123123123');

#
# Source for table "shanghai_composite_indexyear"
#

DROP TABLE IF EXISTS `shanghai_composite_indexyear`;
CREATE TABLE `shanghai_composite_indexyear` (
  `y_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `y_date` date NOT NULL COMMENT '日期',
  `open` double NOT NULL COMMENT '开盘',
  `close` double NOT NULL COMMENT '收盘',
  `up_down` varchar(22) NOT NULL COMMENT '涨降',
  `up_down_percentage` varchar(44) NOT NULL COMMENT '涨幅百分比',
  `y1` double NOT NULL COMMENT '未知数据',
  `y2` double NOT NULL COMMENT '未知数据2',
  `sum` int(11) NOT NULL COMMENT '怀疑是总数前',
  `sum_later` int(11) NOT NULL COMMENT '怀疑是后',
  `f1` varchar(22) NOT NULL COMMENT '代表-怀疑是下降',
  `type` int(1) NOT NULL COMMENT '类型：1.比卡通BCD 2.鸿承通HCT 3.健康通JKT 4.云鑫通YXT 5.奌点链DDL',
  PRIMARY KEY (`y_id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

#
# Data for table "shanghai_composite_indexyear"
#

INSERT INTO `shanghai_composite_indexyear` VALUES (1,'2015-12-31',3570.47,3539.18,'-33.69','-0.94%',3538.35,3580.6,176963664,25403106,'-',1),(2,'2015-12-30',3566.73,3572.88,'9.14','0.26%',3538.11,3573.68,187889600,26778766,'-',2),(3,'2015-12-29',3528.4,3563.74,'29.96','0.85%',3515.52,3564.17,182551920,25093890,'-',5),(4,'2015-12-28',3635.77,3533.78,'-94.13','-2.59%',3533.78,3641.59,269983264,36904280,'-',5),(5,'2015-12-25',3614.05,3627.91,'15.43','0.43%',3601.74,3635.26,198451120,27466004,'-',5),(6,'2015-12-24',3631.31,3612.49,'-23.6','-0.65%',3572.28,3640.22,227785216,31542126,'-',5),(7,'2015-12-23',3653.28,3636.09,'-15.68','-0.43%',3633.03,3684.57,298201792,41990292,'-',0),(8,'2015-12-22',3645.99,3651.77,'9.3','0.26%',3616.87,3652.63,261178752,36084604,'-',1),(9,'2015-12-21',3568.58,3642.47,'63.51','1.77%',3565.75,3651.06,299849280,39831696,'-',1),(10,'2015-12-18',3574.94,3578.96,'-1.03','-0.03%',3568.16,3614.7,273707904,36538580,'-',2),(11,'2015-12-17',3533.63,3580,'63.81','1.81%',3533.63,3583.41,283856480,38143960,'-',2),(12,'2015-12-16',3522.09,3516.19,'5.83','0.17%',3506.29,3538.69,193482304,26528864,'-',5),(13,'2015-12-15',3518.13,3510.35,'-10.31','-0.29%',3496.85,3529.96,200471344,27627494,'-',5),(14,'2015-12-14',3403.51,3520.67,'86.09','2.51%',3399.28,3521.78,215374624,27921354,'-',2),(15,'2015-12-11',3441.6,3434.58,'-20.91','-0.61%',3410.92,3455.55,182908880,24507642,'-',2),(16,'2015-12-10',3469.81,3455.5,'-16.94','-0.49%',3446.27,3503.65,200427520,27949970,'-',2),(17,'2015-12-09',3462.58,3472.44,'2.37','0.07%',3454.88,3495.7,195698848,26785488,'-',1),(18,'2015-12-08',3518.65,3470.07,'-66.86','-1.89%',3466.79,3518.65,224367312,29782174,'-',5),(19,'2015-12-07',3529.81,3536.93,'11.94','0.34%',3506.62,3543.95,208302576,28056158,'-',1),(20,'2015-12-04',3558.15,3524.99,'-59.83','-1.67%',3510.41,3568.97,251736416,31976682,'-',5),(21,'2015-12-03',3525.73,3584.82,'47.92','1.35%',3517.23,3591.73,281111232,33885908,'-',1),(22,'2015-12-02',3450.28,3536.91,'80.6','2.33%',3427.66,3538.85,301491488,36918304,'-',2),(23,'2015-12-01',3442.44,3456.31,'10.9','0.32%',3417.54,3483.41,252390752,33025674,'-',1),(24,'2015-11-30',3433.85,3445.4,'9.1','0.26%',3327.81,3470.37,304197888,38750364,'-',1),(25,'2015-11-27',3616.54,3436.3,'-199.25','-5.48%',3412.43,3621.9,354287520,46431124,'-',5),(26,'2015-11-26',3659.57,3635.55,'-12.38','-0.34%',3629.86,3668.38,306761600,42624744,'-',1),(27,'2015-11-25',3614.07,3647.93,'31.82','0.88%',3607.52,3648.37,273024864,38080292,'-',2),(28,'2015-11-24',3602.89,3616.11,'5.79','0.16%',3563.1,3616.48,248810512,32775852,'-',2),(29,'2015-11-23',3630.87,3610.31,'-20.18','-0.56%',3598.87,3654.75,315997472,41414824,'-',2),(30,'2015-11-20',3620.79,3630.5,'13.44','0.37%',3607.92,3640.53,310801984,41391088,'-',2),(31,'2015-11-19',3573.78,3617.06,'48.59','1.36%',3561.04,3618.21,247915584,32844260,'-',5),(32,'2015-11-18',3605.06,3568.47,'-36.33','-1.01%',3558.7,3617.07,297580736,39233876,'-',2),(33,'2015-11-17',3629.98,3604.8,'-2.16','-0.06%',3598.07,3678.27,383575456,52152036,'-',1),(34,'2015-11-16',3522.46,3606.96,'26.12','0.73%',3519.42,3607.61,276187040,36942184,'-',5),(35,'2015-11-13',3600.76,3580.84,'-52.06','-1.43%',3564.81,3632.56,345870944,46866864,'-',5),(36,'2015-11-12',3656.82,3632.9,'-17.35','-0.48%',3603.23,3659.31,361717600,48283260,'-',5),(37,'2015-11-11',3635,3650.25,'9.76','0.27%',3605.62,3654.88,360972672,46782220,'-',2),(38,'2015-11-10',3617.4,3640.49,'-6.4','-0.18%',3607.89,3669.53,429746592,56005512,'-',5),(39,'2015-11-09',3588.5,3646.88,'56.85','1.58%',3588.5,3673.76,503016704,63618404,'-',5),(40,'2015-11-06',3514.44,3590.03,'67.21','1.91%',3508.83,3596.38,429167040,54328220,'-',5),(41,'2015-11-05',3459.22,3522.82,'63.18','1.83%',3455.53,3585.66,553254976,67867464,'-',2),(42,'2015-11-04',3325.62,3459.64,'142.94','4.31%',3325.62,3459.65,339078752,42610440,'-',5),(43,'2015-11-03',3330.32,3316.7,'-8.39','-0.25%',3302.18,3346.27,192897440,24436056,'-',2),(44,'2015-11-02',3337.58,3325.08,'-57.48','-1.70%',3322.31,3391.06,230951136,28601932,'-',5),(45,'2015-10-30',3380.28,3382.56,'-4.75','-0.14%',3346.59,3417.2,243595120,30726678,'-',2),(46,'2015-10-29',3387.77,3387.32,'12.12','0.36%',3362.51,3411.71,235676016,29450842,'-',1),(47,'2015-10-28',3417.01,3375.2,'-59.14','-1.72%',3367.23,3439.76,293523296,36165620,'-',2),(48,'2015-10-27',3409.14,3434.34,'4.76','0.14%',3332.62,3441.57,328172768,40888724,'-',5),(49,'2015-10-26',3448.65,3429.58,'17.15','0.50%',3402,3457.52,365560864,45394252,'-',5),(50,'2015-10-23',3377.55,3412.43,'43.7','1.30%',3360.22,3422.02,347372864,42526308,'-',1),(51,'2015-10-22',3292.29,3368.74,'48.06','1.45%',3282.99,3373.78,323739328,37545200,'-',2),(52,'2015-10-21',3428.56,3320.68,'-104.65','-3.06%',3265.44,3447.26,458455424,51850924,'-',2),(53,'2015-10-20',3377.55,3425.33,'38.63','1.14%',3357.86,3425.52,318973760,38358252,'-',1),(54,'2015-10-19',3401.63,3386.7,'-4.65','-0.14%',3355.57,3423.4,378112160,45330364,'-',2),(55,'2015-10-16',3358.3,3391.35,'53.28','1.60%',3334.85,3393.02,395460576,45944784,'-',2),(56,'2015-10-15',3255.03,3338.07,'75.63','2.32%',3254.39,3338.3,316283840,36256556,'-',2),(57,'2015-10-14',3280.02,3262.44,'-30.79','-0.93%',3256.25,3307.32,295077760,33027752,'-',1),(58,'2015-10-13',3262.16,3293.23,'5.57','0.17%',3253.25,3298.63,297153120,33480608,'-',5),(59,'2015-10-12',3193.54,3287.66,'104.51','3.28%',3188.41,3318.71,386294688,43554100,'-',5),(60,'2015-10-09',3146.64,3183.15,'39.79','1.27%',3137.79,3192.72,234851456,25637910,'-',1),(61,'2015-10-08',3156.07,3143.36,'90.58','2.97%',3133.13,3172.28,234276048,25883034,'-',2),(62,'2015-09-30',3052.84,3052.78,'14.64','0.48%',3039.74,3073.3,146642448,15656919,'-',2),(63,'2015-09-29',3055.22,3038.14,'-62.62','-2.02%',3021.16,3068.3,163222672,16968660,'-',1),(64,'2015-09-28',3085.57,3100.76,'8.41','0.27%',3042.31,3103.07,156727536,16642240,'-',1),(65,'2015-09-25',3130.85,3092.35,'-50.34','-1.60%',3063,3149.95,236263872,24897112,'-',5),(66,'2015-09-24',3126.49,3142.69,'26.8','0.86%',3109.69,3151.16,212887712,23136904,'-',2),(67,'2015-09-23',3137.72,3115.89,'-69.73','-2.19%',3104.74,3164.04,236322672,25756004,'-',5),(68,'2015-09-22',3161.32,3185.62,'29.08','0.92%',3152.48,3213.48,274786176,30507132,'-',5),(69,'2015-09-21',3072.09,3156.54,'58.62','1.89%',3060.86,3159.88,239897360,25979668,'-',5),(70,'2015-09-18',3100.28,3097.92,'11.86','0.38%',3070.34,3122.05,209175392,21844244,'-',2),(71,'2015-09-17',3131.98,3086.06,'-66.2','-2.10%',3085.31,3204.7,317602912,33739328,'-',1),(72,'2015-09-16',2998.04,3152.26,'147.09','4.89%',2983.54,3182.93,277524512,28199226,'-',1),(73,'2015-09-15',3043.8,3005.17,'-109.63','-3.52%',2983.92,3081.7,249194448,24390460,'-',2),(74,'2015-09-14',3221.17,3114.8,'-85.44','-2.67%',3049.23,3229.48,346631168,37357680,'-',2),(75,'2015-09-11',3189.48,3200.23,'2.34','0.07%',3163.45,3223.76,224557808,25276946,'-',5),(76,'2015-09-10',3190.55,3197.89,'-45.2','-1.39%',3178.9,3243.28,273261760,29958108,'-',2),(77,'2015-09-09',3182.55,3243.09,'72.64','2.29%',3165.7,3256.74,375328000,41299144,'-',5),(78,'2015-09-08',3054.44,3170.45,'90.03','2.92%',3011.12,3174.71,255415456,26391038,'-',5),(79,'2015-09-07',3149.38,3080.42,'-79.75','-2.52%',3066.3,3217.58,296468096,30268972,'-',2),(80,'2015-09-02',3027.68,3160.17,'-6.46','-0.20%',3019.09,3194.48,438170176,42326236,'-',2),(81,'2015-09-01',3157.83,3166.62,'-39.36','-1.23%',3053.74,3180.33,432432448,42041164,'-',5),(82,'2015-08-31',3203.56,3205.99,'-26.36','-0.82%',3109.16,3207.86,397431392,43106860,'-',5),(83,'2015-08-28',3125.26,3232.35,'148.76','4.82%',3102.95,3235.84,443136928,47463100,'-',2),(84,'2015-08-27',2978.03,3083.59,'156.3','5.34%',2906.49,3085.42,400308384,40428928,'-',2),(85,'2015-08-26',2980.79,2927.29,'-37.68','-1.27%',2850.71,3092.04,466699680,46178896,'-',2),(86,'2015-08-25',3004.13,2964.97,'-244.94','-7.63%',2947.94,3123.03,352325088,35873576,'-',1),(87,'2015-08-24',3373.48,3209.91,'-297.84','-8.49%',3191.88,3388.36,334671776,35881888,'-',2),(88,'2015-08-21',3609.96,3507.74,'-156.55','-4.27%',3490.54,3652.84,369920480,45061648,'-',1),(89,'2015-08-20',3754.57,3664.29,'-129.82','-3.42%',3663.61,3788.01,390063072,50119500,'-',1),(90,'2015-08-19',3646.8,3794.11,'45.95','1.23%',3558.38,3811.43,475396224,59951332,'-',5),(91,'2015-08-18',3999.13,3748.16,'-245.5','-6.15%',3743.39,4006.34,543770816,72246720,'-',1),(92,'2015-08-17',3947.84,3993.67,'28.33','0.71%',3907.4,3994.54,460432064,62632768,'-',2),(93,'2015-08-14',3976.41,3965.33,'10.78','0.27%',3939.83,4000.68,467988224,64746644,'-',1),(94,'2015-08-13',3869.91,3954.56,'68.24','1.76%',3838.16,3955.79,430073280,57868552,'-',1),(95,'2015-08-12',3881.23,3886.32,'-41.59','-1.06%',3871.14,3937.77,442688256,59705028,'-',5),(96,'2015-08-11',3928.81,3927.91,'-0.51','-0.01%',3891.18,3970.34,538923456,71228992,'-',1),(97,'2015-08-10',3786.03,3928.42,'184.21','4.92%',3775.85,3943.62,497304320,65262204,'-',2),(98,'2015-08-07',3692.61,3744.2,'82.67','2.26%',3686.3,3756.74,340757184,44548504,'-',1),(99,'2015-08-06',3625.5,3661.54,'-33.03','-0.89%',3614.74,3710.57,274074656,35751512,'-',1),(100,'2015-08-05',3745.65,3694.57,'-61.97','-1.65%',3676.39,3782.35,366423008,48385028,'-',5),(101,'2015-08-04',3621.85,3756.54,'133.64','3.69%',3601.29,3757.03,362901664,46403624,'-',1),(102,'2015-08-03',3614.99,3622.91,'-40.82','-1.11%',3549.5,3648.94,363968704,44599160,'-',5),(103,'2015-07-31',3655.67,3663.73,'-42.04','-1.13%',3620.17,3729.51,350955712,46047224,'-',2),(104,'2015-07-30',3773.79,3705.77,'-83.4','-2.20%',3685.96,3844.37,457943232,61597792,'-',5),(105,'2015-07-29',3689.82,3789.17,'126.17','3.44%',3612.06,3792.07,434352096,55749196,'-',5),(106,'2015-07-28',3573.14,3663,'-62.56','-1.68%',3537.36,3762.53,563330048,68505752,'-',1),(107,'2015-07-27',3985.57,3725.56,'-345.35','-8.48%',3720.44,4051.16,556003264,72129808,'-',2),(108,'2015-07-24',4124.75,4070.91,'-53.02','-1.29%',4044.83,4184.45,627424896,84302208,'-',2),(109,'2015-07-23',4022.27,4123.92,'97.88','2.43%',4019.04,4132.61,563585984,74353184,'-',5),(110,'2015-07-22',3996.43,4026.04,'8.37','0.21%',3960.86,4042.34,520732224,67883192,'-',5),(111,'2015-07-21',3939.9,4017.67,'25.57','0.64%',3912.8,4041.82,504288000,64641684,'-',1),(112,'2015-07-20',3948.42,3992.11,'34.76','0.88%',3927.12,4021.33,539106688,68825560,'-',2),(113,'2015-07-17',3831.42,3957.35,'134.18','3.51%',3814.15,3994.48,481726272,59306700,'-',5),(114,'2015-07-16',3758.5,3823.18,'17.47','0.46%',3688.44,3877.51,492256224,56985892,'-',1),(115,'2015-07-15',3874.97,3805.7,'-118.78','-3.03%',3741.25,3914.27,601301312,70053656,'-',5),(116,'2015-07-14',3958.37,3924.49,'-45.9','-1.16%',3855.56,4035.43,670558784,83007464,'-',1),(117,'2015-07-13',3918.99,3970.39,'92.58','2.39%',3858.64,4030.19,643489024,78243056,'-',2),(118,'2015-07-10',3707.46,3877.8,'168.47','4.54%',3677.43,3959.22,586364288,68043416,'-',1),(119,'2015-07-09',3432.45,3709.33,'202.14','5.76%',3373.54,3748.48,656914624,67331096,'-',1),(120,'2015-07-08',3467.4,3507.19,'-219.93','-5.90%',3421.53,3599.25,680356928,70024832,'-',5),(121,'2015-07-07',3654.78,3727.12,'-48.79','-1.29%',3585.4,3750.57,698818752,77607256,'-',1),(122,'2015-07-06',3975.21,3775.91,'89','2.41%',3653.04,3975.21,831139264,94342040,'-',2),(123,'2015-07-03',3793.71,3686.92,'-225.85','-5.77%',3629.56,3927.13,548163072,64805412,'-',1),(124,'2015-07-02',4058.62,3912.77,'-140.93','-3.48%',3795.25,4080.39,586015616,73600680,'-',1),(125,'2015-07-01',4214.15,4053.7,'-223.52','-5.23%',4043.37,4317.05,598769408,83807088,'-',1),(126,'2015-06-30',4006.75,4277.22,'224.19','5.53%',3847.88,4279.97,709176576,94152464,'-',1),(127,'2015-06-29',4289.77,4053.03,'-139.84','-3.34%',3875.05,4297.47,673786368,90427136,'-',2),(128,'2015-06-26',4399.93,4192.87,'-334.91','-7.40%',4139.53,4456.9,565217920,78783568,'-',2),(129,'2015-06-25',4711.76,4527.78,'-162.37','-3.46%',4483.55,4720.7,572797568,86537976,'-',5),(130,'2015-06-24',4604.58,4690.15,'113.66','2.48%',4552.13,4691.77,543003712,81506272,'-',5),(131,'2015-06-23',4471.61,4576.49,'98.13','2.19%',4264.77,4577.94,473526112,69361720,'-',1),(132,'2015-06-19',4689.93,4478.36,'-306.99','-6.42%',4476.5,4744.08,452689632,68545816,'-',2),(133,'2015-06-18',4942.52,4785.36,'-182.54','-3.67%',4780.87,4966.77,507440896,78584504,'-',5),(134,'2015-06-17',4890.55,4967.9,'80.47','1.65%',4767.22,4983.66,537101120,83026672,'-',2),(135,'2015-06-16',5004.41,4887.43,'-175.56','-3.47%',4842.1,5029.68,550801408,89542056,'-',5),(136,'2015-06-15',5174.42,5062.99,'-103.36','-2.00%',5048.74,5176.79,637803968,106499200,'-',1),(137,'2015-06-12',5143.34,5166.35,'44.76','0.87%',5103.4,5178.19,625627904,106016744,'-',2),(138,'2015-06-11',5101.44,5121.59,'15.56','0.30%',5050.76,5122.46,563990528,97467056,'-',2),(139,'2015-06-10',5049.2,5106.04,'-7.5','-0.15%',5001.49,5164.16,596969024,100642824,'-',4),(140,'2015-06-09',5145.98,5113.53,'-18.35','-0.36%',5042.96,5147.45,729893824,115080864,'-',5),(141,'2015-06-08',5045.69,5131.88,'108.78','2.17%',4997.48,5146.95,855035072,130992456,'-',1),(142,'2015-06-05',5016.09,5023.1,'75.99','1.54%',4898.07,5051.63,772240832,123230064,'-',2),(143,'2015-06-04',4912.95,4947.1,'37.12','0.76%',4647.41,4947.96,674952384,105227024,'-',5),(144,'2015-06-03',4924.38,4909.98,'-0.55','-0.01%',4822.44,4942.06,611453824,101018000,'-',1),(145,'2015-06-02',4844.7,4910.53,'81.79','1.69%',4797.55,4911.57,623748096,99874576,'-',5),(146,'2015-06-01',4633.1,4828.74,'216.99','4.71%',4615.23,4829.5,593389056,93445544,'-',1),(147,'2015-05-29',4603.47,4611.74,'-8.52','-0.18%',4431.56,4698.19,611262400,95536560,'-',2),(148,'2015-05-28',4943.74,4620.27,'-321.45','-6.50%',4614.24,4986.5,782964544,124792600,'-',1),(149,'2015-05-27',4932.85,4941.71,'30.82','0.63%',4857.06,4958.16,681165376,111626184,'-',2),(150,'2015-05-26',4854.85,4910.9,'97.1','2.02%',4779.08,4911.69,704892864,113850936,'-',5),(151,'2015-05-25',4660.08,4813.8,'156.2','3.35%',4656.83,4814.67,682461376,107929560,'-',1),(152,'2015-05-22',4584.98,4657.6,'128.17','2.83%',4562.99,4658.27,655591296,100717320,'-',2),(153,'2015-05-21',4456.44,4529.42,'83.13','1.87%',4438.26,4530.48,464996512,72908056,'-',2),(154,'2015-05-20',4434.98,4446.29,'28.74','0.65%',4432.28,4520.54,514106208,80608056,'-',2),(155,'2015-05-19',4285.78,4417.55,'134.06','3.13%',4285.78,4418.4,436735232,69381256,'-',2),(156,'2015-05-18',4277.9,4283.49,'-25.2','-0.58%',4260.51,4324.83,380057440,59455952,'-',1),(157,'2015-05-15',4366.82,4308.69,'-69.62','-1.59%',4278.55,4366.82,439706208,66596564,'-',2),(158,'2015-05-14',4372.82,4378.31,'2.55','0.06%',4329.04,4397.75,449077952,66988224,'-',2),(159,'2015-05-13',4402.38,4375.76,'-25.46','-0.58%',4342.48,4415.63,510490464,78075496,'-',2),(160,'2015-05-12',4342.37,4401.22,'67.64','1.56%',4317.98,4402.31,521866400,79346376,'-',5),(161,'2015-05-11',4231.27,4333.58,'127.67','3.04%',4187.82,4334.88,488750528,71524664,'-',1),(162,'2015-05-08',4152.98,4205.92,'93.7','2.28%',4099.04,4206.86,397428096,55964868,'-',2),(163,'2015-05-07',4197.9,4112.21,'-117.05','-2.77%',4108.01,4213.76,394566656,54020632,'-',2),(164,'2015-05-06',4311.64,4229.27,'-69.44','-1.62%',4187.37,4376.35,481732992,71653624,'-',2),(165,'2015-05-05',4479.85,4298.71,'-181.76','-4.06%',4282.24,4488.87,572858624,80556608,'-',5),(166,'2015-05-04',4441.34,4480.46,'38.81','0.87%',4387.43,4487.57,494173376,71754080,'-',1),(167,'2015-04-30',4483.01,4441.65,'-34.96','-0.78%',4441.05,4507.34,526728000,77434920,'-',2),(168,'2015-04-29',4446.12,4476.62,'0.4','0.01%',4398.64,4499.94,519834208,75240176,'-',2),(169,'2015-04-28',4527.63,4476.21,'-51.18','-1.13%',4432.9,4572.39,767676416,106117216,'-',2),(170,'2015-04-27',4441.93,4527.4,'133.71','3.04%',4441.93,4529.73,671088512,97524208,'-',5),(171,'2015-04-24',4355.95,4393.69,'-20.82','-0.47%',4318.12,4416.38,628555008,91687296,'-',1),(172,'2015-04-23',4414.48,4414.51,'16.01','0.36%',4358.84,4444.41,667344640,96302488,'-',2),(173,'2015-04-22',4304.6,4398.49,'104.87','2.44%',4297.95,4400.19,680305088,97687696,'-',5),(174,'2015-04-21',4212.19,4293.62,'76.55','1.82%',4188.57,4294.38,634470656,86244776,'-',2),(175,'2015-04-20',4301.35,4217.08,'-70.22','-1.64%',4190.68,4356,857132800,100000000,'-',5),(176,'2015-04-17',4254.72,4287.3,'92.47','2.20%',4238.91,4317.22,701706240,91563304,'-',1),(177,'2015-04-16',4055.92,4194.82,'110.66','2.71%',4031.24,4195.31,551242944,71208248,'-',2),(178,'2015-04-15',4135.65,4084.16,'-51.4','-1.24%',4069.01,4175.49,613005824,77312592,'-',2),(179,'2015-04-14',4125.78,4135.56,'13.85','0.34%',4091.26,4168.35,610683520,81464520,'-',1),(180,'2015-04-13',4072.72,4121.71,'87.4','2.17%',4057.29,4128.07,589814208,78166736,'-',5),(181,'2015-04-10',3947.49,4034.31,'76.78','1.94%',3929.32,4040.35,484283648,66850416,'-',1),(182,'2015-04-09',4006.13,3957.53,'-37.28','-0.93%',3900.03,4016.4,585176832,81671088,'-',2),(183,'2015-04-08',3976.53,3994.81,'33.43','0.84%',3903.65,4000.22,618085440,83915928,'-',1),(184,'2015-04-07',3899.42,3961.38,'97.45','2.52%',3891.73,3961.67,570447552,74642400,'-',1),(185,'2015-04-03',3803.38,3863.93,'38.14','1.00%',3792.21,3864.41,473033312,63565136,'-',5),(186,'2015-04-02',3827.69,3825.78,'15.49','0.41%',3775.89,3835.45,479299680,63202892,'-',1),(187,'2015-04-01',3748.34,3810.29,'62.4','1.66%',3742.21,3817.08,447458304,59241832,'-',2),(188,'2015-03-31',3822.99,3747.9,'-38.67','-1.02%',3737.04,3835.57,561676032,72129488,'-',1),(189,'2015-03-30',3710.61,3786.57,'95.47','2.59%',3710.61,3795.94,564702400,69212536,'-',1),(190,'2015-03-27',3686.13,3691.1,'9','0.24%',3656.83,3710.48,408945184,50929848,'-',5),(191,'2015-03-26',3641.94,3682.09,'21.37','0.58%',3615.01,3707.32,488647200,61951560,'-',1),(192,'2015-03-25',3680.95,3660.73,'-30.68','-0.83%',3634.56,3693.15,521886336,64549892,'-',2),(193,'2015-03-24',3692.57,3691.41,'3.68','0.10%',3600.7,3715.87,639554688,75488472,'-',2),(194,'2015-03-23',3640.1,3687.73,'70.41','1.95%',3635.49,3688.25,536062816,66157464,'-',2),(195,'2015-03-20',3587.08,3617.32,'35.05','0.98%',3569.38,3632.34,516661664,65177196,'-',2),(196,'2015-03-19',3576.02,3582.27,'4.97','0.14%',3546.84,3600.68,537346624,61224968,'-',1),(197,'2015-03-18',3510.5,3577.3,'74.45','2.13%',3503.85,3577.66,545217152,61736700,'-',2),(198,'2015-03-17',3469.6,3502.85,'53.54','1.55%',3459.69,3504.12,520939520,60150068,'-',2),(199,'2015-03-16',3391.16,3449.3,'76.39','2.26%',3377.09,3449.3,399132416,47935532,'-',2),(200,'2015-03-13',3359.49,3372.91,'23.59','0.70%',3352.15,3391.25,328410144,37404140,'-',2),(201,'2015-03-12',3314.81,3349.32,'58.42','1.78%',3300.49,3360.05,357295104,40719240,'-',1),(202,'2015-03-11',3289.59,3290.9,'4.83','0.15%',3278.47,3325.05,282985536,32757308,'-',2),(203,'2015-03-10',3289.08,3286.07,'-16.34','-0.49%',3277.09,3309.92,285817568,32995596,'-',2),(204,'2015-03-09',3224.31,3302.41,'61.22','1.89%',3198.37,3307.7,321495456,35992752,'-',2),(205,'2015-03-06',3248.04,3241.19,'-7.29','-0.22%',3234.53,3266.93,282915808,32834414,'-',5),(206,'2015-03-05',3264.08,3248.48,'-31.06','-0.95%',3221.67,3266.64,320663584,37358000,'-',1),(207,'2015-03-04',3264.18,3279.53,'16.48','0.51%',3250.48,3286.59,293639520,34678976,'-',2),(208,'2015-03-03',3317.7,3263.05,'-73.23','-2.20%',3260.43,3317.7,382044608,44159348,'-',5),(209,'2015-03-02',3332.72,3336.28,'25.98','0.78%',3298.67,3336.76,346445664,41025956,'-',5),(210,'2015-02-27',3296.83,3310.3,'11.94','0.36%',3291.01,3324.55,299163712,33501958,'-',5),(211,'2015-02-26',3222.15,3298.36,'69.52','2.15%',3202.19,3300.62,301263872,33434746,'-',1),(212,'2015-02-25',3256.48,3228.84,'-18.06','-0.56%',3215.55,3257.22,233348096,26514336,'-',2),(213,'2015-02-17',3230.88,3246.91,'24.54','0.76%',3230.77,3255.73,228332624,26334004,'-',1),(214,'2015-02-16',3206.14,3222.36,'18.54','0.58%',3195.88,3228.85,223797440,26595070,'-',1),(215,'2015-02-13',3186.81,3203.83,'30.41','0.96%',3182.79,3237.16,261290432,29301768,'-',5),(216,'2015-02-12',3157.96,3173.42,'15.71','0.50%',3134.24,3181.77,194592320,22969158,'-',1),(217,'2015-02-11',3145.76,3157.7,'16.11','0.51%',3139.05,3166.42,172840096,21086256,'-',2),(218,'2015-02-10',3090.49,3141.59,'46.47','1.50%',3084.25,3142.1,193817136,22508492,'-',2),(219,'2015-02-09',3063.51,3095.12,'19.22','0.62%',3049.11,3119.03,206108384,24071968,'-',2),(220,'2015-02-06',3120.09,3075.91,'-60.62','-1.93%',3052.94,3129.54,246749680,26650278,'-',5),(221,'2015-02-05',3251.21,3136.53,'-37.6','-1.18%',3135.82,3251.21,306139296,34826696,'-',1),(222,'2015-02-04',3212.82,3174.13,'-30.78','-0.96%',3171.14,3238.98,249098080,29015516,'-',2),(223,'2015-02-03',3156.09,3204.91,'76.61','2.45%',3129.73,3207.94,248192160,28335594,'-',2),(224,'2015-02-02',3148.14,3128.3,'-82.06','-2.56%',3122.57,3175.13,250861632,26684996,'-',2),(225,'2015-01-30',3273.75,3210.36,'-51.94','-1.59%',3210.31,3288.5,258312544,28426564,'-',5),(226,'2015-01-29',3259,3262.3,'-43.43','-1.31%',3234.24,3286.79,274658624,29642450,'-',1),(227,'2015-01-28',3325.72,3305.74,'-47.22','-1.41%',3294.66,3354.8,301927104,34156428,'-',2),(228,'2015-01-27',3389.85,3352.96,'-30.22','-0.89%',3290.22,3390.22,374517568,41829884,'-',5),(229,'2015-01-26',3347.26,3383.18,'31.42','0.94%',3321.31,3384.8,317540992,35842744,'-',2),(230,'2015-01-23',3357.1,3351.76,'8.42','0.25%',3328.29,3406.79,366249248,42097952,'-',5),(231,'2015-01-22',3327.32,3343.34,'19.73','0.59%',3293.98,3352.38,353382976,40787408,'-',1),(232,'2015-01-21',3189.08,3323.61,'150.56','4.74%',3178.34,3337,410956032,47375868,'-',2),(233,'2015-01-20',3114.56,3173.05,'56.7','1.82%',3100.48,3190.25,357080800,41629524,'-',2),(234,'2015-01-19',3189.73,3116.35,'-260.14','-7.70%',3095.07,3262.21,401098784,40988600,'-',5),(235,'2015-01-16',3343.6,3376.5,'40.04','1.20%',3340.49,3400.32,339876768,39225388,'-',5),(236,'2015-01-15',3224.07,3336.46,'114.02','3.54%',3207.54,3337.08,282546240,33061054,'-',1),(237,'2015-01-14',3242.34,3222.44,'-12.86','-0.40%',3193.98,3268.48,240190752,26720452,'-',2),(238,'2015-01-13',3223.54,3235.3,'5.98','0.19%',3214.41,3259.39,230725760,27358878,'-',1),(239,'2015-01-12',3258.21,3229.32,'-56.1','-1.71%',3191.58,3275.19,322064672,36627308,'-',1),(240,'2015-01-09',3276.97,3285.41,'-8.04','-0.24%',3267.51,3404.83,410240864,45864804,'-',5),(241,'2015-01-08',3371.96,3293.46,'-80.5','-2.39%',3285.09,3381.57,371131200,39923032,'-',1),(242,'2015-01-07',3326.65,3373.95,'22.51','0.67%',3312.21,3374.9,391918880,43641672,'-',2),(243,'2015-01-06',3330.8,3351.45,'0.93','0.03%',3303.18,3394.22,501661696,53239848,'-',1),(244,'2015-01-05',3258.63,3350.52,'115.84','3.58%',3253.88,3369.28,531352384,54976008,'-',5);

#
# Source for table "shanghai_securities_composite_index"
#

DROP TABLE IF EXISTS `shanghai_securities_composite_index`;
CREATE TABLE `shanghai_securities_composite_index` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上证指数主键',
  `s_date` date NOT NULL COMMENT '日期',
  `open` double NOT NULL COMMENT '开盘',
  `close` double NOT NULL COMMENT '收盘',
  `lowest` double NOT NULL COMMENT '最低',
  `highest` double NOT NULL COMMENT '最高',
  `type` int(11) NOT NULL COMMENT '类型：1.比卡通BCD 2.鸿承通HCT 3.健康通JKT 4.云鑫通YXT 5.奌点链DDL',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

#
# Data for table "shanghai_securities_composite_index"
#

INSERT INTO `shanghai_securities_composite_index` VALUES (1,'2013-01-24',2320.26,2320.26,2287.3,2362.94,1),(2,'2013-01-28',2295.35,2346.5,2295.35,2346.92,2),(3,'2013-01-29',2347.22,2358.98,2337.35,2363.8,2),(4,'2013-01-30',2360.75,2382.48,2347.89,2383.76,2),(5,'2013-01-31',2383.43,2385.42,2371.23,2391.82,5),(6,'2013-02-01',2377.41,2419.02,2369.57,2421.15,1),(7,'2013-02-04',2425.92,2428.15,2417.58,2440.38,2),(8,'2013-02-05',2411,2433.13,2403.3,2437.42,5),(9,'2013-02-06',2432.68,2434.48,2427.7,2441.73,1),(10,'2013-02-07',2430.69,2418.53,2394.22,2433.89,5),(11,'2013-02-08',2416.62,2432.4,2414.4,2443.03,1),(12,'2013-02-18',2441.91,2421.56,2415.43,2444.8,2),(13,'2013-02-19',2420.26,2382.91,2373.53,2427.07,1),(14,'2013-02-20',2383.49,2397.18,2370.61,2397.94,1),(15,'2013-02-21',2378.82,2325.95,2309.17,2378.82,5),(16,'2013-02-22',2322.94,2314.16,2308.76,2330.88,1),(17,'2013-02-25',2320.62,2325.82,2315.01,2338.78,2),(18,'2013-02-26',2313.74,2293.34,2289.89,2340.71,2),(19,'2013-02-27',2297.77,2313.22,2292.03,2324.63,2),(20,'2013-02-28',2322.32,2365.59,2308.92,2366.16,5),(21,'2013-03-01',2364.54,2359.51,2330.86,2369.65,1),(22,'2013-03-04',2332.08,2273.4,2259.25,2333.54,2),(23,'2013-03-05',2274.81,2326.31,2270.1,2328.14,2),(24,'2013-03-06',2333.61,2347.18,2321.6,2351.44,1),(25,'2013-03-07',2340.44,2324.29,2304.27,2352.02,5),(26,'2013-03-08',2326.42,2318.61,2314.59,2333.67,1),(27,'2013-03-11',2314.68,2310.59,2296.58,2320.96,5),(28,'2013-03-12',2309.16,2286.6,2264.83,2333.29,5),(29,'2013-03-13',2282.17,2263.97,2253.25,2286.33,2),(30,'2013-03-14',2255.77,2270.28,2253.31,2276.22,5),(31,'2013-03-15',2269.31,2278.4,2250,2312.08,1),(32,'2013-03-18',2267.29,2240.02,2239.21,2276.05,2),(33,'2013-03-19',2244.26,2257.43,2232.02,2261.31,1),(34,'2013-03-20',2257.74,2317.37,2257.42,2317.86,2),(35,'2013-03-21',2318.21,2324.24,2311.6,2330.81,5),(36,'2013-03-22',2321.4,2328.28,2314.97,2332,1),(37,'2013-03-25',2334.74,2326.72,2319.91,2344.89,2),(38,'2013-03-26',2318.58,2297.67,2281.12,2319.99,5),(39,'2013-03-27',2299.38,2301.26,2289,2323.48,5),(40,'2013-03-28',2273.55,2236.3,2232.91,2273.55,5),(41,'2013-03-29',2238.49,2236.62,2228.81,2246.87,1),(42,'2013-04-01',2229.46,2234.4,2227.31,2243.95,2),(43,'2013-04-02',2234.9,2227.74,2220.44,2253.42,2),(44,'2013-04-03',2232.69,2225.29,2217.25,2241.34,1),(45,'2013-04-08',2196.24,2211.59,2180.67,2212.59,5),(46,'2013-04-09',2215.47,2225.77,2215.47,2234.73,1),(47,'2013-04-10',2224.93,2226.13,2212.56,2233.04,2),(48,'2013-04-11',2236.98,2219.55,2217.26,2242.48,1),(49,'2013-04-12',2218.09,2206.78,2204.44,2226.26,1),(50,'2013-04-15',2199.91,2181.94,2177.39,2204.99,5),(51,'2013-04-16',2169.63,2194.85,2165.78,2196.43,1),(52,'2013-04-17',2195.03,2193.8,2178.47,2197.51,2),(53,'2013-04-18',2181.82,2197.6,2175.44,2206.03,5),(54,'2013-04-19',2201.12,2244.64,2200.58,2250.11,5),(55,'2013-04-22',2236.4,2242.17,2232.26,2245.12,5),(56,'2013-04-23',2242.62,2184.54,2182.81,2242.62,1),(57,'2013-04-24',2187.35,2218.32,2184.11,2226.12,2),(58,'2013-04-25',2213.19,2199.31,2191.85,2224.63,2),(59,'2013-04-26',2203.89,2177.91,2173.86,2210.58,1),(60,'2013-05-02',2170.78,2174.12,2161.14,2179.65,5),(61,'2013-05-03',2179.05,2205.5,2179.05,2222.81,1),(62,'2013-05-06',2212.5,2231.17,2212.5,2236.07,2),(63,'2013-05-07',2227.86,2235.57,2219.44,2240.26,5),(64,'2013-05-08',2242.39,2246.3,2235.42,2255.21,2),(65,'2013-05-09',2246.96,2232.97,2221.38,2247.86,5),(66,'2013-05-10',2228.82,2246.83,2225.81,2247.67,1),(67,'2013-05-13',2247.68,2241.92,2231.36,2250.85,2),(68,'2013-05-14',2238.9,2217.01,2205.87,2239.93,2),(69,'2013-05-15',2217.09,2224.8,2213.58,2225.19,1),(70,'2013-05-16',2221.34,2251.81,2210.77,2252.87,5),(71,'2013-05-17',2249.81,2282.87,2248.41,2288.09,1),(72,'2013-05-20',2286.33,2299.99,2281.9,2309.39,2),(73,'2013-05-21',2297.11,2305.11,2290.12,2305.3,3),(74,'2013-05-22',2303.75,2302.4,2292.43,2314.18,1),(75,'2013-05-23',2293.81,2275.67,2274.1,2304.95,5),(76,'2013-05-24',2281.45,2288.53,2270.25,2292.59,1),(77,'2013-05-27',2286.66,2293.08,2283.94,2301.7,2),(78,'2013-05-28',2293.4,2321.32,2281.47,2322.1,5),(79,'2013-05-29',2323.54,2324.02,2321.17,2334.33,1),(80,'2013-05-30',2316.25,2317.75,2310.49,2325.72,2),(81,'2013-05-31',2320.74,2300.59,2299.37,2325.53,1),(82,'2013-06-03',2300.21,2299.25,2294.11,2313.43,2),(83,'2013-06-04',2297.1,2272.42,2264.76,2297.1,2),(84,'2013-06-05',2270.71,2270.93,2260.87,2276.86,5),(85,'2013-06-06',2264.43,2242.11,2240.07,2266.69,5),(86,'2013-06-07',2242.26,2210.9,2205.07,2250.63,1),(87,'2013-06-13',2190.1,2148.35,2126.22,2190.1,2);

#
# Source for table "short_messageinteface"
#

DROP TABLE IF EXISTS `short_messageinteface`;
CREATE TABLE `short_messageinteface` (
  `smg_id` int(11) NOT NULL AUTO_INCREMENT,
  `smg_inteface` varchar(255) DEFAULT NULL COMMENT '短信接口',
  `smg_inteusername` varchar(255) DEFAULT NULL COMMENT '短信接口用户名',
  `smg_intepassword` varchar(255) DEFAULT NULL COMMENT '短信接口密码',
  `smg_iafetycode` varchar(255) DEFAULT NULL COMMENT '短信接口安全码',
  PRIMARY KEY (`smg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "short_messageinteface"
#

INSERT INTO `short_messageinteface` VALUES (1,'1111','88','3333','455');

#
# Source for table "stock"
#

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `u_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `stock_share` decimal(20,8) DEFAULT '0.00000000' COMMENT '送股数量',
  `stock_currency` varchar(20) DEFAULT NULL COMMENT '币种',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "stock"
#

INSERT INTO `stock` VALUES (1,2,'fsadsad3',2.00000000,'1','2018-03-20 15:14:14'),(2,2,'fsadsad3',5.00000000,'2','2018-03-20 15:14:21'),(3,11,'asd123456',9.00000000,'3','2018-03-20 15:14:35');

#
# Source for table "stock_configuration"
#

DROP TABLE IF EXISTS `stock_configuration`;
CREATE TABLE `stock_configuration` (
  `stock_configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_currency` varchar(20) DEFAULT NULL COMMENT '币种',
  `stock_share` decimal(20,8) DEFAULT '0.00000000' COMMENT '送股数量',
  `stock_share_next` decimal(20,8) DEFAULT '0.00000000' COMMENT '每次送股数量 ',
  `stock_share_interval` decimal(20,0) DEFAULT '0' COMMENT '每次送股间隔时间',
  `stock_condition` int(11) DEFAULT '1' COMMENT '选择送股条件(1买入成交量按',
  PRIMARY KEY (`stock_configuration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "stock_configuration"
#

INSERT INTO `stock_configuration` VALUES (1,'bsys',100.00000000,10.00000000,1,1);

#
# Source for table "stock_detail"
#

DROP TABLE IF EXISTS `stock_detail`;
CREATE TABLE `stock_detail` (
  `stock_detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `u_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `stock_circulate` decimal(20,8) DEFAULT '0.00000000' COMMENT '流通股数量',
  `stock_not_circulate` decimal(20,8) DEFAULT '0.00000000' COMMENT '非流通股数量',
  `stock_contribution` decimal(20,2) DEFAULT '0.00' COMMENT '贡献比例',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`stock_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "stock_detail"
#

INSERT INTO `stock_detail` VALUES (1,2,'fsadsad3',0.00000000,50.45678912,0.00,'2018-03-20 15:13:38'),(2,11,'asd123456',0.00000000,35.12345678,0.00,'2018-03-20 15:13:46');

#
# Source for table "sys_dept"
#

DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='部门表';

#
# Data for table "sys_dept"
#

INSERT INTO `sys_dept` VALUES (24,1,0,'[0],','总公司','总公司','',NULL),(25,2,24,'[0],[24],','开发部','开发部','',NULL),(26,3,24,'[0],[24],','运营部','运营部','',NULL),(27,4,24,'[0],[24],','战略部','战略部','',NULL);

#
# Source for table "sys_dict"
#

DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='字典表';

#
# Data for table "sys_dict"
#

INSERT INTO `sys_dict` VALUES (16,0,0,'状态',NULL),(17,1,16,'启用',NULL),(18,2,16,'禁用',NULL),(29,0,0,'性别',NULL),(30,1,29,'男',NULL),(31,2,29,'女',NULL),(35,0,0,'账号状态',NULL),(36,1,35,'启用',NULL),(37,2,35,'冻结',NULL),(38,3,35,'已删除',NULL),(39,0,0,'qqq',NULL),(40,11,39,'11',NULL);

#
# Source for table "sys_expense"
#

DROP TABLE IF EXISTS `sys_expense`;
CREATE TABLE `sys_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(20,2) DEFAULT NULL COMMENT '报销金额',
  `desc` varchar(255) DEFAULT '' COMMENT '描述',
  `state` int(11) DEFAULT NULL COMMENT '状态: 1.待提交  2:待审核   3.审核通过 4:驳回',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `processId` varchar(255) DEFAULT NULL COMMENT '流程定义id',
  `createtime` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='报销表';

#
# Data for table "sys_expense"
#

INSERT INTO `sys_expense` VALUES (1,2.00,'2222222222',2,1,'5001','0000-00-00 00:00:00'),(2,1111111111.00,'111111111111111',2,1,'10001','0000-00-00 00:00:00');

#
# Source for table "sys_login_log"
#

DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8 COMMENT='登录记录';

#
# Data for table "sys_login_log"
#

INSERT INTO `sys_login_log` VALUES (216,'登录失败日志',NULL,'2018-01-11 17:10:22','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(217,'登录失败日志',NULL,'2018-01-11 17:10:38','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(218,'登录失败日志',NULL,'2018-01-11 17:11:59','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(219,'登录失败日志',NULL,'2018-01-11 17:21:50','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(220,'登录失败日志',NULL,'2018-01-11 17:21:58','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(221,'登录失败日志',NULL,'2018-01-11 17:22:16','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(222,'登录日志',1,'2018-01-11 17:25:46','成功',NULL,'0:0:0:0:0:0:0:1'),(223,'登录日志',1,'2018-01-11 17:31:04','成功',NULL,'127.0.0.1'),(224,'登录日志',1,'2018-01-11 17:32:58','成功',NULL,'127.0.0.1'),(225,'登录失败日志',NULL,'2018-01-19 10:35:53','成功','账号:admin,账号密码错误','127.0.0.1'),(226,'登录日志',1,'2018-01-19 10:36:09','成功',NULL,'127.0.0.1'),(227,'登录日志',1,'2018-01-19 10:37:16','成功',NULL,'127.0.0.1'),(228,'登录失败日志',NULL,'2018-01-19 10:37:19','成功','账号:。。。,账号密码错误','127.0.0.1'),(229,'登录失败日志',NULL,'2018-01-19 10:37:32','成功','账号:123,账号密码错误','127.0.0.1'),(230,'登录日志',1,'2018-01-19 10:37:59','成功',NULL,'127.0.0.1'),(231,'登录失败日志',NULL,'2018-01-19 10:40:31','成功','账号:123,账号密码错误','127.0.0.1'),(232,'登录失败日志',NULL,'2018-03-30 14:12:02','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(233,'登录失败日志',NULL,'2018-03-30 14:12:29','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(234,'登录失败日志',NULL,'2018-03-30 14:12:33','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(235,'登录失败日志',NULL,'2018-03-30 14:12:40','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(236,'登录日志',1,'2018-03-30 14:13:02','成功',NULL,'0:0:0:0:0:0:0:1'),(237,'退出日志',1,'2018-03-30 14:13:12','成功',NULL,'0:0:0:0:0:0:0:1'),(238,'登录日志',1,'2018-03-30 14:16:23','成功',NULL,'0:0:0:0:0:0:0:1'),(239,'登录失败日志',NULL,'2018-04-09 11:34:14','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(240,'登录日志',1,'2018-04-09 11:34:28','成功',NULL,'0:0:0:0:0:0:0:1'),(241,'登录日志',1,'2018-04-09 11:39:51','成功',NULL,'127.0.0.1'),(242,'登录日志',1,'2018-04-09 11:42:13','成功',NULL,'127.0.0.1'),(243,'登录日志',1,'2018-04-09 11:45:07','成功',NULL,'127.0.0.1'),(244,'登录日志',1,'2018-04-09 11:50:25','成功',NULL,'127.0.0.1'),(245,'登录日志',1,'2018-05-05 15:16:55','成功',NULL,'0:0:0:0:0:0:0:1'),(246,'登录日志',1,'2018-05-05 15:25:39','成功',NULL,'0:0:0:0:0:0:0:1'),(247,'退出日志',1,'2018-05-05 15:25:56','成功',NULL,'0:0:0:0:0:0:0:1'),(248,'登录日志',1,'2018-05-05 15:31:31','成功',NULL,'0:0:0:0:0:0:0:1'),(249,'登录日志',1,'2018-05-05 15:39:48','成功',NULL,'0:0:0:0:0:0:0:1'),(250,'登录日志',1,'2018-05-05 15:40:19','成功',NULL,'0:0:0:0:0:0:0:1'),(251,'登录日志',1,'2018-05-05 15:40:53','成功',NULL,'0:0:0:0:0:0:0:1'),(252,'登录日志',1,'2018-05-05 15:51:09','成功',NULL,'0:0:0:0:0:0:0:1'),(253,'登录日志',1,'2018-05-05 16:10:25','成功',NULL,'0:0:0:0:0:0:0:1'),(254,'登录日志',1,'2018-05-05 16:11:39','成功',NULL,'0:0:0:0:0:0:0:1'),(255,'登录日志',1,'2018-05-05 16:12:46','成功',NULL,'0:0:0:0:0:0:0:1'),(256,'登录日志',1,'2018-05-05 16:14:30','成功',NULL,'0:0:0:0:0:0:0:1'),(257,'登录日志',1,'2018-05-05 16:28:07','成功',NULL,'0:0:0:0:0:0:0:1'),(258,'登录日志',1,'2018-05-05 20:38:58','成功',NULL,'0:0:0:0:0:0:0:1'),(259,'登录日志',1,'2018-05-05 20:40:22','成功',NULL,'0:0:0:0:0:0:0:1'),(260,'登录日志',1,'2018-05-05 20:44:40','成功',NULL,'0:0:0:0:0:0:0:1'),(261,'登录日志',1,'2018-05-05 20:47:08','成功',NULL,'0:0:0:0:0:0:0:1'),(262,'登录日志',1,'2018-05-05 20:48:27','成功',NULL,'0:0:0:0:0:0:0:1'),(263,'登录日志',1,'2018-05-05 20:52:03','成功',NULL,'0:0:0:0:0:0:0:1'),(264,'登录日志',1,'2018-05-06 00:42:03','成功',NULL,'0:0:0:0:0:0:0:1'),(265,'登录日志',1,'2018-05-06 00:56:33','成功',NULL,'0:0:0:0:0:0:0:1'),(266,'登录日志',1,'2018-05-06 00:57:34','成功',NULL,'0:0:0:0:0:0:0:1'),(267,'退出日志',1,'2018-05-06 00:57:36','成功',NULL,'0:0:0:0:0:0:0:1'),(268,'登录日志',1,'2018-05-06 00:57:37','成功',NULL,'0:0:0:0:0:0:0:1'),(269,'退出日志',1,'2018-05-06 00:58:10','成功',NULL,'0:0:0:0:0:0:0:1'),(270,'登录日志',1,'2018-05-06 00:58:11','成功',NULL,'0:0:0:0:0:0:0:1'),(271,'退出日志',1,'2018-05-06 00:58:51','成功',NULL,'0:0:0:0:0:0:0:1'),(272,'登录日志',1,'2018-05-06 00:58:53','成功',NULL,'0:0:0:0:0:0:0:1'),(273,'登录日志',1,'2018-05-06 00:59:06','成功',NULL,'0:0:0:0:0:0:0:1'),(274,'退出日志',1,'2018-05-06 01:04:02','成功',NULL,'0:0:0:0:0:0:0:1'),(275,'登录日志',1,'2018-05-06 01:04:03','成功',NULL,'0:0:0:0:0:0:0:1'),(276,'退出日志',1,'2018-05-06 01:04:54','成功',NULL,'0:0:0:0:0:0:0:1'),(277,'登录日志',1,'2018-05-06 01:04:55','成功',NULL,'0:0:0:0:0:0:0:1'),(278,'退出日志',1,'2018-05-06 01:05:42','成功',NULL,'0:0:0:0:0:0:0:1'),(279,'登录日志',1,'2018-05-06 01:05:44','成功',NULL,'0:0:0:0:0:0:0:1'),(280,'登录日志',1,'2018-05-06 01:11:39','成功',NULL,'0:0:0:0:0:0:0:1'),(281,'登录日志',1,'2018-05-06 01:21:26','成功',NULL,'0:0:0:0:0:0:0:1'),(282,'登录日志',1,'2018-05-06 01:24:17','成功',NULL,'0:0:0:0:0:0:0:1'),(283,'登录日志',1,'2018-05-06 01:36:33','成功',NULL,'0:0:0:0:0:0:0:1'),(284,'退出日志',1,'2018-05-06 01:41:10','成功',NULL,'0:0:0:0:0:0:0:1'),(285,'登录日志',1,'2018-05-06 01:41:11','成功',NULL,'0:0:0:0:0:0:0:1'),(286,'退出日志',1,'2018-05-06 01:42:25','成功',NULL,'0:0:0:0:0:0:0:1'),(287,'登录日志',1,'2018-05-06 01:42:26','成功',NULL,'0:0:0:0:0:0:0:1'),(288,'登录日志',1,'2018-05-06 12:08:43','成功',NULL,'0:0:0:0:0:0:0:1'),(289,'退出日志',1,'2018-05-06 12:09:09','成功',NULL,'0:0:0:0:0:0:0:1'),(290,'登录日志',1,'2018-05-06 12:09:17','成功',NULL,'0:0:0:0:0:0:0:1'),(291,'登录日志',1,'2018-05-06 12:09:30','成功',NULL,'0:0:0:0:0:0:0:1'),(292,'登录日志',1,'2018-05-06 12:11:36','成功',NULL,'0:0:0:0:0:0:0:1'),(293,'登录日志',1,'2018-05-06 12:16:27','成功',NULL,'0:0:0:0:0:0:0:1'),(294,'登录日志',1,'2018-05-06 12:18:06','成功',NULL,'0:0:0:0:0:0:0:1'),(295,'登录日志',1,'2018-05-06 12:19:54','成功',NULL,'0:0:0:0:0:0:0:1'),(296,'登录日志',1,'2018-05-06 12:22:50','成功',NULL,'0:0:0:0:0:0:0:1'),(297,'退出日志',1,'2018-05-06 12:26:41','成功',NULL,'0:0:0:0:0:0:0:1'),(298,'登录日志',1,'2018-05-06 12:26:55','成功',NULL,'0:0:0:0:0:0:0:1'),(299,'登录日志',1,'2018-05-06 12:30:35','成功',NULL,'0:0:0:0:0:0:0:1'),(300,'登录日志',1,'2018-05-06 12:40:09','成功',NULL,'0:0:0:0:0:0:0:1'),(301,'登录日志',1,'2018-05-06 12:52:43','成功',NULL,'0:0:0:0:0:0:0:1'),(302,'登录日志',1,'2018-05-06 21:57:24','成功',NULL,'0:0:0:0:0:0:0:1'),(303,'退出日志',1,'2018-05-06 21:59:43','成功',NULL,'0:0:0:0:0:0:0:1'),(304,'登录日志',1,'2018-05-06 21:59:45','成功',NULL,'0:0:0:0:0:0:0:1'),(305,'登录日志',1,'2018-05-06 23:14:48','成功',NULL,'0:0:0:0:0:0:0:1'),(306,'登录日志',1,'2018-05-06 23:38:09','成功',NULL,'0:0:0:0:0:0:0:1'),(307,'登录日志',1,'2018-05-07 00:05:33','成功',NULL,'0:0:0:0:0:0:0:1'),(308,'登录日志',1,'2018-05-07 14:20:09','成功',NULL,'0:0:0:0:0:0:0:1'),(309,'登录日志',1,'2018-05-07 14:25:29','成功',NULL,'0:0:0:0:0:0:0:1'),(310,'登录日志',1,'2018-05-07 14:37:37','成功',NULL,'0:0:0:0:0:0:0:1'),(311,'登录日志',1,'2018-05-10 17:51:53','成功',NULL,'0:0:0:0:0:0:0:1'),(312,'登录失败日志',NULL,'2018-05-10 17:56:28','成功','账号:admin,账号密码错误','0:0:0:0:0:0:0:1'),(313,'登录日志',1,'2018-05-10 17:56:37','成功',NULL,'0:0:0:0:0:0:0:1'),(314,'登录日志',1,'2018-05-11 11:38:55','成功',NULL,'127.0.0.1'),(315,'登录日志',1,'2018-05-11 11:39:37','成功',NULL,'127.0.0.1'),(316,'退出日志',1,'2018-05-11 11:48:10','成功',NULL,'127.0.0.1'),(317,'登录日志',1,'2018-05-12 11:55:11','成功',NULL,'127.0.0.1'),(318,'登录日志',1,'2018-06-02 16:24:15','成功',NULL,'0:0:0:0:0:0:0:1'),(319,'退出日志',1,'2018-06-02 16:25:16','成功',NULL,'0:0:0:0:0:0:0:1'),(320,'登录日志',1,'2018-06-02 16:25:18','成功',NULL,'0:0:0:0:0:0:0:1'),(321,'登录日志',1,'2018-06-02 16:30:39','成功',NULL,'0:0:0:0:0:0:0:1'),(322,'退出日志',1,'2018-06-02 16:31:07','成功',NULL,'0:0:0:0:0:0:0:1'),(323,'登录日志',1,'2018-06-02 16:31:09','成功',NULL,'0:0:0:0:0:0:0:1'),(324,'登录日志',1,'2018-06-02 16:31:56','成功',NULL,'0:0:0:0:0:0:0:1'),(325,'登录日志',1,'2018-06-02 16:37:46','成功',NULL,'0:0:0:0:0:0:0:1');

#
# Source for table "sys_menu"
#

DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=992819994725220360 DEFAULT CHARSET=utf8 COMMENT='菜单表';

#
# Data for table "sys_menu"
#

INSERT INTO `sys_menu` VALUES (105,'system','0','[0],','系统管理','fa-user','#',4,1,1,NULL,1,1),(106,'mgr','system','[0],[system],','用户管理','','/mgr',1,2,1,NULL,1,0),(107,'mgr_add','mgr','[0],[system],[mgr],','添加用户',NULL,'/mgr/add',1,3,0,NULL,1,0),(108,'mgr_edit','mgr','[0],[system],[mgr],','修改用户',NULL,'/mgr/edit',2,3,0,NULL,1,0),(109,'mgr_delete','mgr','[0],[system],[mgr],','删除用户',NULL,'/mgr/delete',3,3,0,NULL,1,0),(110,'mgr_reset','mgr','[0],[system],[mgr],','重置密码',NULL,'/mgr/reset',4,3,0,NULL,1,0),(111,'mgr_freeze','mgr','[0],[system],[mgr],','冻结用户',NULL,'/mgr/freeze',5,3,0,NULL,1,0),(112,'mgr_unfreeze','mgr','[0],[system],[mgr],','解除冻结用户',NULL,'/mgr/unfreeze',6,3,0,NULL,1,0),(113,'mgr_setRole','mgr','[0],[system],[mgr],','分配角色',NULL,'/mgr/setRole',7,3,0,NULL,1,0),(114,'role','system','[0],[system],','角色管理',NULL,'/role',2,2,1,NULL,1,0),(115,'role_add','role','[0],[system],[role],','添加角色',NULL,'/role/add',1,3,0,NULL,1,0),(116,'role_edit','role','[0],[system],[role],','修改角色',NULL,'/role/edit',2,3,0,NULL,1,0),(117,'role_remove','role','[0],[system],[role],','删除角色',NULL,'/role/remove',3,3,0,NULL,1,0),(118,'role_setAuthority','role','[0],[system],[role],','配置权限',NULL,'/role/setAuthority',4,3,0,NULL,1,0),(119,'menu','system','[0],[system],','菜单管理',NULL,'/menu',4,2,1,NULL,1,0),(120,'menu_add','menu','[0],[system],[menu],','添加菜单',NULL,'/menu/add',1,3,0,NULL,1,0),(121,'menu_edit','menu','[0],[system],[menu],','修改菜单',NULL,'/menu/edit',2,3,0,NULL,1,0),(122,'menu_remove','menu','[0],[system],[menu],','删除菜单',NULL,'/menu/remove',3,3,0,NULL,1,0),(128,'log','system','[0],[system],','业务日志',NULL,'/log',6,2,1,NULL,1,0),(130,'druid','system','[0],[system],','监控管理',NULL,'/druid',7,2,1,NULL,1,NULL),(131,'dept','system','[0],[system],','部门管理',NULL,'/dept',3,2,1,NULL,1,NULL),(132,'dict','system','[0],[system],','字典管理',NULL,'/dict',4,2,1,NULL,1,NULL),(133,'loginLog','system','[0],[system],','登录日志',NULL,'/loginLog',6,2,1,NULL,1,NULL),(134,'log_clean','log','[0],[system],[log],','清空日志',NULL,'/log/delLog',3,3,0,NULL,1,NULL),(135,'dept_add','dept','[0],[system],[dept],','添加部门',NULL,'/dept/add',1,3,0,NULL,1,NULL),(136,'dept_update','dept','[0],[system],[dept],','修改部门',NULL,'/dept/update',1,3,0,NULL,1,NULL),(137,'dept_delete','dept','[0],[system],[dept],','删除部门',NULL,'/dept/delete',1,3,0,NULL,1,NULL),(138,'dict_add','dict','[0],[system],[dict],','添加字典',NULL,'/dict/add',1,3,0,NULL,1,NULL),(139,'dict_update','dict','[0],[system],[dict],','修改字典',NULL,'/dict/update',1,3,0,NULL,1,NULL),(140,'dict_delete','dict','[0],[system],[dict],','删除字典',NULL,'/dict/delete',1,3,0,NULL,1,NULL),(141,'notice','system','[0],[system],','通知管理',NULL,'/notice',9,2,1,NULL,1,NULL),(142,'notice_add','notice','[0],[system],[notice],','添加通知',NULL,'/notice/add',1,3,0,NULL,1,NULL),(143,'notice_update','notice','[0],[system],[notice],','修改通知',NULL,'/notice/update',2,3,0,NULL,1,NULL),(144,'notice_delete','notice','[0],[system],[notice],','删除通知',NULL,'/notice/delete',3,3,0,NULL,1,NULL),(145,'hello','0','[0],','通知','fa-rocket','/notice/hello',1,1,0,NULL,1,NULL),(148,'code','0','[0],','代码生成','fa-code','/code',3,1,1,NULL,1,NULL),(149,'api_mgr','0','[0],','接口文档','fa-leaf','/swagger-ui.html',2,1,1,NULL,1,NULL),(150,'to_menu_edit','menu','[0],[system],[menu],','菜单编辑跳转','','/menu/menu_edit',4,3,0,NULL,1,NULL),(151,'menu_list','menu','[0],[system],[menu],','菜单列表','','/menu/list',5,3,0,NULL,1,NULL),(152,'to_dept_update','dept','[0],[system],[dept],','修改部门跳转','','/dept/dept_update',4,3,0,NULL,1,NULL),(153,'dept_list','dept','[0],[system],[dept],','部门列表','','/dept/list',5,3,0,NULL,1,NULL),(154,'dept_detail','dept','[0],[system],[dept],','部门详情','','/dept/detail',6,3,0,NULL,1,NULL),(155,'to_dict_edit','dict','[0],[system],[dict],','修改菜单跳转','','/dict/dict_edit',4,3,0,NULL,1,NULL),(156,'dict_list','dict','[0],[system],[dict],','字典列表','','/dict/list',5,3,0,NULL,1,NULL),(157,'dict_detail','dict','[0],[system],[dict],','字典详情','','/dict/detail',6,3,0,NULL,1,NULL),(158,'log_list','log','[0],[system],[log],','日志列表','','/log/list',2,3,0,NULL,1,NULL),(159,'log_detail','log','[0],[system],[log],','日志详情','','/log/detail',3,3,0,NULL,1,NULL),(160,'del_login_log','loginLog','[0],[system],[loginLog],','清空登录日志','','/loginLog/delLoginLog',1,3,0,NULL,1,NULL),(161,'login_log_list','loginLog','[0],[system],[loginLog],','登录日志列表','','/loginLog/list',2,3,0,NULL,1,NULL),(162,'to_role_edit','role','[0],[system],[role],','修改角色跳转','','/role/role_edit',5,3,0,NULL,1,NULL),(163,'to_role_assign','role','[0],[system],[role],','角色分配跳转','','/role/role_assign',6,3,0,NULL,1,NULL),(164,'role_list','role','[0],[system],[role],','角色列表','','/role/list',7,3,0,NULL,1,NULL),(165,'to_assign_role','mgr','[0],[system],[mgr],','分配角色跳转','','/mgr/role_assign',8,3,0,NULL,1,NULL),(166,'to_user_edit','mgr','[0],[system],[mgr],','编辑用户跳转','','/mgr/user_edit',9,3,0,NULL,1,NULL),(167,'mgr_list','mgr','[0],[system],[mgr],','用户列表','','/mgr/list',10,3,0,NULL,1,NULL),(168,'expense','0','[0],','报销管理','fa-clone','#',5,1,1,NULL,1,NULL),(169,'expense_fill','expense','[0],[expense],','报销申请','','/expense',1,2,1,NULL,1,NULL),(170,'expense_progress','expense','[0],[expense],','报销审批','','/process',2,2,1,NULL,1,NULL);

#
# Source for table "sys_notice"
#

DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='通知表';

#
# Data for table "sys_notice"
#

INSERT INTO `sys_notice` VALUES (6,'世界',10,'欢迎使用悟空童装-后台管理中心！！<p><br></p>','2017-01-11 08:53:20',1),(8,'你好',NULL,'您好&nbsp; .<p><br></p>','2017-05-10 19:28:57',1);

#
# Source for table "sys_operation_log"
#

DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logtype` varchar(255) DEFAULT NULL COMMENT '日志类型',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '用户id',
  `classname` varchar(255) DEFAULT NULL COMMENT '类名称',
  `method` text COMMENT '方法名称',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否成功',
  `message` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8 COMMENT='操作日志';

#
# Data for table "sys_operation_log"
#

INSERT INTO `sys_operation_log` VALUES (550,'异常日志','',1,NULL,NULL,'2018-01-11 17:53:53','失败','com.stylefeng.guns.core.exception.GunsException: 请求有错误\r\n\tat com.stylefeng.guns.modular.system.controller.DictController.add(DictController.java:92)\r\n\tat com.stylefeng.guns.modular.system.controller.DictControllerTTFastClassBySpringCGLIBTT76f61b2.invoke(<generated>)\r\n\tat org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n\tat org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:30)\r\n\tat sun.reflect.GeneratedMethodAccessor113.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.PermissionAop.doPermission(PermissionAop.java:60)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.LogAop.recordSysLog(LogAop.java:45)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n\tat com.stylefeng.guns.modular.system.controller.DictControllerTTEnhancerBySpringCGLIBTTe09ec4a5.add(<generated>)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n\tat org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n\tat org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n\tat org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n\tat org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n\tat org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n\tat org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n\tat org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n\tat org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n\tat org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n\tat org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.stylefeng.guns.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n\tat org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n\tat org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n\tat org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n\tat org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n\tat org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n\tat org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n\tat org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n\tat org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n\tat org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n\tat org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n\tat org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n\tat java.util.concurrent.ThreadPoolExecutor.runWorker(Unknown Source)\r\n\tat java.util.concurrent.ThreadPoolExecutorTWorker.run(Unknown Source)\r\n\tat org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n\tat java.lang.Thread.run(Unknown Source)\r\n'),(551,'异常日志','',1,NULL,NULL,'2018-01-11 17:53:56','失败','com.stylefeng.guns.core.exception.GunsException: 请求有错误\r\n\tat com.stylefeng.guns.modular.system.controller.DictController.add(DictController.java:92)\r\n\tat com.stylefeng.guns.modular.system.controller.DictControllerTTFastClassBySpringCGLIBTT76f61b2.invoke(<generated>)\r\n\tat org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n\tat org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:30)\r\n\tat sun.reflect.GeneratedMethodAccessor113.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.PermissionAop.doPermission(PermissionAop.java:60)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.LogAop.recordSysLog(LogAop.java:45)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n\tat com.stylefeng.guns.modular.system.controller.DictControllerTTEnhancerBySpringCGLIBTTe09ec4a5.add(<generated>)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n\tat org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n\tat org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n\tat org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n\tat org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n\tat org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n\tat org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n\tat org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n\tat org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n\tat org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n\tat org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.stylefeng.guns.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n\tat org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n\tat org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n\tat org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n\tat org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n\tat org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n\tat org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n\tat org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n\tat org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n\tat org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n\tat org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n\tat org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n\tat java.util.concurrent.ThreadPoolExecutor.runWorker(Unknown Source)\r\n\tat java.util.concurrent.ThreadPoolExecutorTWorker.run(Unknown Source)\r\n\tat org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n\tat java.lang.Thread.run(Unknown Source)\r\n'),(552,'业务日志','添加字典记录',1,'com.stylefeng.guns.modular.system.controller.DictController','add','2018-01-11 17:54:02','成功','字典名称=qqq,字典内容=11:11;'),(553,'业务日志','修改通知',1,'com.stylefeng.guns.modular.system.controller.NoticeController','update','2018-05-05 16:15:58','成功','标题=世界;;;字段名称:内容,旧值:欢迎使用Guns管理系统,新值:欢迎您来到启匠官网管理中心<p><br></p>'),(554,'业务日志','修改通知',1,'com.stylefeng.guns.modular.system.controller.NoticeController','update','2018-05-05 16:16:18','成功','标题=世界;;;字段名称:内容,旧值:欢迎您来到启匠官网管理中心<p><br></p>,新值:欢迎使用启匠官网管理中心！！<p><br></p>'),(555,'业务日志','修改通知',1,'com.stylefeng.guns.modular.system.controller.NoticeController','update','2018-05-05 16:18:25','成功','标题=你好;;;字段名称:内容,旧值:你好,新值:您好&nbsp; .<p><br></p>'),(556,'业务日志','修改通知',1,'com.stylefeng.guns.modular.system.controller.NoticeController','update','2018-05-05 16:18:46','成功','标题=世界;;;字段名称:内容,旧值:欢迎使用启匠官网管理中心！！<p><br></p>,新值:欢迎使用启匠官网-后台管理中心！！<p><br></p>'),(557,'业务日志','客户关系新增',1,'com.stylefeng.guns.modular.system.controller.MenuController','add','2018-05-06 00:52:09','成功','菜单名称=客户管理'),(558,'业务日志','修改菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','edit','2018-05-06 00:58:05','成功','菜单名称=客户管理;;;'),(559,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 00:58:32','成功','菜单id=171'),(560,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:00:54','成功','菜单id=992807425507708930'),(561,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:01:04','成功','菜单id=992807425507708931'),(562,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:01:13','成功','菜单id=992807425507708932'),(563,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:01:19','成功','菜单id=992807425507708933'),(564,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:01:25','成功','菜单id=992807425507708934'),(565,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:01:31','成功','菜单id=992807425507708935'),(566,'业务日志','客户关系新增',1,'com.stylefeng.guns.modular.system.controller.MenuController','add','2018-05-06 01:02:47','成功','菜单名称=客户管理'),(567,'业务日志','修改菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','edit','2018-05-06 01:03:02','成功','菜单名称=客户管理;;;'),(568,'业务日志','修改菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','edit','2018-05-06 01:03:31','成功','菜单名称=通知;;;字段名称:null,旧值:1,新值:0'),(569,'业务日志','修改菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','edit','2018-05-06 01:04:39','成功','菜单名称=客户管理;;;字段名称:菜单父编号,旧值:0,新值:105;;;字段名称:null,旧值:1,新值:0'),(570,'业务日志','修改菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','edit','2018-05-06 01:05:33','成功','菜单名称=客户管理;;;字段名称:菜单父编号,旧值:105,新值:168;;;字段名称:null,旧值:0,新值:1'),(571,'业务日志','修改菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','edit','2018-05-06 01:12:19','成功','菜单名称=客户管理;;;字段名称:菜单排序号,旧值:1,新值:12'),(572,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:24:36','成功','菜单id=992807425507708936'),(573,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:37:34','成功','菜单id=992816967775764481'),(574,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:40:27','成功','菜单id=992816967775764486'),(575,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:40:34','成功','菜单id=992816967775764482'),(576,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:40:39','成功','菜单id=992816967775764483'),(577,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:40:43','成功','菜单id=992816967775764484'),(578,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-05-06 01:40:49','成功','菜单id=992816967775764485'),(579,'业务日志','配置权限',1,'com.stylefeng.guns.modular.system.controller.RoleController','setAuthority','2018-05-06 01:41:05','成功','角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,通知,代码生成,接口文档,报销管理,报销申请,报销审批'),(580,'业务日志','配置权限',1,'com.stylefeng.guns.modular.system.controller.RoleController','setAuthority','2018-05-06 01:41:24','成功','角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,通知,代码生成,接口文档,报销管理,报销申请,报销审批'),(581,'业务日志','配置权限',1,'com.stylefeng.guns.modular.system.controller.RoleController','setAuthority','2018-05-06 01:41:53','成功','角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,通知,代码生成,接口文档,报销管理,报销申请,报销审批'),(582,'异常日志','',1,NULL,NULL,'2018-05-06 01:42:40','失败','com.stylefeng.guns.core.exception.GunsException: 不能修改超级管理员角色\r\n\tat com.stylefeng.guns.modular.system.controller.UserMgrController.setRole(UserMgrController.java:332)\r\n\tat com.stylefeng.guns.modular.system.controller.UserMgrControllerTTFastClassBySpringCGLIBTT87f11409.invoke(<generated>)\r\n\tat org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n\tat org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:30)\r\n\tat sun.reflect.GeneratedMethodAccessor112.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.PermissionAop.doPermission(PermissionAop.java:60)\r\n\tat sun.reflect.GeneratedMethodAccessor133.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.LogAop.recordSysLog(LogAop.java:45)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n\tat com.stylefeng.guns.modular.system.controller.UserMgrControllerTTEnhancerBySpringCGLIBTTca950867.setRole(<generated>)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n\tat org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n\tat org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n\tat org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n\tat org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n\tat org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n\tat org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.stylefeng.guns.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n\tat org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n\tat org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n\tat org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n\tat org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n\tat org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n\tat org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n\tat org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n\tat org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n\tat org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n\tat org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n\tat org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n\tat java.util.concurrent.ThreadPoolExecutor.runWorker(Unknown Source)\r\n\tat java.util.concurrent.ThreadPoolExecutorTWorker.run(Unknown Source)\r\n\tat org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n\tat java.lang.Thread.run(Unknown Source)\r\n'),(583,'异常日志','',1,NULL,NULL,'2018-05-06 01:42:47','失败','com.stylefeng.guns.core.exception.GunsException: 不能修改超级管理员角色\r\n\tat com.stylefeng.guns.modular.system.controller.UserMgrController.setRole(UserMgrController.java:332)\r\n\tat com.stylefeng.guns.modular.system.controller.UserMgrControllerTTFastClassBySpringCGLIBTT87f11409.invoke(<generated>)\r\n\tat org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n\tat org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:738)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:30)\r\n\tat sun.reflect.GeneratedMethodAccessor112.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.PermissionAop.doPermission(PermissionAop.java:60)\r\n\tat sun.reflect.GeneratedMethodAccessor133.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n\tat com.stylefeng.guns.core.aop.LogAop.recordSysLog(LogAop.java:45)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:629)\r\n\tat org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:618)\r\n\tat org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:168)\r\n\tat org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n\tat org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n\tat org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n\tat com.stylefeng.guns.modular.system.controller.UserMgrControllerTTEnhancerBySpringCGLIBTTca950867.setRole(<generated>)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(Unknown Source)\r\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(Unknown Source)\r\n\tat java.lang.reflect.Method.invoke(Unknown Source)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\r\n\tat org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:133)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:97)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:827)\r\n\tat org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:738)\r\n\tat org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:963)\r\n\tat org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:897)\r\n\tat org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\r\n\tat org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:872)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n\tat org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\r\n\tat javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n\tat org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n\tat org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:387)\r\n\tat org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n\tat org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.stylefeng.guns.core.xss.XssFilter.doFilter(XssFilter.java:31)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:123)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:105)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:197)\r\n\tat org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n\tat org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n\tat org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n\tat org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n\tat org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:478)\r\n\tat org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n\tat org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:80)\r\n\tat org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n\tat org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n\tat org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:799)\r\n\tat org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n\tat org.apache.coyote.AbstractProtocolTConnectionHandler.process(AbstractProtocol.java:861)\r\n\tat org.apache.tomcat.util.net.NioEndpointTSocketProcessor.doRun(NioEndpoint.java:1455)\r\n\tat org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n\tat java.util.concurrent.ThreadPoolExecutor.runWorker(Unknown Source)\r\n\tat java.util.concurrent.ThreadPoolExecutorTWorker.run(Unknown Source)\r\n\tat org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n\tat java.lang.Thread.run(Unknown Source)\r\n'),(584,'业务日志','修改管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','edit','2018-05-06 01:43:16','成功','账号=admin;;;字段名称:名字,旧值:张三,新值:超级管理员'),(585,'业务日志','配置权限',1,'com.stylefeng.guns.modular.system.controller.RoleController','setAuthority','2018-05-06 01:43:30','成功','角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,通知,代码生成,接口文档,报销管理,报销申请,报销审批'),(586,'业务日志','配置权限',1,'com.stylefeng.guns.modular.system.controller.RoleController','setAuthority','2018-05-06 01:43:39','成功','角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,通知,代码生成,接口文档,报销管理,报销申请,报销审批'),(587,'业务日志','配置权限',1,'com.stylefeng.guns.modular.system.controller.RoleController','setAuthority','2018-05-06 01:45:42','成功','角色名称=超级管理员,资源名称=系统管理,用户管理,添加用户,修改用户,删除用户,重置密码,冻结用户,解除冻结用户,分配角色,分配角色跳转,编辑用户跳转,用户列表,角色管理,添加角色,修改角色,删除角色,配置权限,修改角色跳转,角色分配跳转,角色列表,菜单管理,添加菜单,修改菜单,删除菜单,菜单编辑跳转,菜单列表,业务日志,清空日志,日志列表,日志详情,监控管理,部门管理,添加部门,修改部门,删除部门,修改部门跳转,部门列表,部门详情,字典管理,添加字典,修改字典,删除字典,修改菜单跳转,字典列表,字典详情,登录日志,清空登录日志,登录日志列表,通知管理,添加通知,修改通知,删除通知,通知,代码生成,接口文档,报销管理,报销申请,报销审批'),(588,'业务日志','修改菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','edit','2018-05-06 01:46:10','成功','菜单名称=客户信息;;;'),(589,'业务日志','修改管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','edit','2018-05-06 12:28:13','成功','账号=admin;;;字段名称:头像,旧值:girl.gif,新值:572084e4-0821-4648-9e4a-25eb5ea450aa.jpg'),(590,'业务日志','修改管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','edit','2018-05-06 12:28:25','成功','账号=admin;;;字段名称:头像,旧值:572084e4-0821-4648-9e4a-25eb5ea450aa.jpg,新值:e62bd1fc-2da2-46fe-af8c-9b4c86a03828.jpg'),(591,'业务日志','修改管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','edit','2018-05-06 12:28:51','成功','账号=admin;;;字段名称:性别,旧值:女,新值:男;;;字段名称:电子邮件,旧值:sn93@qq.com,新值:947723090@qq.com'),(592,'业务日志','添加管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','add','2018-05-06 12:56:37','成功','账号=zhaiwenhao'),(593,'业务日志','修改管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','edit','2018-05-07 14:37:50','成功','账号=admin;;;字段名称:头像,旧值:e62bd1fc-2da2-46fe-af8c-9b4c86a03828.jpg,新值:fca9ee4f-7e41-4aee-bf58-d91cbe24781d.jpg'),(594,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-06-02 16:24:43','成功','菜单id=992819994725220354'),(595,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-06-02 16:24:50','成功','菜单id=992819994725220355'),(596,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-06-02 16:24:56','成功','菜单id=992819994725220356'),(597,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-06-02 16:25:00','成功','菜单id=992819994725220357'),(598,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-06-02 16:25:05','成功','菜单id=992819994725220358'),(599,'业务日志','删除菜单',1,'com.stylefeng.guns.modular.system.controller.MenuController','remove','2018-06-02 16:25:10','成功','菜单id=992819994725220359'),(600,'业务日志','修改通知',1,'com.stylefeng.guns.modular.system.controller.NoticeController','update','2018-06-02 16:26:45','成功','标题=世界;;;字段名称:内容,旧值:欢迎使用启匠官网-后台管理中心！！<p><br></p>,新值:欢迎使用悟空童装-后台管理中心！！<p><br></p>'),(601,'业务日志','修改管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','edit','2018-06-02 16:30:59','成功','账号=admin;;;字段名称:头像,旧值:fca9ee4f-7e41-4aee-bf58-d91cbe24781d.jpg,新值:92b3e196-1214-49df-a55f-f9f382099e37.jpg'),(602,'业务日志','修改管理员',1,'com.stylefeng.guns.modular.system.controller.UserMgrController','edit','2018-06-02 16:31:05','成功','账号=admin;;;字段名称:头像,旧值:fca9ee4f-7e41-4aee-bf58-d91cbe24781d.jpg,新值:92b3e196-1214-49df-a55f-f9f382099e37.jpg');

#
# Source for table "sys_relation"
#

DROP TABLE IF EXISTS `sys_relation`;
CREATE TABLE `sys_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` bigint(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4115 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

#
# Data for table "sys_relation"
#

INSERT INTO `sys_relation` VALUES (3377,105,5),(3378,106,5),(3379,107,5),(3380,108,5),(3381,109,5),(3382,110,5),(3383,111,5),(3384,112,5),(3385,113,5),(3386,114,5),(3387,115,5),(3388,116,5),(3389,117,5),(3390,118,5),(3391,119,5),(3392,120,5),(3393,121,5),(3394,122,5),(3395,150,5),(3396,151,5),(4051,105,1),(4052,106,1),(4053,107,1),(4054,108,1),(4055,109,1),(4056,110,1),(4057,111,1),(4058,112,1),(4059,113,1),(4060,165,1),(4061,166,1),(4062,167,1),(4063,114,1),(4064,115,1),(4065,116,1),(4066,117,1),(4067,118,1),(4068,162,1),(4069,163,1),(4070,164,1),(4071,119,1),(4072,120,1),(4073,121,1),(4074,122,1),(4075,150,1),(4076,151,1),(4077,128,1),(4078,134,1),(4079,158,1),(4080,159,1),(4081,130,1),(4082,131,1),(4083,135,1),(4084,136,1),(4085,137,1),(4086,152,1),(4087,153,1),(4088,154,1),(4089,132,1),(4090,138,1),(4091,139,1),(4092,140,1),(4093,155,1),(4094,156,1),(4095,157,1),(4096,133,1),(4097,160,1),(4098,161,1),(4099,141,1),(4100,142,1),(4101,143,1),(4102,144,1),(4103,145,1),(4104,148,1),(4105,149,1),(4106,168,1),(4107,169,1),(4108,170,1);

#
# Source for table "sys_role"
#

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色表';

#
# Data for table "sys_role"
#

INSERT INTO `sys_role` VALUES (1,1,0,'超级管理员',24,'administrator',1),(5,2,1,'临时',26,'temp',NULL);

#
# Source for table "sys_user"
#

DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='管理员表';

#
# Data for table "sys_user"
#

INSERT INTO `sys_user` VALUES (1,'92b3e196-1214-49df-a55f-f9f382099e37.jpg','admin','ecfadcde9305f8891bcfe5a1e28c253e','8pgby','超级管理员','2017-05-05 00:00:00',1,'947723090@qq.com','18200000000','1',27,1,'2016-01-29 08:49:53',25),(44,NULL,'test','45abb7879f6a8268f1ef600e6038ac73','ssts3','test','2017-05-01 00:00:00',1,'abc@123.com','','5',26,3,'2017-05-16 20:33:37',NULL),(45,NULL,'boss','71887a5ad666a18f709e1d4e693d5a35','1f7bf','老板','2017-12-04 00:00:00',1,'','','1',24,1,'2017-12-04 22:24:02',NULL),(46,NULL,'manager','b53cac62e7175637d4beb3b16b2f7915','j3cs9','经理','2017-12-04 00:00:00',1,'','','1',24,1,'2017-12-04 22:24:24',NULL),(47,NULL,'zhaiwenhao','280bcad98800f788a80473fcc194c985','oq5tt','翟文豪',NULL,1,'zhaiwenhao@qq.com','',NULL,0,1,'2018-05-06 12:56:37',NULL);

#
# Source for table "transfer_record"
#

DROP TABLE IF EXISTS `transfer_record`;
CREATE TABLE `transfer_record` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) NOT NULL COMMENT '用户主键',
  `t_type` int(11) NOT NULL COMMENT '类型（1.比卡通BCD 2.鸿承通HCT 3.健康通JKT 4.云鑫通YXT 5.奌点链DDL）',
  `t_lable` varchar(44) DEFAULT NULL COMMENT '钱包标签',
  `t_address` varchar(255) NOT NULL COMMENT '钱包地址',
  `operation_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

#
# Data for table "transfer_record"
#

INSERT INTO `transfer_record` VALUES (70,64,1,NULL,'2b3693b5-5107-4a86-b474-2dea9628172a','2018-03-30 18:43:57'),(71,64,2,NULL,'186efb5b-bb40-4084-ba36-890385b46baa','2018-03-30 18:43:57'),(72,64,3,NULL,'61ec8206-e69b-4e75-8aba-11a554c39a7b','2018-03-30 18:43:57'),(73,64,4,NULL,'56187d87-019b-4607-86e2-74b7d0dee0a6','2018-03-30 18:43:57'),(74,64,5,NULL,'a16f7181-33f9-4c08-a1ed-06cfc7e257c4','2018-03-30 18:43:57'),(75,64,6,NULL,'73bc45a4-099e-4ef1-bbb7-ec028ca42bb4','2018-03-30 18:43:57'),(82,66,1,NULL,'28e637ce-5ede-40f3-85ec-3974d914cc63','2018-03-30 18:57:34'),(83,66,2,NULL,'07dca141-eb68-48a3-92d5-62ab4775b4e3','2018-03-30 18:57:34'),(84,66,3,NULL,'5db53451-2ecf-4ce2-9978-8a7211d7cd58','2018-03-30 18:57:34'),(85,66,4,NULL,'34ded205-9c70-4f7b-a69c-ea11128e5a32','2018-03-30 18:57:34'),(86,66,5,NULL,'5d4c0a79-a965-4d39-afb4-e78d03e1b077','2018-03-30 18:57:34'),(87,66,6,NULL,'23f1a0f5-1b2e-4dd9-aff7-e3d8065df735','2018-03-30 18:57:34'),(88,67,1,NULL,'205e3b4b-ec11-4897-949c-a40ba0a69ed2','2018-03-30 19:02:09'),(89,67,2,NULL,'912ca583-9069-4be6-ae5c-fcb212156e85','2018-03-30 19:02:09'),(90,67,3,NULL,'d45691c3-cac5-4061-bdce-f81ace056144','2018-03-30 19:02:09'),(91,67,4,NULL,'5c0dcf86-7827-4931-aa01-f65634215742','2018-03-30 19:02:09'),(92,67,5,NULL,'dfa5686e-47ae-43bc-9f3d-5b715610c5ab','2018-03-30 19:02:09'),(93,67,6,NULL,'3900dfad-9634-49a6-8ee3-bd5c516c2a3a','2018-03-30 19:02:09'),(100,69,1,NULL,'ca6243fc-4d4a-420e-9c41-1f8e7a13bd85','2018-03-30 19:24:41'),(101,69,2,NULL,'337378bc-8cd7-43c9-b849-439ce6eef2c0','2018-03-30 19:24:41'),(102,69,3,NULL,'7f25ecdb-91ca-4553-8b74-b1155196d1b0','2018-03-30 19:24:41'),(103,69,4,NULL,'0a285045-3e56-4b94-ac98-79cbd6d4eee2','2018-03-30 19:24:41'),(104,69,5,NULL,'3d711f2d-9707-41b9-a9b2-7ae04bbefe1c','2018-03-30 19:24:41'),(105,69,6,NULL,'c140063a-8bb8-4d04-8a37-efb89a65ca79','2018-03-30 19:24:41'),(106,70,1,NULL,'f60b2648-ecd6-4899-81ff-0b7d0c82caad','2018-03-30 19:24:43'),(107,70,2,NULL,'640ff842-5479-45b8-aad8-ec298091fcf6','2018-03-30 19:24:43'),(108,70,3,NULL,'cf4af9b0-1b57-4cb7-abb5-f2e9c412257f','2018-03-30 19:24:43'),(109,70,4,NULL,'6545efd1-dac6-4b68-858b-dcc7f485ed6d','2018-03-30 19:24:43'),(110,70,5,NULL,'3122994b-6546-48a1-af95-040f0c7dff43','2018-03-30 19:24:43'),(111,70,6,NULL,'a2aab0ec-c92e-4b33-8aeb-2d7d5610a598','2018-03-30 19:24:43'),(112,71,1,NULL,'bd832016-7060-45dd-99bc-d001fd3b4260','2018-03-30 19:28:57'),(113,71,2,NULL,'49dc2167-812b-4ab3-bc75-4a1355638a0d','2018-03-30 19:28:58'),(114,71,3,NULL,'e44309e1-30f9-4014-a5e7-57250e9595a3','2018-03-30 19:28:58'),(115,71,4,NULL,'d475f02f-8cc7-4309-a040-52581189b258','2018-03-30 19:28:58'),(116,71,5,NULL,'adc56f19-299f-4924-ba99-4323d5723adb','2018-03-30 19:28:58'),(117,71,6,NULL,'aa4fb998-152e-4ab8-9b9d-bc235b8851f5','2018-03-30 19:28:58'),(124,73,1,NULL,'e118f94c-5c30-4afe-88df-7cf6749b3d37','2018-03-30 19:42:10'),(125,73,2,NULL,'a881f106-59d4-4289-b11c-8c3edd0b6b90','2018-03-30 19:42:10'),(126,73,3,NULL,'860184c9-d0ef-495d-871f-c7c951a83a52','2018-03-30 19:42:10'),(127,73,4,NULL,'cc09d400-d7bd-4029-8d98-d3c6e83130ea','2018-03-30 19:42:10'),(128,73,5,NULL,'857b0c52-4a4f-42a1-937f-981dfb834b83','2018-03-30 19:42:10'),(129,73,6,NULL,'3d0c09ec-94cc-4944-bdf2-2e70ed4e4e0c','2018-03-30 19:42:10'),(130,74,1,NULL,'8bbf6c3a-cd84-4eba-aac6-54ef9780d5ad','2018-03-30 19:42:11'),(131,74,2,NULL,'f8bb7cc8-6e01-4886-89f0-912a8e3b89df','2018-03-30 19:42:11'),(132,74,3,NULL,'07d4fc78-a700-4760-8b4a-e9662a1be703','2018-03-30 19:42:11'),(133,74,4,NULL,'70ff1dcd-e619-44dc-914e-611c2f641aca','2018-03-30 19:42:11'),(134,74,5,NULL,'a6b14569-78cf-423c-96ce-726ce8d722dd','2018-03-30 19:42:11'),(135,74,6,NULL,'6c81fb3d-4321-4ac3-a221-bc38147bb4f6','2018-03-30 19:42:12'),(136,75,1,NULL,'9fb433ce-a870-4180-9ca7-f46d28825d67','2018-03-30 19:45:49'),(137,75,2,NULL,'a7e98db8-ac90-415c-a82f-fc198a986507','2018-03-30 19:45:49'),(138,75,3,NULL,'9abbf1a9-0b79-4627-a5e1-075769c49744','2018-03-30 19:45:49'),(139,75,4,NULL,'4562ca47-d20d-4ecc-aebf-38d6295a153b','2018-03-30 19:45:49'),(140,75,5,NULL,'d051f011-7ca5-4e56-84f7-b4f54474c381','2018-03-30 19:45:49'),(141,75,6,NULL,'95430955-0423-4668-8f07-0fb664cc163f','2018-03-30 19:45:49'),(142,76,1,NULL,'22ceaae9-5569-422a-b034-ffdbd854af7b','2018-03-30 19:45:50'),(143,76,2,NULL,'cfeb2ea9-a312-4707-9ffb-c3cc9f6883aa','2018-03-30 19:45:51'),(144,76,3,NULL,'246c8800-a6ab-4e88-b163-60f3b33ee78b','2018-03-30 19:45:51'),(145,76,4,NULL,'52c6960a-d573-4382-994f-1c9b841f8248','2018-03-30 19:45:51'),(146,76,5,NULL,'9e4a100a-608e-4945-8946-b4ffed1705f5','2018-03-30 19:45:51'),(147,76,6,NULL,'59e7beeb-15a2-49d3-95bc-5aa84355afa0','2018-03-30 19:45:51'),(148,77,1,NULL,'135ac4cd-8669-4008-8db6-ea09096392cb','2018-03-30 19:49:53'),(149,77,2,NULL,'8c07a5b8-73bd-4016-a08e-695c4d3fe553','2018-03-30 19:49:53'),(150,77,3,NULL,'b051401f-22fd-4788-97ac-3d0327f186b9','2018-03-30 19:49:53'),(151,77,4,NULL,'b0239bd4-f62e-4955-a702-a1ed6a32dfe6','2018-03-30 19:49:53'),(152,77,5,NULL,'60cfc8b8-5658-4b76-91c0-b22158b18e1c','2018-03-30 19:49:53'),(153,77,6,NULL,'465cb007-6834-4f88-a856-6133fc56db39','2018-03-30 19:49:53'),(154,78,1,NULL,'b75cf914-f56c-4843-ac32-2db4f6df8cb2','2018-03-30 19:52:25'),(155,78,2,NULL,'b84a1c67-c2b0-4382-b88f-f81b8225c804','2018-03-30 19:52:26'),(156,78,3,NULL,'9f7629cb-c3b3-4273-aa54-f08ea73b8c9d','2018-03-30 19:52:26'),(157,78,4,NULL,'e363bbc9-4b8c-4f83-9753-2c30a3b71ba2','2018-03-30 19:52:26'),(158,78,5,NULL,'c2a59106-148c-4b3d-8fe4-298d7d01cf71','2018-03-30 19:52:26'),(159,78,6,NULL,'7d78474d-4d23-40e9-8a5c-0c12f66c886a','2018-03-30 19:52:26'),(160,79,1,NULL,'22e3f057-d2d1-41ba-a05c-9984046e9550','2018-03-30 19:58:42'),(161,79,2,NULL,'cd051773-0873-4f48-a52c-a6f18facc993','2018-03-30 19:58:42'),(162,79,3,NULL,'8493bcb8-2a04-476b-89d6-196e14743dcd','2018-03-30 19:58:42'),(163,79,4,NULL,'ff9a98d1-f2d5-427d-8238-e9a1e52f14af','2018-03-30 19:58:42'),(164,79,5,NULL,'02885906-cf53-4c0a-ab4d-09c14d07f0c5','2018-03-30 19:58:43'),(165,79,6,NULL,'7da49719-b5b5-4184-8ab5-70f791b6cf20','2018-03-30 19:58:43');

#
# Source for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `u_name` varchar(255) NOT NULL COMMENT '用户名',
  `u_password` varchar(255) NOT NULL COMMENT '登陆密码',
  `transaction_password` varchar(22) DEFAULT NULL COMMENT '交易密码',
  `u_phone` varchar(22) NOT NULL COMMENT '用户手机',
  `u_identity_card` varchar(22) DEFAULT NULL COMMENT '身份证',
  `u_certain` varchar(22) DEFAULT NULL COMMENT '真实名称',
  `u_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 1正常 2冻结',
  `recommender` int(11) DEFAULT NULL COMMENT '一代推荐人主键',
  `referrer` int(11) DEFAULT NULL COMMENT '二代推荐人主键',
  `three` int(11) DEFAULT NULL COMMENT ' 三代推荐人主键',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `alipay` varchar(24) DEFAULT NULL COMMENT '支付宝',
  `u_type` int(11) NOT NULL DEFAULT '1' COMMENT '用户类型 1普通用户 2管理员',
  `email` varchar(55) DEFAULT NULL COMMENT '邮箱',
  `u_order` int(11) DEFAULT '0' COMMENT '排序',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `u_number` varchar(20) DEFAULT NULL COMMENT '用户编号',
  `u_address` varchar(50) DEFAULT NULL COMMENT '用户地址',
  `u_position` varchar(20) DEFAULT NULL COMMENT '用户职位',
  `u_picture` varchar(50) DEFAULT NULL COMMENT '用户头像',
  `u_resume` varchar(225) DEFAULT NULL COMMENT '用户简介',
  `u_identity_card_type` int(11) DEFAULT NULL COMMENT '身份类型',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (64,'顾正红','4297f44b13955235245b2497399d7a93','123123','17620484326','431103199902035','鼓掌呢',1,NULL,NULL,NULL,'2018-03-30 18:43:57',NULL,1,NULL,0,NULL,'YDL17620484326',NULL,NULL,NULL,NULL,NULL),(66,'所得税','e10adc3949ba59abbe56e057f20f883e','123123','15361401403','431103199807028455','顾正红',1,NULL,NULL,NULL,'2018-03-30 18:57:33',NULL,1,NULL,0,NULL,'YDL15361401403',NULL,NULL,NULL,NULL,NULL),(67,'实打实','b51e8dbebd4ba8a8f342190a4b9f08d7','456456','17620484329','431131666446556','电费',1,NULL,NULL,NULL,'2018-03-30 19:02:09',NULL,1,NULL,0,NULL,'YDL17620484329',NULL,NULL,NULL,NULL,NULL),(69,'666','b51e8dbebd4ba8a8f342190a4b9f08d7','123123','17603006549','431103199901025','胜多负少',2,NULL,NULL,NULL,'2018-03-30 19:24:41',NULL,1,NULL,0,NULL,'YDL17603006549',NULL,NULL,NULL,NULL,NULL),(71,'admin','21232f297a57a5a743894a0e4a801fc3','123123','17688562527','401103199902154896','123',2,NULL,NULL,NULL,'2018-03-30 19:28:57',NULL,2,NULL,0,NULL,'YDL17688562527',NULL,NULL,NULL,NULL,NULL),(73,'角霸','4297f44b13955235245b2497399d7a93','123123','18025409753','431103199906085466','牛角霸',1,NULL,NULL,NULL,'2018-03-30 19:42:10',NULL,1,NULL,0,NULL,'YDL18025409753',NULL,NULL,NULL,NULL,NULL),(79,'cs001','a702fdbfb8dcbd236a788290e8cbfc3e','123456','18074667983','430421197910505569','123',1,NULL,NULL,NULL,'2018-03-30 19:58:42',NULL,1,NULL,0,NULL,'YDL18074667983',NULL,NULL,NULL,NULL,NULL);

#
# Source for table "user_identity"
#

DROP TABLE IF EXISTS `user_identity`;
CREATE TABLE `user_identity` (
  `identity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '身份证件id',
  `identity_img_front_url` text COMMENT '身份证件正面图片路径',
  `identity_img_side_url` text COMMENT '身份证件反面图片路径',
  `identity_type` char(10) DEFAULT NULL COMMENT '证件类型(1为身份证，2为护照，3为军官证，4为其他)',
  `identity_number` varchar(50) DEFAULT NULL COMMENT '证件号',
  `identity_state` int(11) DEFAULT NULL COMMENT '证件状态(1为认证中，2为认证通过，3为认证失败)',
  `u_id` int(11) DEFAULT NULL COMMENT '用户关联id',
  PRIMARY KEY (`identity_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `u_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user_identity"
#


#
# Source for table "user_integral_address"
#

DROP TABLE IF EXISTS `user_integral_address`;
CREATE TABLE `user_integral_address` (
  `integral_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `cnyWall` varchar(255) DEFAULT NULL COMMENT '钱包名称',
  `address_label` varchar(255) DEFAULT NULL COMMENT '地址标签',
  `integral_address` varchar(255) DEFAULT NULL COMMENT '提积分地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`integral_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "user_integral_address"
#

INSERT INTO `user_integral_address` VALUES (1,1,'比卡通BCD','张三的地址','yja67fGc8UBXLWtjwvHFkjrmYhTFGH9PTs','2018-03-28 16:42:56'),(2,1,'鸿承通HCT','123','112233445566','2018-03-28 19:06:30'),(3,1,'健康通JKT','123456','777888999444','2018-03-28 19:57:41'),(4,1,'云鑫通YXT','1234','44555661112233','2018-03-28 20:28:55'),(5,1,'奌点链DDL','489','14445566688','2018-03-28 20:50:22'),(6,1,'比卡通BCD','456789','1','2018-03-29 21:54:35'),(7,1,'比卡通BCD','cs','4dca6a86-6732-4767-b934-a888ae501b5d','2018-03-30 14:24:47');

#
# Source for table "user_log"
#

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) NOT NULL COMMENT '用户主键',
  `t_type` int(11) NOT NULL COMMENT '类型（1登录 2需求不明确）',
  `l_conten` varchar(24) NOT NULL COMMENT '内容',
  `operation_ip` varchar(255) NOT NULL COMMENT '操作ip',
  `operation_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8;

#
# Data for table "user_log"
#

INSERT INTO `user_log` VALUES (6,1,1,'dsadsad','127.0.0.1','2018-03-13 13:38:01'),(7,2,1,'dsadsad','127.0.0.1','2018-03-13 16:38:01'),(8,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-20 14:26:22'),(9,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-20 14:26:49'),(10,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 10:39:47'),(11,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 10:39:51'),(12,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 10:40:00'),(13,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:40:23'),(14,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:42:06'),(15,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:46:03'),(16,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:48:05'),(17,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:50:00'),(18,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:50:19'),(19,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:51:59'),(20,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:52:06'),(21,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:57:08'),(22,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 15:57:51'),(23,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:24:01'),(24,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:25:19'),(25,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:28:46'),(26,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:33:28'),(27,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:38:57'),(28,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:39:20'),(29,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:41:40'),(30,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 16:57:30'),(31,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 17:03:06'),(32,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 17:10:40'),(33,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 17:11:54'),(34,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 17:31:44'),(35,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 18:19:17'),(36,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 18:39:22'),(37,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 18:47:39'),(38,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 18:52:20'),(39,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 18:53:50'),(40,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 19:10:28'),(41,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 19:47:21'),(42,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 19:56:57'),(43,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 20:09:56'),(44,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 20:41:42'),(45,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-22 20:45:10'),(46,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 11:05:35'),(47,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 11:08:39'),(48,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 11:59:27'),(49,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 14:22:07'),(50,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 15:57:18'),(51,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:08:25'),(52,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:11:03'),(53,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:22:20'),(54,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:28:08'),(55,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:30:22'),(56,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:32:09'),(57,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:41:49'),(58,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:44:16'),(59,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 16:46:17'),(60,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 18:08:49'),(61,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 18:08:49'),(62,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 18:10:10'),(63,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 18:41:32'),(64,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 21:00:54'),(65,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 21:25:48'),(66,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 22:02:51'),(67,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-24 22:04:38'),(68,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 09:56:47'),(69,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 10:43:11'),(70,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 11:02:25'),(71,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 11:26:11'),(72,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 11:29:13'),(73,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 14:50:31'),(74,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 14:54:00'),(75,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 15:23:58'),(76,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 15:58:52'),(77,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 15:59:38'),(78,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:03:21'),(79,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:03:53'),(80,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:05:16'),(81,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:05:55'),(82,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:07:47'),(83,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:08:50'),(84,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:08:50'),(85,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:10:41'),(86,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:10:59'),(87,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:11:25'),(88,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:13:07'),(89,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:13:41'),(90,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:15:49'),(91,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:16:48'),(92,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:17:00'),(93,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:19:54'),(94,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:22:29'),(95,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:24:20'),(96,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:28:28'),(97,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:29:04'),(98,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:29:04'),(99,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:32:18'),(100,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:35:33'),(101,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:36:54'),(102,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:39:26'),(103,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:39:26'),(104,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:40:02'),(105,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:40:24'),(106,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:41:32'),(107,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 16:47:22'),(108,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:10:59'),(109,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:26:53'),(110,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:30:08'),(111,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:32:05'),(112,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:34:05'),(113,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:34:05'),(114,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:34:05'),(115,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:34:05'),(116,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:34:05'),(117,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:34:05'),(118,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:34:05'),(119,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:37:26'),(120,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 17:54:57'),(121,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 18:05:11'),(122,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 18:05:36'),(123,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 18:05:36'),(124,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 18:05:36'),(125,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 18:05:36'),(126,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 18:34:21'),(127,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 19:28:02'),(128,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 19:29:51'),(129,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 19:30:52'),(130,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 19:31:06'),(131,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 19:43:32'),(132,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-26 20:07:18'),(133,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 14:03:55'),(134,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:13:36'),(135,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:15:05'),(136,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:16:53'),(137,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:30:15'),(138,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:30:49'),(139,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:34:07'),(140,11,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:35:50'),(141,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:38:45'),(142,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 15:47:00'),(143,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 16:00:45'),(144,13,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 16:02:31'),(145,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 19:04:30'),(146,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 19:18:28'),(147,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 19:32:42'),(148,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 19:38:53'),(149,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 20:02:21'),(150,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 20:09:09'),(151,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 20:39:53'),(152,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 20:44:18'),(153,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 21:15:24'),(154,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-27 21:19:09'),(155,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 08:46:53'),(156,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 10:24:34'),(157,2,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 11:17:06'),(158,17,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 11:40:20'),(159,17,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 11:40:41'),(160,17,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 11:41:21'),(161,17,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 11:49:25'),(162,17,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 11:52:05'),(163,17,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 15:09:54'),(164,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 15:11:14'),(165,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 15:24:34'),(166,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 15:29:42'),(167,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 15:44:20'),(168,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 15:49:59'),(169,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 16:02:23'),(170,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 16:28:38'),(171,2,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-28 16:32:03'),(172,2,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-28 16:32:38'),(173,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 16:33:45'),(174,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 16:42:35'),(175,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 16:51:55'),(176,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-28 17:13:11'),(177,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:21:16'),(178,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:25:06'),(179,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:30:27'),(180,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:32:34'),(181,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:37:44'),(182,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:46:21'),(183,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:52:42'),(184,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:55:13'),(185,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:56:40'),(186,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:57:06'),(187,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 17:59:26'),(188,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 18:05:52'),(189,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 19:06:08'),(190,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 19:19:58'),(191,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 19:31:15'),(192,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 19:33:42'),(193,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 19:34:27'),(194,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 19:43:56'),(195,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 19:57:24'),(196,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 20:10:41'),(197,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 20:14:01'),(198,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 20:15:10'),(199,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 20:21:11'),(200,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 20:22:35'),(201,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 20:28:17'),(202,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 20:49:45'),(203,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 21:08:03'),(204,17,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 21:08:09'),(205,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 21:09:17'),(206,1,1,'通过用户名登陆','127.0.0.1','2018-03-28 21:10:52'),(207,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 21:12:19'),(208,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 21:23:02'),(209,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 21:42:52'),(210,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 22:12:20'),(211,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 22:23:54'),(212,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 22:55:48'),(213,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 22:56:24'),(214,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-28 22:57:02'),(215,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 09:28:52'),(216,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 09:34:02'),(217,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 09:41:21'),(218,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 09:44:12'),(219,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 09:46:40'),(220,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 09:58:18'),(221,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 10:26:09'),(222,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 10:26:44'),(223,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 10:29:18'),(224,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 10:37:03'),(225,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 11:23:30'),(226,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 12:00:53'),(227,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 14:03:11'),(228,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 14:03:54'),(229,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 14:17:09'),(230,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 15:36:58'),(231,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 15:37:30'),(232,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 15:43:05'),(233,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 15:50:16'),(234,18,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 15:50:29'),(235,18,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:03:20'),(236,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:07:17'),(237,18,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:27:49'),(238,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:30:21'),(239,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:44:27'),(240,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:46:37'),(241,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:52:23'),(242,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:57:10'),(243,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 16:59:45'),(244,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 17:15:37'),(245,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 17:16:27'),(246,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 17:17:41'),(247,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 17:20:24'),(248,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 19:10:49'),(249,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 19:19:34'),(250,1,1,'通过用户名登陆','127.0.0.1','2018-03-29 19:53:23'),(251,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 20:01:09'),(252,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 20:10:34'),(253,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 20:46:06'),(254,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:00:52'),(255,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:03:34'),(256,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:07:10'),(257,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:33:36'),(258,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:34:12'),(259,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:36:00'),(260,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:38:27'),(261,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:39:24'),(262,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:41:40'),(263,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:44:19'),(264,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:46:43'),(265,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 21:53:12'),(266,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:03:10'),(267,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:11:03'),(268,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:15:56'),(269,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:17:48'),(270,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:19:40'),(271,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:20:24'),(272,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:21:48'),(273,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:23:36'),(274,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:24:54'),(275,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:28:03'),(276,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:32:12'),(277,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:33:16'),(278,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:35:13'),(279,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:36:27'),(280,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:43:12'),(281,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:46:37'),(282,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 22:48:20'),(283,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 23:04:05'),(284,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-29 23:10:16'),(285,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 08:48:22'),(286,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 09:01:26'),(287,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 09:09:18'),(288,47,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 10:04:51'),(289,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 10:06:13'),(290,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 10:48:41'),(291,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 11:03:03'),(292,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 11:13:49'),(293,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 11:15:23'),(294,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 11:22:01'),(295,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 11:52:12'),(296,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 12:00:33'),(297,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 12:02:23'),(298,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 12:10:11'),(299,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:10:18'),(300,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:28:47'),(301,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:29:40'),(302,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:31:20'),(303,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:33:02'),(304,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:36:03'),(305,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 12:36:33'),(306,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:39:12'),(307,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:40:44'),(308,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 12:53:00'),(309,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 12:57:38'),(310,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:03:29'),(311,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:07:03'),(312,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:13:20'),(313,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:20:05'),(314,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:20:52'),(315,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:33:44'),(316,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:35:50'),(317,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:36:53'),(318,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:38:04'),(319,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:38:38'),(320,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:40:12'),(321,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 13:56:19'),(322,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 13:58:06'),(323,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 13:58:16'),(324,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:00:13'),(325,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:01:37'),(326,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:02:40'),(327,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:05:14'),(328,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:07:21'),(329,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:12:21'),(330,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:13:58'),(331,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:15:24'),(332,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:16:38'),(333,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:16:54'),(334,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:18:24'),(335,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:18:46'),(336,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:21:24'),(337,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:22:01'),(338,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:23:23'),(339,55,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:23:57'),(340,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:26:27'),(341,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:28:16'),(342,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:32:26'),(343,54,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:33:42'),(344,55,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:34:34'),(345,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:35:03'),(346,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:37:18'),(347,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:38:49'),(348,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:39:00'),(349,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:41:34'),(350,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:43:40'),(351,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:51:20'),(352,1,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 14:52:24'),(353,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 14:57:01'),(354,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:01:19'),(355,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:04:14'),(356,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:13:48'),(357,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:16:32'),(358,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:19:15'),(359,55,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:21:12'),(360,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:27:46'),(361,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 15:47:49'),(362,1,1,'閫氳繃鐢ㄦ埛鍚嶇櫥闄�','0:0:0:0:0:0:0:1','2018-03-30 16:05:08'),(363,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 16:05:34'),(364,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 17:53:49'),(365,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:01:56'),(366,59,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:03:13'),(367,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:07:16'),(368,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:17:31'),(369,1,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:21:11'),(370,61,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:31:26'),(371,64,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:46:07'),(372,64,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 18:58:32'),(373,64,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 19:02:35'),(374,71,1,'通过管理员登陆','0:0:0:0:0:0:0:1','2018-03-30 19:43:50'),(375,79,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 19:59:20'),(376,79,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 20:01:57'),(377,67,1,'通过用户名登陆','0:0:0:0:0:0:0:1','2018-03-30 20:07:19');

#
# Source for table "user_wallet"
#

DROP TABLE IF EXISTS `user_wallet`;
CREATE TABLE `user_wallet` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) NOT NULL COMMENT '用户主键',
  `btc` decimal(10,0) NOT NULL COMMENT '比特币',
  `ltc` decimal(10,0) NOT NULL COMMENT '莱特币',
  `dogecoin` decimal(10,0) NOT NULL COMMENT '狗狗币',
  `the_etheric_shares` decimal(10,0) NOT NULL COMMENT '以太股',
  `frost_Btc` decimal(10,0) NOT NULL COMMENT '比特币冻结',
  `frost_Ltc` decimal(10,0) NOT NULL COMMENT '莱特币冻结',
  `frost_Dogecoin` decimal(10,0) NOT NULL COMMENT '狗狗币冻结',
  `frost_The_etheric_shares` decimal(10,0) NOT NULL COMMENT '以太股冻结',
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "user_wallet"
#

INSERT INTO `user_wallet` VALUES (1,1,1,1,1,1,1,1,1,1),(2,2,2,2,2,2,2,2,2,2);

#
# Source for table "withdraw_deposit_address"
#

DROP TABLE IF EXISTS `withdraw_deposit_address`;
CREATE TABLE `withdraw_deposit_address` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `u_id` int(11) NOT NULL COMMENT '用户主键',
  `w_remarks` varchar(22) NOT NULL COMMENT '备注名称',
  `deposit_bank` varchar(22) NOT NULL COMMENT '开户银行',
  `to_open_an_account_provinces` varchar(22) NOT NULL COMMENT '开户省份',
  `account_opening_city` varchar(22) NOT NULL COMMENT '开户城市',
  `account_opening_branch` varchar(22) NOT NULL COMMENT '开户支行',
  `credit_card_numbers` varchar(102) NOT NULL COMMENT '银行卡号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "withdraw_deposit_address"
#

INSERT INTO `withdraw_deposit_address` VALUES (1,1,'123','123','123','123','123','123','2018-03-13 21:03:39'),(2,2,'123','dsa123','123','123','123','123','2018-03-13 21:03:39'),(8,11,'155','工商银行','广东','深圳','深圳工商银行','1354123156545154','2018-03-24 16:32:29'),(9,11,'1657','工商银行','广东','深圳','深圳工商银行','13541231565456123','2018-03-24 16:45:22');

#
# Source for table "withdraw_recode"
#

DROP TABLE IF EXISTS `withdraw_recode`;
CREATE TABLE `withdraw_recode` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `wr_money` decimal(10,0) DEFAULT NULL COMMENT '提现金额',
  `true_daozhang` decimal(10,0) DEFAULT NULL COMMENT '实际到账',
  `wr_time` date DEFAULT NULL COMMENT '提现时间',
  `wr_name` varchar(255) DEFAULT NULL COMMENT '提现姓名',
  `wr_bank` varchar(255) DEFAULT NULL COMMENT '提现银行',
  `wr_province` varchar(255) DEFAULT NULL COMMENT '提现省份',
  `wr_city` varchar(255) DEFAULT NULL COMMENT '提现城市',
  `wr_bank_branch` varchar(255) DEFAULT NULL COMMENT '提现银行支行',
  `wr_bank_account` varchar(255) DEFAULT NULL COMMENT '提现银行账号',
  `wr_stae` int(11) DEFAULT '0' COMMENT '提现状态(0.未处理 1.已撤销 2.已提现)',
  PRIMARY KEY (`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "withdraw_recode"
#

INSERT INTO `withdraw_recode` VALUES (4,11,700,693,'2018-03-26','123','工商银行','广东','深圳','深圳工商银行','5451354315612345',1),(5,11,500,495,'2018-03-26','123','工商银行','广东','深圳','深圳工商银行','5451354315612345',0),(6,1,10,8,'2018-03-30','tangyuanjie4','123','123','123','123','123',0);
