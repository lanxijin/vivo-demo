/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-07-02 20:19:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `imgpath` text,
  `price` float(255,0) DEFAULT NULL,
  `smallImg` text,
  `introduce` text,
  `xin` varchar(20) NOT NULL,
  `delprice` float(255,0) NOT NULL,
  `iconHot` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '小米10', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494045.31058391.jpg', '3999', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494045.31058391.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494052.12221865.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494060.7822643.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494070.59196940.jpg', '骁龙865/1亿像素相机', '新款', '4299', 'iconHot');
INSERT INTO `goods` VALUES ('2', 'Redmi K30 Pro', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1584945960.00664304.jpg', '3399', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1584945960.00664304.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1585031954.50557099.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1585031954.49469551.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1585031954.50549009.jpg', '双模5G，骁龙865，弹出全面屏', '新款', '3599', 'iconHot');
INSERT INTO `goods` VALUES ('3', 'Redmi K30 Pro 变焦版', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1584945817.94965157.jpg', '3799', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1584945817.94965157.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1584945817.94252357.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1584945818.13083157.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1584945817.93821155.jpg', '双模5G，骁龙865，弹出全面屏', '', '3999', '');
INSERT INTO `goods` VALUES ('4', 'Redmi K30', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.96322514.jpg', '1699', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.96322514.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87827400.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87718846.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87312700.jpg', '骁龙865 / 50倍变焦', '新款', '1999', '');
INSERT INTO `goods` VALUES ('5', '小米10 Pro', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581493329.10251213.jpg', '4999', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581493329.10251213.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581493629.35094428.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581493646.8747482.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581493329.10251213.jpg', '120Hz流速屏，全速热爱', '', '4799', 'iconHot');
INSERT INTO `goods` VALUES ('6', 'Redmi 8', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/d295c4fb500d163a7045dc715b47f808.jpg?thumb=1&w=240&h=240&f=webp&q=90', '699', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/d295c4fb500d163a7045dc715b47f808.jpg?thumb=1&w=240&h=240&f=webp&q=90====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575882086.61387291.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575882086.61638363.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575882086.61814608.jpg', '双模5G，120Hz流速屏', '', '789', '');
INSERT INTO `goods` VALUES ('7', 'Redmi 7A', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1563243759.11976150.jpg', '549', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494045.31058391.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494052.12221865.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494060.7822643.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494070.59196940.jpg', '5000mAh超长续航', '', '699', 'iconHot');
INSERT INTO `goods` VALUES ('8', 'Redmi Note 8', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/0099822e42b4428cb25c4cdebc6ca53d.jpg', '999', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.96322514.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87827400.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87718846.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87312700.jpg', '5000mAh超长续航', '', '1199', '');
INSERT INTO `goods` VALUES ('9', '米家互联网空调C1', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/8ce424d6fe93dfb74733b5838140b7ee.jpg?thumb=1&w=240&h=240&f=webp&q=90', '1999', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/8ce424d6fe93dfb74733b5838140b7ee.jpg?thumb=1&w=240&h=240&f=webp&q=90', '变频节能省电，自清洁', '新款', '2289', '');
INSERT INTO `goods` VALUES ('10', '米家互联网洗烘一体机', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560161251.21862332.jpg', '2999', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560161251.21862332.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560161250.95927056.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560161250.95428091.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1560161250.9595050.jpg', '智能洗烘，省心省力', '', '3279', '');
INSERT INTO `goods` VALUES ('11', '小米电视4A 32英寸', '//i8.mifile.cn/v1/a1/ef617fac-7489-436d-b74e-c43582f09633!240x240.jpg', '699', '//i8.mifile.cn/v1/a1/ef617fac-7489-436d-b74e-c43582f09633!240x240.jpg', '人工智能系统，高清液晶屏', '新款', '799', 'iconHot');
INSERT INTO `goods` VALUES ('12', '15.6\" 四核i7 16G 独显 512G', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/cd2aa2dcad6440b469c22e27db9b6236.jpg?thumb=1&w=240&h=240&f=webp&q=90', '4899', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/cd2aa2dcad6440b469c22e27db9b6236.jpg?thumb=1&w=240&h=240&f=webp&q=90====https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/33c6a31aaee90164ce963801bec48e64.png====https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/bb159dbe860ee434b52d8eed9e9fd424.png====https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/bb159dbe860ee434b52d8eed9e9fd424.png', '全面均衡的国民轻薄本', '', '5199', '');
INSERT INTO `goods` VALUES ('13', '小米「小爱老师」', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/011dd8493ad62f3793dbb63d9fbd3bc0.jpg?thumb=1&w=240&h=240&f=webp&q=90', '429', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/011dd8493ad62f3793dbb63d9fbd3bc0.jpg?thumb=1&w=240&h=240&f=webp&q=90', '口袋里的英语外教', '', '500', '');
INSERT INTO `goods` VALUES ('14', '小米小爱音箱 Play', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/e7c6e79433c883e1a022ec21402c1679.jpg?thumb=1&w=240&h=240&f=webp&q=90', '99', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/e7c6e79433c883e1a022ec21402c1679.jpg?thumb=1&w=240&h=240&f=webp&q=90', '听音乐、语音遥控家电', '新款', '129', 'iconHot');
INSERT INTO `goods` VALUES ('15', '米家电饭煲4L', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/b42e49c6c0208f2de5a2f7a491a3af46.jpg?thumb=1&w=240&h=240&f=webp&q=90', '249', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/b42e49c6c0208f2de5a2f7a491a3af46.jpg?thumb=1&w=240&h=240&f=webp&q=90', '890W 立体加热 ', '', '269', '');
INSERT INTO `goods` VALUES ('16', '小米手环4', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/e850fa029579ba886e3d5c81f00ae534.jpg?thumb=1&w=240&h=240&f=webp&q=90', '159', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/e850fa029579ba886e3d5c81f00ae534.jpg?thumb=1&w=240&h=240&f=webp&q=90', '大屏彩显，20天超长续航', '', '179', '');
INSERT INTO `goods` VALUES ('17', '米家空调', '//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2b911be4c2f156bb6e4cf367c6080045.jpg', '1299', '//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/2b911be4c2f156bb6e4cf367c6080045.jpg', '出众静音，快速制冷热', '新款', '1599', 'iconHot');
INSERT INTO `goods` VALUES ('18', 'Redmi全自动波轮洗衣机1A 8kg', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec20453216dcd42f982cffe5fdbc3115.jpg', '2999', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/ec20453216dcd42f982cffe5fdbc3115.jpg', '一键操作，父母都爱用', '', '3299', '');
INSERT INTO `goods` VALUES ('19', 'Redmi全自动波轮洗衣机', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/b8c63a2024528fe5410ebe669b7d2407.jpg', '799', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/b8c63a2024528fe5410ebe669b7d2407.jpg', '一键操作，父母都爱用', '新款', '899', 'iconHot');
INSERT INTO `goods` VALUES ('20', 'Redmi K30', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/2c16238f786e4f93bdb175d7bf21aa47.jpg', '1699', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.96322514.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87827400.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87718846.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87312700.jpg', '骁龙865 / 50倍变焦', '', '1999', 'iconHot');
INSERT INTO `goods` VALUES ('21', '小米USB充电器30W快充版（1A1C）', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/1fba6c4f1a19200778ac3b1671b087cd.jpg', '59', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/1fba6c4f1a19200778ac3b1671b087cd.jpg', '快速无线闪充，Qi充电标准', '', '66', '');
INSERT INTO `goods` VALUES ('22', 'Redmi 8', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/0099822e42b4428cb25c4cdebc6ca53d.jpg', '699', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/d295c4fb500d163a7045dc715b47f808.jpg?thumb=1&w=240&h=240&f=webp&q=90====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575882086.61387291.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575882086.61638363.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575882086.61814608.jpg', '5000mAh超长续航', '新款', '799', 'iconHot');
INSERT INTO `goods` VALUES ('23', '15.6\" 四核i7 16G 独显 512G', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/c1aafa589258a4d9fdf49831b457418d.jpg', '4899', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/cd2aa2dcad6440b469c22e27db9b6236.jpg?thumb=1&w=240&h=240&f=webp&q=90====https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/33c6a31aaee90164ce963801bec48e64.png====https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/bb159dbe860ee434b52d8eed9e9fd424.png====https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/bb159dbe860ee434b52d8eed9e9fd424.png', '全面均衡的国民轻薄本', '', '5299', '');
INSERT INTO `goods` VALUES ('24', 'Redmi 7A', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/7cfdbce40301133a287e9e57faa37bdf.jpg', '549', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494045.31058391.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494052.12221865.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494060.7822643.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494070.59196940.jpg', '120Hz流速屏，全速热爱', '', '569', '');
INSERT INTO `goods` VALUES ('25', '米家互联网洗烘一体机', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/ccd09671448c4cdb4a3817f68f788662.jpg', '2999', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/ccd09671448c4cdb4a3817f68f788662.jpg', '智能洗烘，省心省力', '', '3289', 'iconHot');
INSERT INTO `goods` VALUES ('26', '小米10', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/c924c3f3436b6934495fd98f159ee3f7.jpg', '3999', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494045.31058391.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494052.12221865.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494060.7822643.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1581494070.59196940.jpg', '双模5G，骁龙865，弹出全面屏', '新款', '4299', '');
INSERT INTO `goods` VALUES ('27', 'Redmi K30', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/d295c4fb500d163a7045dc715b47f808.jpg', '4999', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.96322514.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87827400.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87718846.jpg====https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1575881713.87312700.jpg', '双模5G，骁龙865，弹出全面屏', '', '5599', '');
INSERT INTO `goods` VALUES ('28', '小米米家智能门锁 推拉式', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/0baacf6e54cbf89cab2c543cc02344e9.jpg', '1599', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/0baacf6e54cbf89cab2c543cc02344e9.jpg', '120Hz流速屏，全速热爱', '', '1699', '');
INSERT INTO `goods` VALUES ('29', '小米小爱音箱 Play', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/e7c6e79433c883e1a022ec21402c1679.jpg', '99', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/e7c6e79433c883e1a022ec21402c1679.jpg', '听音乐、语音遥控家电', '', '109', 'iconHot');
INSERT INTO `goods` VALUES ('30', '小爱音箱万能遥控版', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/44a30f0da2aacb66a0f896293ebc703f.jpg', '149', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/44a30f0da2aacb66a0f896293ebc703f.jpg', '传统家电秒变智能', '', '159', '');
INSERT INTO `goods` VALUES ('31', '小米体脂秤2', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/550177d2e54387521bce9e78cb2949dd.jpg', '99', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/550177d2e54387521bce9e78cb2949dd.jpg', '轻松掌握身体脂肪率', '新款', '119', '');
INSERT INTO `goods` VALUES ('32', '小米真无线蓝牙耳机 Air 2', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/50649d7b5706f4cd9f658e93db6b6564.jpg', '369', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/50649d7b5706f4cd9f658e93db6b6564.jpg', '智能真无线，轻松舒适戴', '', '400', '');
INSERT INTO `goods` VALUES ('33', 'Redmi充电宝 10000mAh 标准版 白色', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/ea8e42faebf7d76a4cb42b8930cf9e46.jpg', '59', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/ea8e42faebf7d76a4cb42b8930cf9e46.jpg', '大容量，	可上飞机 ', '', '79', '');
INSERT INTO `goods` VALUES ('34', 'Redmi充电宝 20000mAh 快充版', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/eaf70e0e9905de6452f07b1f48fcc386.jpg', '99', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/eaf70e0e9905de6452f07b1f48fcc386.jpg', '大容量，	可上飞机 ', '', '150', 'iconHot');
INSERT INTO `goods` VALUES ('35', '小米插线板 5孔位', '//i8.mifile.cn/v1/a1/5dd69c0a-8f4a-b42f-d840-6c5a47f2cd03.jpg', '39', '//i8.mifile.cn/v1/a1/5dd69c0a-8f4a-b42f-d840-6c5a47f2cd03.jpg', '多重安全保护', '', '50', '');
INSERT INTO `goods` VALUES ('36', '小米蓝牙耳机AirDots青春版', '//i8.mifile.cn/b2c-mimall-media/92af1f21293fabfbf2a112892b864925.jpg', '199', '//i8.mifile.cn/b2c-mimall-media/92af1f21293fabfbf2a112892b864925.jpg', '智能真无线，轻松舒适戴', '', '240', '');
INSERT INTO `goods` VALUES ('37', '小米小爱蓝牙音箱 随身版', '//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/321610e787393c42e5cb2e5730a7681d.jpg', '49', '//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/321610e787393c42e5cb2e5730a7681d.jpg', '小巧便携，一键唤醒小爱', '新款', '59', '');
INSERT INTO `goods` VALUES ('38', '高速无线充套装', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/9eb0178e3bfeb7d170edd641fb4be4bc.jpg', '149', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/9eb0178e3bfeb7d170edd641fb4be4bc.jpg', '快速无线闪充，Qi充电标准', '', '159', 'iconHot');
INSERT INTO `goods` VALUES ('39', '小米真无线蓝牙耳机 Air 2', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/50649d7b5706f4cd9f658e93db6b6564.jpg', '369', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/50649d7b5706f4cd9f658e93db6b6564.jpg', '快速无线闪充，Qi充电标准', '', '400', '');
INSERT INTO `goods` VALUES ('40', '米家飞行员太阳镜 Pro', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg', '169', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/cccac948e1b8ffb47f1fecde67692e60.jpg', '尼龙偏光，轻巧佩戴', '', '189', '');
INSERT INTO `goods` VALUES ('41', '小米巨能写中性笔10支装', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/57433a4b991b2a2ddc889f2d8d434655.jpg', '10', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/57433a4b991b2a2ddc889f2d8d434655.jpg', '一支顶4支，超长顺滑书写', '', '15', '');
INSERT INTO `goods` VALUES ('42', '小米旅行箱 20英寸 布朗熊限量版', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/c149537ebb0c2cdb977ddd93200074f4.jpg', '299', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/c149537ebb0c2cdb977ddd93200074f4.jpg', '“国际巨星” LINE FRIENDS布朗熊', '', '399', 'iconHot');
INSERT INTO `goods` VALUES ('43', '米家迷你保温杯', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/03d94ee6059481a6adcb6c4c5c572fb4.jpg', '49', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/03d94ee6059481a6adcb6c4c5c572fb4.jpg', '可以随身携带的温度', '', '59', '');
INSERT INTO `goods` VALUES ('44', '米家驱蚊器基础版 3个装', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/41e6890f9d6b7fdb4275c986dc3644e8.jpg', '109', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/41e6890f9d6b7fdb4275c986dc3644e8.jpg', '3个装 长效驱蚊', '新款', '129', 'iconHot');
INSERT INTO `goods` VALUES ('45', '3卷装抽绳式垃圾袋', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/38748fefeef78183ac01356a23dbc5c5.jpg', '10', '//cdn.cnbj1.fds.api.mi-img.com/mi-mall/38748fefeef78183ac01356a23dbc5c5.jpg', '让清洁更简单', '', '16', 'iconHot');
INSERT INTO `goods` VALUES ('46', '贝医生巴氏牙刷 四色装', '//i8.mifile.cn/v1/a1/413f5e2f-53e7-0879-119c-8b4466feea53.jpg', '40', '//i8.mifile.cn/v1/a1/413f5e2f-53e7-0879-119c-8b4466feea53.jpg', '进口刷毛，好品质', '', '50', 'iconHot');
INSERT INTO `goods` VALUES ('60', 'vivo X50 Pro 5G版 8GB+128GB 液氧', '../imgs/index-large.png', '4298', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591184684339_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591184696373_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591184685116_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591191209915_250x250.png.webp', '超感光微云台 | 夜色更精彩', '', '4499', '');
INSERT INTO `goods` VALUES ('61', 'NEX 3S 5G版 8GB+256GB 深空流光', '../imgs/banner-middle-left.jpg', '4998', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10001939_1583745547756_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10001939_1583745547759_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10001939_1583745548092_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/39/10001939_1583821246059_250x250.png.webp', 'NEX 3S无界瀑布屏', '', '5198', '');
INSERT INTO `goods` VALUES ('62', 'iQOO Neo3 5G版 8GB+128GB 极昼', '../imgs/banner-middle-rgh.jpg', '2898', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683137668_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683138073_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683136772_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683168599_250x250.png.webp', '高通骁龙865 | 144Hz竞速屏', '', '2999', '');
INSERT INTO `goods` VALUES ('63', 'iQOO Z1 5G版 8GB+128GB 星河银', '../imgs/banner-produce2.svg', '2498', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10002503_1589799951253_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10002503_1589799950855_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10002503_1589799951185_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/03/10002503_1592321673308_250x250.png.webp', '5G+5G双卡双待手机', '', '2698', '');
INSERT INTO `goods` VALUES ('64', 'vivo S6 5G版 8GB+128GB 天鹅湖', '../imgs/index-large3.png', '2498', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1586101573579_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1586101573530_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1586101574136_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1587950361815_250x250.png.webp', '双模5G，4500毫安大电池', '', '2698', '');
INSERT INTO `goods` VALUES ('65', 'vivo TWS Neo 真无线耳机 星际蓝', '../imgs/small-list1.png', '499', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1589791356105_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1591014572975_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1591014568829_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/30/10002530_1591014569024_250x250.png.webp', '27小时强劲续航', '', '599', '');
INSERT INTO `goods` VALUES ('66', 'vivo X50 Pro 5G版 8GB+128GB 液氧', '../imgs/small-list2.jpg', '4298', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591184684339_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591184696373_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591184685116_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/42/10002842_1591191209915_250x250.png.webp', '超感光微云台 | 夜色更精彩', '', '4499', '');
INSERT INTO `goods` VALUES ('67', 'iQOO Neo3 5G版 8GB+128GB 极昼', '../imgs/small-list3.png', '2898', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683137668_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683138073_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683136772_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/25/10002225_1590683168599_250x250.png.webp', '高通骁龙865 | 144Hz竞速屏', '', '2999', '');
INSERT INTO `goods` VALUES ('68', 'vivo S6 5G版 8GB+128GB 天鹅湖', '../imgs/small-list4.jpg', '2498', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1586101573579_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1586101573530_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1586101574136_250x250.png.webp====https://shopstatic.vivo.com.cn/vivoshop/commodity/52/10002152_1587950361815_250x250.png.webp', '双模5G，4500毫安大电池', '', '2698', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('21', '兰溪', '1234567');
INSERT INTO `user` VALUES ('20', 'lan', '123456');
INSERT INTO `user` VALUES ('31', 'lan13', '123');
INSERT INTO `user` VALUES ('32', 'lan12', '123');
