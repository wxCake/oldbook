/*
Navicat MySQL Data Transfer

Source Server         : wx
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : db_oldgoods_shop

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2022-06-05 14:17:55
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `easybuy_news`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news` (
  `EN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EN_TITLE` varchar(40) NOT NULL,
  `EN_CONTENT` varchar(1000) NOT NULL,
  `EN_CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`EN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO easybuy_news VALUES ('9', '校园旧书互换平台', '本系统拥有注册、登录、发布、购买等功能，从用户的实际出发来满足大学生的需求，已存在的二手交易平台有着时间和空间的限制，由于快递等限制因素，大大降低了用户的体验，物流的经济成本也让性价比低了很多，所以我们需要一个省时省钱的交易模式。本系统是基于校园的旧书互换平台，只在同一个校园交易，这样的话减去了物流的时间和经济成本，进行线下交易，免去了线上交易容易上当的风险。', '2022-05-12 17:01:34');
INSERT INTO easybuy_news VALUES ('10', '系统更新！', '更新—2022-5-1', '2022-05-12 17:02:18');
INSERT INTO easybuy_news VALUES ('13', '系统说明（必读）', '注册-登录-查看-购买-加购物车-订单', '2022-05-16 18:29:03');

-- ----------------------------
-- Table structure for `easybuy_order`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order` (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(50) NOT NULL,
  `EO_USER_NAME` varchar(20) DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` decimal(10,2) NOT NULL,
  `EO_STATUS` decimal(6,0) NOT NULL,
  `EO_TYPE` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO easybuy_order VALUES ('43', '20189350302', '王旭11', '软件1803', '2022-05-26 19:42:43', '20.00', '3', '1');

-- ----------------------------
-- Table structure for `easybuy_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail` (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10,0) NOT NULL,
  `EP_ID` decimal(10,0) NOT NULL,
  `EOD_QUANTITY` decimal(6,0) NOT NULL,
  `EOD_COST` decimal(10,2) NOT NULL,
  PRIMARY KEY (`EOD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO easybuy_order_detail VALUES ('17', '10', '59', '1', '23.00');
INSERT INTO easybuy_order_detail VALUES ('18', '10', '58', '1', '55.00');
INSERT INTO easybuy_order_detail VALUES ('19', '10', '49', '1', '688.00');
INSERT INTO easybuy_order_detail VALUES ('20', '10', '53', '1', '189.00');
INSERT INTO easybuy_order_detail VALUES ('21', '11', '60', '1', '15.00');
INSERT INTO easybuy_order_detail VALUES ('22', '11', '71', '1', '6.00');
INSERT INTO easybuy_order_detail VALUES ('23', '11', '69', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('24', '11', '62', '1', '45.00');
INSERT INTO easybuy_order_detail VALUES ('25', '11', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('26', '12', '65', '1', '5.00');
INSERT INTO easybuy_order_detail VALUES ('27', '12', '72', '1', '18.00');
INSERT INTO easybuy_order_detail VALUES ('28', '13', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('29', '14', '68', '1', '8.00');
INSERT INTO easybuy_order_detail VALUES ('30', '15', '71', '1', '6.00');
INSERT INTO easybuy_order_detail VALUES ('31', '16', '71', '1', '6.00');
INSERT INTO easybuy_order_detail VALUES ('32', '16', '63', '1', '5.00');
INSERT INTO easybuy_order_detail VALUES ('33', '16', '74', '2', '40.00');
INSERT INTO easybuy_order_detail VALUES ('34', '16', '61', '1', '11.00');
INSERT INTO easybuy_order_detail VALUES ('35', '16', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('36', '17', '64', '1', '10.00');
INSERT INTO easybuy_order_detail VALUES ('37', '17', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('38', '18', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('39', '19', '69', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('40', '20', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('41', '21', '67', '1', '10.00');
INSERT INTO easybuy_order_detail VALUES ('42', '22', '65', '1', '5.00');
INSERT INTO easybuy_order_detail VALUES ('43', '23', '63', '1', '5.00');
INSERT INTO easybuy_order_detail VALUES ('44', '24', '71', '1', '6.00');
INSERT INTO easybuy_order_detail VALUES ('45', '25', '71', '1', '6.00');
INSERT INTO easybuy_order_detail VALUES ('46', '26', '65', '1', '5.00');
INSERT INTO easybuy_order_detail VALUES ('47', '27', '66', '1', '10.00');
INSERT INTO easybuy_order_detail VALUES ('48', '27', '62', '1', '45.00');
INSERT INTO easybuy_order_detail VALUES ('49', '27', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('50', '27', '67', '1', '10.00');
INSERT INTO easybuy_order_detail VALUES ('51', '28', '71', '1', '6.00');
INSERT INTO easybuy_order_detail VALUES ('52', '29', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('53', '30', '65', '1', '5.00');
INSERT INTO easybuy_order_detail VALUES ('54', '30', '73', '4', '52.00');
INSERT INTO easybuy_order_detail VALUES ('55', '31', '87', '1', '23.00');
INSERT INTO easybuy_order_detail VALUES ('56', '31', '72', '1', '18.00');
INSERT INTO easybuy_order_detail VALUES ('57', '32', '72', '1', '18.00');
INSERT INTO easybuy_order_detail VALUES ('58', '33', '72', '1', '18.00');
INSERT INTO easybuy_order_detail VALUES ('59', '34', '68', '1', '8.00');
INSERT INTO easybuy_order_detail VALUES ('60', '35', '75', '2', '46.00');
INSERT INTO easybuy_order_detail VALUES ('61', '36', '77', '1', '23.00');
INSERT INTO easybuy_order_detail VALUES ('62', '37', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('63', '37', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('64', '37', '71', '1', '6.00');
INSERT INTO easybuy_order_detail VALUES ('65', '37', '76', '1', '23.00');
INSERT INTO easybuy_order_detail VALUES ('66', '38', '72', '1', '18.00');
INSERT INTO easybuy_order_detail VALUES ('67', '38', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('68', '38', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('69', '39', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('70', '40', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('71', '40', '76', '1', '23.00');
INSERT INTO easybuy_order_detail VALUES ('72', '40', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('73', '41', '73', '1', '13.00');
INSERT INTO easybuy_order_detail VALUES ('74', '42', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('75', '43', '74', '1', '20.00');
INSERT INTO easybuy_order_detail VALUES ('76', '43', '75', '1', '10.00');
INSERT INTO easybuy_order_detail VALUES ('77', '43', '71', '1', '6.00');

-- ----------------------------
-- Table structure for `easybuy_product`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product` (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) NOT NULL,
  `EP_DESCRIPTION` varchar(512) DEFAULT NULL,
  `EP_PRICE` decimal(10,2) NOT NULL,
  `EP_STOCK` decimal(10,0) NOT NULL,
  `EPC_ID` decimal(10,0) DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10,0) DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO easybuy_product VALUES ('60', '格林童话', '格林童话-一本记录童话的书籍，书才买，没怎么看，低价处理', '15.00', '100', '57', '62', '1-1.png');
INSERT INTO easybuy_product VALUES ('61', '平凡的世界', '平凡的世界是路遥先生的一部巨作，需要我们认真学习，共有两本，欢迎来买', '11.00', '100', '57', '61', '1-2.png');
INSERT INTO easybuy_product VALUES ('62', '三体', '三体全集正版共3册 刘慈欣科幻小说全套作品集 雨果奖作品流浪地球三体1三体2黑暗森林三体3死神永生，欢迎来买', '45.00', '100', '57', '61', '1-3.png');
INSERT INTO easybuy_product VALUES ('63', '活着', '正版 活着 黑皮 余华著 原版长篇小说 一次对生命意义哲学追问', '5.00', '100', '57', '63', '1-5.JPG');
INSERT INTO easybuy_product VALUES ('64', '人间失格', '人间失格 太宰治正版珍藏版 生而为人我很抱歉 作者代表作逆行女学生斜阳维荣之妻世界名著文学小说书籍畅销书排行榜', '10.00', '100', '57', '62', '1-4.JPG');
INSERT INTO easybuy_product VALUES ('65', '高数笔记极限', '高数极限部分，知识点十分多而且十分重要。', '5.00', '100', '59', '68', '3-2.JPG');
INSERT INTO easybuy_product VALUES ('66', '线性代数', '线代笔记，你期末考试的好帮手', '10.00', '100', '59', '67', '3-1.JPG');
INSERT INTO easybuy_product VALUES ('67', '数据结构', '数据结构殷人坤教材，你学习的帮手', '10.00', '100', '58', '65', '2-1.JPG');
INSERT INTO easybuy_product VALUES ('68', '高数笔记2', '高等数学一元积分学', '8.00', '100', '59', '69', '3-3.JPG');
INSERT INTO easybuy_product VALUES ('69', '英语考研笔记', '助你成功，冲刺考研英语80分', '20.00', '100', '59', '69', '3-5.JPG');
INSERT INTO easybuy_product VALUES ('70', '数据结构习题', '习题集', '15.00', '100', '58', '66', '2-2.JPG');
INSERT INTO easybuy_product VALUES ('71', '英语单词', '考研英语单词', '6.00', '99', '58', '65', '2-5.JPG');
INSERT INTO easybuy_product VALUES ('72', 'c语言', 'c语言设计', '18.00', '99', '58', '65', '2-3.JPG');
INSERT INTO easybuy_product VALUES ('73', '数学公式', '大部分的数学公式收录其中', '13.00', '97', '59', '68', '3-4.JPG');
INSERT INTO easybuy_product VALUES ('74', '数据库原理', '数据库原理，考研复试必备', '20.00', '95', '58', '64', '2-4.JPG');

-- ----------------------------
-- Table structure for `easybuy_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category` (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) NOT NULL,
  `EPC_PARENT_ID` decimal(10,0) NOT NULL,
  PRIMARY KEY (`EPC_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO easybuy_product_category VALUES ('57', '课外旧书', '0');
INSERT INTO easybuy_product_category VALUES ('58', '课本教材', '0');
INSERT INTO easybuy_product_category VALUES ('59', '学霸笔记', '0');
INSERT INTO easybuy_product_category VALUES ('60', '其他分类', '0');
INSERT INTO easybuy_product_category VALUES ('61', '全新的书', '57');
INSERT INTO easybuy_product_category VALUES ('62', '九成新的书', '57');
INSERT INTO easybuy_product_category VALUES ('63', '很旧的书', '57');
INSERT INTO easybuy_product_category VALUES ('64', '全新的教材', '58');
INSERT INTO easybuy_product_category VALUES ('65', '九成新的教材', '58');
INSERT INTO easybuy_product_category VALUES ('66', '很旧的教材', '58');
INSERT INTO easybuy_product_category VALUES ('67', '习题集', '59');
INSERT INTO easybuy_product_category VALUES ('68', '知识点', '59');
INSERT INTO easybuy_product_category VALUES ('69', '考研笔记', '59');
INSERT INTO easybuy_product_category VALUES ('70', '其他', '60');

-- ----------------------------
-- Table structure for `easybuy_shop`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shop`;
CREATE TABLE `easybuy_shop` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) DEFAULT NULL,
  `es_ep_name` varchar(64) DEFAULT NULL,
  `es_ep_price` decimal(10,0) DEFAULT NULL,
  `es_eod_quantity` int(11) DEFAULT NULL,
  `es_ep_stock` int(11) DEFAULT NULL,
  `es_ep_id` int(11) DEFAULT NULL,
  `es_eu_user_id` varchar(64) DEFAULT NULL,
  `es_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_shop
-- ----------------------------
INSERT INTO easybuy_shop VALUES ('21', '5bc8923932d72.jpg', '帽服卫衣 ', '189', '1', '1', '53', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('22', '5bba8e0af2f25.jpg', '低价急售苹果7P手机，全新， 128G', '688', '1', '1', '49', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('23', '5b7ebf7b8cd03.jpg', 'Mac 子弹口红12件套69包邮', '55', '1', '22', '58', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('24', '3887a2d9733e10f12eb6a1eb6603d48d841b3c76.jpg', '动漫', '23', '1', '10', '59', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('25', '1-1.png', '格林童话', '15', '1', '1', '60', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('26', '2-5.JPG', '英语单词', '6', '1', '1', '71', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('27', '3-5.JPG', '英语考研笔记', '20', '1', '2', '69', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('28', '1-3.png', '三体', '45', '1', '1', '62', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('29', '3-4.JPG', '数学公式', '13', '1', '10', '73', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('30', '3-2.JPG', '高数笔记极限', '5', '1', '10', '65', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('31', '2-3.JPG', 'c语言', '18', '1', '2', '72', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('32', '2-4.JPG', '数据库', '20', '1', '3', '74', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('33', '3-3.JPG', '高数笔记2', '8', '1', '1', '68', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('34', '2-5.JPG', '英语单词', '6', '1', '0', '71', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('35', '2-5.JPG', '英语单词', '6', '1', '-1', '71', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('36', '1-5.JPG', '活着', '5', '1', '1', '63', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('37', '2-4.JPG', '数据库', '20', '2', '2', '74', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('38', '1-2.png', '平凡的世界', '11', '1', '2', '61', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('39', '3-4.JPG', '数学公式', '13', '1', '9', '73', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('40', '1-4.JPG', '人间失格', '10', '1', '1', '64', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('41', '3-4.JPG', '数学公式', '13', '1', '8', '73', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('42', '3-4.JPG', '数学公式', '13', '1', '7', '73', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('43', '3-5.JPG', '英语考研笔记', '20', '1', '1', '69', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('44', '3-4.JPG', '数学公式', '13', '1', '6', '73', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('45', '2-1.JPG', '数据结构', '10', '1', '5', '67', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('46', '3-2.JPG', '高数笔记极限', '5', '1', '9', '65', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('47', '1-5.JPG', '活着', '5', '1', '0', '63', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('48', '2-5.JPG', '英语单词', '6', '1', '-2', '71', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('49', '2-5.JPG', '英语单词', '6', '1', '-3', '71', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('50', '3-2.JPG', '高数笔记极限', '5', '1', '8', '65', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('51', '2-1.JPG', '数据结构', '10', '1', '4', '67', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('52', '3-4.JPG', '数学公式', '13', '1', '5', '73', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('53', '1-3.png', '三体', '45', '1', '0', '62', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('54', '3-1.JPG', '线性代数', '10', '1', '1', '66', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('60', '2-5.JPG', '英语单词', '6', '1', '-4', '71', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('61', '3-4.JPG', '数学公式', '13', '4', '4', '73', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('62', '2-4.JPG', '数据库原理', '20', '1', '0', '74', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('63', '2-3.JPG', 'c语言', '18', '1', '1', '72', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('64', '3-2.JPG', '高数笔记极限', '5', '1', '7', '65', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('65', '900.jpg', '动漫', '23', '1', '44', '87', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('66', '2-3.JPG', 'c语言', '18', '1', '0', '72', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('67', '2-3.JPG', 'c语言', '18', '1', '-1', '72', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('68', '3-3.JPG', '高数笔记2', '8', '1', '0', '68', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('69', '7c0cd51e99a84799434a33ef6cd6b2996f23178c1bad9-UXMLRp_fw658.jpg', '动漫', '23', '2', '2', '75', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('71', '3-4.JPG', '数学公式', '13', '1', '0', '73', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('72', '4-1.jpg', '动漫', '23', '1', '100', '76', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('73', '4-1.jpg', '动漫', '23', '1', '100', '76', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('74', '2-5.JPG', '英语单词', '6', '1', '-5', '71', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('75', '2b86d36c4f8affd6f175b367cde103055502f951.jpg', '动漫', '23', '1', '44', '77', '20189350303', '2');
INSERT INTO easybuy_shop VALUES ('76', '2-4.JPG', '数据库原理', '20', '1', '-1', '74', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('77', '2-4.JPG', '数据库原理', '20', '1', '-1', '74', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('79', '2-4.JPG', '数据库原理', '20', '1', '-3', '74', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('81', '3-4.JPG', '数学公式', '13', '1', '0', '73', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('82', '2-3.JPG', 'c语言', '18', '1', '100', '72', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('83', '2-4.JPG', '数据库原理', '20', '1', '99', '74', '20189350300', '2');
INSERT INTO easybuy_shop VALUES ('84', '3-4.JPG', '数学公式', '13', '1', '99', '73', '20189350300', '1');
INSERT INTO easybuy_shop VALUES ('85', '2-4.JPG', '数据库原理', '20', '1', '98', '74', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('86', '3-4.JPG', '数学公式', '13', '1', '98', '73', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('87', '2-5.JPG', '英语单词', '6', '1', '100', '71', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('88', '4-1.jpg', '动漫', '10', '1', '10', '75', '20189350302', '2');
INSERT INTO easybuy_shop VALUES ('89', '2-4.JPG', '数据库原理', '20', '1', '97', '74', 'admin', '2');
INSERT INTO easybuy_shop VALUES ('90', '2-4.JPG', '数据库原理', '20', '1', '96', '74', '20189350302', '2');

-- ----------------------------
-- Table structure for `easybuy_user`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user` (
  `EU_USER_ID` varchar(50) NOT NULL,
  `EU_USER_NAME` varchar(20) NOT NULL,
  `EU_PASSWORD` varchar(20) NOT NULL,
  `EU_SEX` varchar(1) NOT NULL,
  `EU_BIRTHDAY` datetime DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) DEFAULT NULL,
  `EU_EMAIL` varchar(80) DEFAULT NULL,
  `EU_MOBILE` varchar(11) DEFAULT NULL,
  `EU_ADDRESS` varchar(200) DEFAULT NULL,
  `EU_STATUS` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EU_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO easybuy_user VALUES ('20189350302', '王旭11', '123', 'T', '2022-05-22 00:00:00', null, '2211561618@qq.com', '17872667439', '软件1803', '1');
INSERT INTO easybuy_user VALUES ('20189350303', '王旭', '123', 'T', '2022-05-08 00:00:00', null, '2211561617@qq.com', '17872667439', '软件1803', '1');
INSERT INTO easybuy_user VALUES ('admin', 'wx', 'admin', 'T', '2022-01-13 00:00:00', null, '2211561618@qq.com', '177777777', '江苏', '2');

-- ----------------------------
-- Procedure structure for `haha`
-- ----------------------------
DROP PROCEDURE IF EXISTS `haha`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `haha`(in a int,in b int)
BEGIN
set @x=0;
set @x =a+b;
SELECT @x as num;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `jk`
-- ----------------------------
DROP PROCEDURE IF EXISTS `jk`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jk`()
BEGIN
 SELECT * from admin;
end
;;
DELIMITER ;
