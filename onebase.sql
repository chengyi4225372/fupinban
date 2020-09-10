/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50728
Source Host           : localhost:3306
Source Database       : onebase

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2020-09-10 14:06:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ob_action_log
-- ----------------------------
DROP TABLE IF EXISTS `ob_action_log`;
CREATE TABLE `ob_action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行会员id',
  `username` char(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `ip` char(30) NOT NULL DEFAULT '' COMMENT '执行行为者ip',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '行为名称',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '执行的URL',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1564 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of ob_action_log
-- ----------------------------
INSERT INTO `ob_action_log` VALUES ('1311', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '-1', '1599184394', '1597979031');
INSERT INTO `ob_action_log` VALUES ('1312', '1', 'admin', '127.0.0.1', '编辑', '编辑会员，id：1', '/admin.php/member/memberedit.html', '-1', '1599184394', '1597981041');
INSERT INTO `ob_action_log` VALUES ('1313', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：Menu，id：68，value：15', '/admin.php/menu/setsort.html', '-1', '1599184394', '1597988186');
INSERT INTO `ob_action_log` VALUES ('1314', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin.php/login/loginhandle.html', '-1', '1599184394', '1597990303');
INSERT INTO `ob_action_log` VALUES ('1315', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1597991182');
INSERT INTO `ob_action_log` VALUES ('1316', '1', 'admin', '127.0.0.1', '编辑', '文章编辑，name：优化维护-执行记录', '/admin/article/articleedit.html', '-1', '1599184394', '1597991933');
INSERT INTO `ob_action_log` VALUES ('1317', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1598835204');
INSERT INTO `ob_action_log` VALUES ('1318', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1598835950');
INSERT INTO `ob_action_log` VALUES ('1319', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：前言管理', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836104');
INSERT INTO `ob_action_log` VALUES ('1320', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：Menu，id：211，value：7', '/admin/menu/setsort.html', '-1', '1599184394', '1598836111');
INSERT INTO `ob_action_log` VALUES ('1321', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：首页展示图', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836149');
INSERT INTO `ob_action_log` VALUES ('1322', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：序言内容', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836199');
INSERT INTO `ob_action_log` VALUES ('1323', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：综述管理', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836367');
INSERT INTO `ob_action_log` VALUES ('1324', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：探索管理', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836418');
INSERT INTO `ob_action_log` VALUES ('1325', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：项目精选', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836463');
INSERT INTO `ob_action_log` VALUES ('1326', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：事迹风采', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836541');
INSERT INTO `ob_action_log` VALUES ('1327', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：留言管理', '/admin/menu/menuadd.html', '-1', '1599184394', '1598836572');
INSERT INTO `ob_action_log` VALUES ('1328', '1', 'admin', '127.0.0.1', '数据状态', '数据状态调整，model：Menu，ids：166，status：0', '/admin/menu/setstatus/ids/166/status/0.html', '-1', '1599184394', '1598836576');
INSERT INTO `ob_action_log` VALUES ('1329', '1', 'admin', '127.0.0.1', '数据状态', '数据状态调整，model：Menu，ids：157，status：0', '/admin/menu/setstatus/ids/157/status/0.html', '-1', '1599184394', '1598836581');
INSERT INTO `ob_action_log` VALUES ('1330', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：接口管理', '/admin/menu/menuedit.html', '-1', '1599184394', '1598836631');
INSERT INTO `ob_action_log` VALUES ('1331', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：优化维护', '/admin/menu/menuedit.html', '-1', '1599184394', '1598836639');
INSERT INTO `ob_action_log` VALUES ('1332', '1', 'admin', '127.0.0.1', '数据状态', '数据状态调整，model：Menu，ids：144，status：0', '/admin/menu/setstatus/ids/144/status/0.html', '-1', '1599184394', '1598836653');
INSERT INTO `ob_action_log` VALUES ('1333', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：综述分类列表', '/admin/menu/menuadd.html', '-1', '1599184394', '1598837386');
INSERT INTO `ob_action_log` VALUES ('1334', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：分类名称', '/admin/menu/menuedit.html', '-1', '1599184394', '1598837687');
INSERT INTO `ob_action_log` VALUES ('1335', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：综述分类列表', '/admin/menu/menuadd.html', '-1', '1599184394', '1598838647');
INSERT INTO `ob_action_log` VALUES ('1336', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：探索分类列表', '/admin/menu/menuedit.html', '-1', '1599184394', '1598838682');
INSERT INTO `ob_action_log` VALUES ('1337', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：优化维护', '/admin/menu/menuedit.html', '-1', '1599184394', '1598838713');
INSERT INTO `ob_action_log` VALUES ('1338', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：接口管理', '/admin/menu/menuedit.html', '-1', '1599184394', '1598838721');
INSERT INTO `ob_action_log` VALUES ('1339', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：配置列表', '/admin/menu/menuedit.html', '-1', '1599184394', '1598838967');
INSERT INTO `ob_action_log` VALUES ('1340', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：分类列表', '/admin/menu/menuadd.html', '-1', '1599184394', '1598839492');
INSERT INTO `ob_action_log` VALUES ('1341', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：留言结语', '/admin/menu/menuadd.html', '-1', '1599184394', '1598839630');
INSERT INTO `ob_action_log` VALUES ('1342', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：留言列表', '/admin/menu/menuadd.html', '-1', '1599184394', '1598839664');
INSERT INTO `ob_action_log` VALUES ('1343', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：留言结语', '/admin/menu/menuedit.html', '-1', '1599184394', '1598841009');
INSERT INTO `ob_action_log` VALUES ('1344', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：事迹分类列表', '/admin/menu/menuadd.html', '-1', '1599184394', '1598842558');
INSERT INTO `ob_action_log` VALUES ('1345', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：文章列表', '/admin/menu/menuedit.html', '-1', '1599184394', '1598842968');
INSERT INTO `ob_action_log` VALUES ('1346', '1', 'admin', '127.0.0.1', '新增', 'prefaceimg上传图片 id=1', '/admin/preface/setimg.html', '-1', '1599184394', '1598856149');
INSERT INTO `ob_action_log` VALUES ('1347', '1', 'admin', '127.0.0.1', '新增', 'prefaceimg上传图片 id=2', '/admin/preface/setimg.html', '-1', '1599184394', '1598856602');
INSERT INTO `ob_action_log` VALUES ('1348', '1', 'admin', '127.0.0.1', '编辑', 'prefaceimg上传图片 id=3', '/admin/preface/setimg.html', '-1', '1599184394', '1598856671');
INSERT INTO `ob_action_log` VALUES ('1349', '1', 'admin', '127.0.0.1', '编辑', 'prefaceimg上传图片 id=4', '/admin/preface/setimg.html', '-1', '1599184394', '1598856873');
INSERT INTO `ob_action_log` VALUES ('1350', '1', 'admin', '127.0.0.1', '编辑', 'prefaceimg上传图片 id=5', '/admin/preface/setimg.html', '-1', '1599184394', '1598858806');
INSERT INTO `ob_action_log` VALUES ('1351', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1598859169');
INSERT INTO `ob_action_log` VALUES ('1352', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859388');
INSERT INTO `ob_action_log` VALUES ('1353', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =2', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859389');
INSERT INTO `ob_action_log` VALUES ('1354', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =3', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859390');
INSERT INTO `ob_action_log` VALUES ('1355', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859393');
INSERT INTO `ob_action_log` VALUES ('1356', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =4', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859434');
INSERT INTO `ob_action_log` VALUES ('1357', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =5', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859449');
INSERT INTO `ob_action_log` VALUES ('1358', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =6', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859634');
INSERT INTO `ob_action_log` VALUES ('1359', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859663');
INSERT INTO `ob_action_log` VALUES ('1360', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859668');
INSERT INTO `ob_action_log` VALUES ('1361', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859704');
INSERT INTO `ob_action_log` VALUES ('1362', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859713');
INSERT INTO `ob_action_log` VALUES ('1363', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859719');
INSERT INTO `ob_action_log` VALUES ('1364', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859868');
INSERT INTO `ob_action_log` VALUES ('1365', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859878');
INSERT INTO `ob_action_log` VALUES ('1366', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859882');
INSERT INTO `ob_action_log` VALUES ('1367', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859887');
INSERT INTO `ob_action_log` VALUES ('1368', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859975');
INSERT INTO `ob_action_log` VALUES ('1369', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '-1', '1599184394', '1598859985');
INSERT INTO `ob_action_log` VALUES ('1370', '1', 'admin', '127.0.0.1', '编辑', 'model messagecontent where id= 1', '/admin/message/updatecontent.html', '-1', '1599184394', '1598863504');
INSERT INTO `ob_action_log` VALUES ('1371', '1', 'admin', '127.0.0.1', '编辑', 'model messagecontent where id= 1', '/admin/message/updatecontent.html', '-1', '1599184394', '1598863525');
INSERT INTO `ob_action_log` VALUES ('1372', '1', 'admin', '127.0.0.1', '编辑', 'model messagecontent where id= 1', '/admin/message/updatecontent.html', '-1', '1599184394', '1598863577');
INSERT INTO `ob_action_log` VALUES ('1373', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1598921450');
INSERT INTO `ob_action_log` VALUES ('1374', '1', 'admin', '127.0.0.1', '添加', 'model exploreCates 添加where id=2', '/admin/explore/add.html', '-1', '1599184394', '1598922724');
INSERT INTO `ob_action_log` VALUES ('1375', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：ExploreCates，id：1，value：20', '/admin/explore/setsort.html', '-1', '1599184394', '1598925248');
INSERT INTO `ob_action_log` VALUES ('1376', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：ExploreCates，id：2，value：30', '/admin/explore/setsort.html', '-1', '1599184394', '1598925257');
INSERT INTO `ob_action_log` VALUES ('1377', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=2', '/admin/explore/edit.html', '-1', '1599184394', '1598925487');
INSERT INTO `ob_action_log` VALUES ('1378', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=1', '/admin/explore/edit.html', '-1', '1599184394', '1598925503');
INSERT INTO `ob_action_log` VALUES ('1379', '1', 'admin', '127.0.0.1', '添加', 'model overviewCates 添加数据 where id =1', '/admin/overview/add.html', '-1', '1599184394', '1598926169');
INSERT INTO `ob_action_log` VALUES ('1380', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：OverviewCates，id：1，value：20', '/admin/overview/setsort.html', '-1', '1599184394', '1598926175');
INSERT INTO `ob_action_log` VALUES ('1381', '1', 'admin', '127.0.0.1', '添加', 'model overviewCates 添加数据 where id =2', '/admin/overview/add.html', '-1', '1599184394', '1598926199');
INSERT INTO `ob_action_log` VALUES ('1382', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：综述新闻管理', '/admin/menu/menuadd.html', '-1', '1599184394', '1598926694');
INSERT INTO `ob_action_log` VALUES ('1383', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1598938644');
INSERT INTO `ob_action_log` VALUES ('1384', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1598938711');
INSERT INTO `ob_action_log` VALUES ('1385', '1', 'admin', '127.0.0.1', '添加', 'model product where id=1', '/admin/product/add.html', '-1', '1599184394', '1598947508');
INSERT INTO `ob_action_log` VALUES ('1386', '1', 'admin', '127.0.0.1', '编辑', 'model product where id=1', '/admin/product/edit.html', '-1', '1599184394', '1598947717');
INSERT INTO `ob_action_log` VALUES ('1387', '1', 'admin', '127.0.0.1', '添加', 'model product where id=2', '/admin/product/add.html', '-1', '1599184394', '1598947736');
INSERT INTO `ob_action_log` VALUES ('1388', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：Product，id：2，value：20', '/admin/product/setsort.html', '-1', '1599184394', '1598947834');
INSERT INTO `ob_action_log` VALUES ('1389', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：Product，id：1，value：50', '/admin/product/setsort.html', '-1', '1599184394', '1598947840');
INSERT INTO `ob_action_log` VALUES ('1390', '1', 'admin', '127.0.0.1', '删除数据', 'model product 删除 where id =2', '/admin/product/del/id/2.html', '-1', '1599184394', '1598948027');
INSERT INTO `ob_action_log` VALUES ('1391', '1', 'admin', '127.0.0.1', '添加', 'model product where id=3', '/admin/product/add.html', '-1', '1599184394', '1598948060');
INSERT INTO `ob_action_log` VALUES ('1392', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：项目精选介绍', '/admin/menu/menuadd.html', '-1', '1599184394', '1598948136');
INSERT INTO `ob_action_log` VALUES ('1393', '1', 'admin', '127.0.0.1', '编辑', 'model ProductContent where id=2', '/admin/product/content.html', '-1', '1599184394', '1598950172');
INSERT INTO `ob_action_log` VALUES ('1394', '1', 'admin', '127.0.0.1', '编辑', 'model ProductContent where id=2', '/admin/product/content.html', '-1', '1599184394', '1598950205');
INSERT INTO `ob_action_log` VALUES ('1395', '1', 'admin', '127.0.0.1', '编辑', 'model ProductContent where id=2', '/admin/product/content.html', '-1', '1599184394', '1598950220');
INSERT INTO `ob_action_log` VALUES ('1396', '1', 'admin', '127.0.0.1', '添加', 'model overnews 新增数据 where id= 1', '/admin/overnews/add.html', '-1', '1599184394', '1598951868');
INSERT INTO `ob_action_log` VALUES ('1397', '1', 'admin', '127.0.0.1', '编辑', 'model overnews 新增数据 where id= 1', '/admin/overnews/add.html', '-1', '1599184394', '1598952250');
INSERT INTO `ob_action_log` VALUES ('1398', '1', 'admin', '127.0.0.1', '添加', 'model overnews 新增数据 where id= 2', '/admin/overnews/add.html', '-1', '1599184394', '1598952307');
INSERT INTO `ob_action_log` VALUES ('1399', '1', 'admin', '127.0.0.1', '删除', 'model Overnews 删除 where id =1', '/admin/overnews/del/id/1.html', '-1', '1599184394', '1598952367');
INSERT INTO `ob_action_log` VALUES ('1400', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：事迹风采介绍', '/admin/menu/menuadd.html', '-1', '1599184394', '1598952666');
INSERT INTO `ob_action_log` VALUES ('1401', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：DeedsCates，id：1，value：50', '/admin/deeds/setsort.html', '-1', '1599184394', '1598954806');
INSERT INTO `ob_action_log` VALUES ('1402', '1', 'admin', '127.0.0.1', '编辑', 'model ProductContent where id=2', '/admin/deeds/content.html', '-1', '1599184394', '1598955819');
INSERT INTO `ob_action_log` VALUES ('1403', '1', 'admin', '127.0.0.1', '添加', 'model deedscates where id=3', '/admin/deeds/add.html', '-1', '1599184394', '1598955958');
INSERT INTO `ob_action_log` VALUES ('1404', '1', 'admin', '127.0.0.1', '删除', 'model deedscates where id=2', '/admin/deeds/del/id/2.html', '-1', '1599184394', '1598955963');
INSERT INTO `ob_action_log` VALUES ('1405', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：DeedsCates，id：3，value：15', '/admin/deeds/setsort.html', '-1', '1599184394', '1598955970');
INSERT INTO `ob_action_log` VALUES ('1406', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1599007227');
INSERT INTO `ob_action_log` VALUES ('1407', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=2', '/admin/explore/edit.html', '-1', '1599184394', '1599009636');
INSERT INTO `ob_action_log` VALUES ('1408', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1599010432');
INSERT INTO `ob_action_log` VALUES ('1409', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：历史回望管理', '/admin/menu/menuadd.html', '-1', '1599184394', '1599012358');
INSERT INTO `ob_action_log` VALUES ('1410', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 1', '/admin/explorehistory/index.html', '-1', '1599184394', '1599016769');
INSERT INTO `ob_action_log` VALUES ('1411', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599016995');
INSERT INTO `ob_action_log` VALUES ('1412', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599017025');
INSERT INTO `ob_action_log` VALUES ('1413', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599017031');
INSERT INTO `ob_action_log` VALUES ('1414', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599017035');
INSERT INTO `ob_action_log` VALUES ('1415', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599017904');
INSERT INTO `ob_action_log` VALUES ('1416', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599017910');
INSERT INTO `ob_action_log` VALUES ('1417', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018035');
INSERT INTO `ob_action_log` VALUES ('1418', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018094');
INSERT INTO `ob_action_log` VALUES ('1419', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018098');
INSERT INTO `ob_action_log` VALUES ('1420', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018103');
INSERT INTO `ob_action_log` VALUES ('1421', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018108');
INSERT INTO `ob_action_log` VALUES ('1422', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018141');
INSERT INTO `ob_action_log` VALUES ('1423', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018154');
INSERT INTO `ob_action_log` VALUES ('1424', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018245');
INSERT INTO `ob_action_log` VALUES ('1425', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018300');
INSERT INTO `ob_action_log` VALUES ('1426', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018315');
INSERT INTO `ob_action_log` VALUES ('1427', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599018353');
INSERT INTO `ob_action_log` VALUES ('1428', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：探索新闻管理', '/admin/menu/menuadd.html', '-1', '1599184394', '1599018425');
INSERT INTO `ob_action_log` VALUES ('1429', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：探索新闻管理', '/admin/menu/menuedit.html', '-1', '1599184394', '1599026604');
INSERT INTO `ob_action_log` VALUES ('1430', '1', 'admin', '127.0.0.1', '添加', 'model explorenews add where id=1', '/admin/explorenews/add.html', '-1', '1599184394', '1599028610');
INSERT INTO `ob_action_log` VALUES ('1431', '1', 'admin', '127.0.0.1', '编辑', 'model explorenews edit where id=1', '/admin/explorenews/edit.html', '-1', '1599184394', '1599028962');
INSERT INTO `ob_action_log` VALUES ('1432', '1', 'admin', '127.0.0.1', '添加', 'model explorenews add where id=2', '/admin/explorenews/add.html', '-1', '1599184394', '1599028975');
INSERT INTO `ob_action_log` VALUES ('1433', '1', 'admin', '127.0.0.1', '编辑', 'model explorenews edit where id=1', '/admin/explorenews/edit.html', '-1', '1599184394', '1599029322');
INSERT INTO `ob_action_log` VALUES ('1434', '1', 'admin', '127.0.0.1', '编辑', 'model explorenews edit where id=2', '/admin/explorenews/edit.html', '-1', '1599184394', '1599029331');
INSERT INTO `ob_action_log` VALUES ('1435', '1', 'admin', '127.0.0.1', '编辑', 'model explorenews edit where id=1', '/admin/explorenews/edit.html', '-1', '1599184394', '1599029338');
INSERT INTO `ob_action_log` VALUES ('1436', '1', 'admin', '127.0.0.1', '编辑', 'model explorenews edit where id=2', '/admin/explorenews/edit.html', '-1', '1599184394', '1599029345');
INSERT INTO `ob_action_log` VALUES ('1437', '1', 'admin', '127.0.0.1', '编辑', 'model explorenews edit where id=2', '/admin/explorenews/edit.html', '-1', '1599184394', '1599029351');
INSERT INTO `ob_action_log` VALUES ('1438', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=2', '/admin/explore/edit.html', '-1', '1599184394', '1599030352');
INSERT INTO `ob_action_log` VALUES ('1439', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=2', '/admin/explore/edit.html', '-1', '1599184394', '1599030356');
INSERT INTO `ob_action_log` VALUES ('1440', '1', 'admin', '127.0.0.1', '添加', 'model exploreCates 添加where id=3', '/admin/explore/add.html', '-1', '1599184394', '1599030433');
INSERT INTO `ob_action_log` VALUES ('1441', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=3', '/admin/explore/edit.html', '-1', '1599184394', '1599030448');
INSERT INTO `ob_action_log` VALUES ('1442', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=1', '/admin/explore/edit.html', '-1', '1599184394', '1599030454');
INSERT INTO `ob_action_log` VALUES ('1443', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=2', '/admin/explore/edit.html', '-1', '1599184394', '1599030459');
INSERT INTO `ob_action_log` VALUES ('1444', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=2', '/admin/explore/edit.html', '-1', '1599184394', '1599030464');
INSERT INTO `ob_action_log` VALUES ('1445', '1', 'admin', '127.0.0.1', '添加', 'model explorenews add where id=3', '/admin/explorenews/add.html', '-1', '1599184394', '1599031064');
INSERT INTO `ob_action_log` VALUES ('1446', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：ExploreNews，id：1，value：10', '/admin/explorenews/setsort.html', '-1', '1599184394', '1599031458');
INSERT INTO `ob_action_log` VALUES ('1447', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：事迹分类设置', '/admin/menu/menuedit.html', '-1', '1599184394', '1599031903');
INSERT INTO `ob_action_log` VALUES ('1448', '1', 'admin', '127.0.0.1', '编辑', 'model deedscates where id=1', '/admin/deeds/edit.html', '-1', '1599184394', '1599032271');
INSERT INTO `ob_action_log` VALUES ('1449', '1', 'admin', '127.0.0.1', '编辑', 'model deedscates where id=3', '/admin/deeds/edit.html', '-1', '1599184394', '1599032301');
INSERT INTO `ob_action_log` VALUES ('1450', '1', 'admin', '127.0.0.1', '编辑', 'model deedscates where id=4', '/admin/deeds/edit.html', '-1', '1599184394', '1599032341');
INSERT INTO `ob_action_log` VALUES ('1451', '1', 'admin', '127.0.0.1', '添加', 'model deedscates where id=5', '/admin/deeds/add.html', '-1', '1599184394', '1599032358');
INSERT INTO `ob_action_log` VALUES ('1452', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：DeedsCates，id：4，value：20', '/admin/deeds/setsort.html', '-1', '1599184394', '1599032365');
INSERT INTO `ob_action_log` VALUES ('1453', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：事迹风采简介', '/admin/menu/menuedit.html', '-1', '1599184394', '1599032460');
INSERT INTO `ob_action_log` VALUES ('1454', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫作品设置', '/admin/menu/menuadd.html', '-1', '1599184394', '1599032520');
INSERT INTO `ob_action_log` VALUES ('1455', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫作品', '/admin/menu/menuadd.html', '-1', '1599184394', '1599032565');
INSERT INTO `ob_action_log` VALUES ('1456', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫日记', '/admin/menu/menuadd.html', '-1', '1599184394', '1599032602');
INSERT INTO `ob_action_log` VALUES ('1457', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫荣耀', '/admin/menu/menuadd.html', '-1', '1599184394', '1599032651');
INSERT INTO `ob_action_log` VALUES ('1458', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：扶贫报道', '/admin/menu/menuedit.html', '-1', '1599184394', '1599032691');
INSERT INTO `ob_action_log` VALUES ('1459', '1', 'admin', '127.0.0.1', '添加', 'model deedsLog添加where id = 1', '/admin/deedslog/add.html', '-1', '1599184394', '1599038863');
INSERT INTO `ob_action_log` VALUES ('1460', '1', 'admin', '127.0.0.1', '编辑', 'model deedsLog编辑where id = 1', '/admin/deedslog/add.html', '-1', '1599184394', '1599038879');
INSERT INTO `ob_action_log` VALUES ('1461', '1', 'admin', '127.0.0.1', '添加', 'model deedsLog添加where id = 2', '/admin/deedslog/add.html', '-1', '1599184394', '1599038931');
INSERT INTO `ob_action_log` VALUES ('1462', '1', 'admin', '127.0.0.1', '删除文章', 'model deedslog where id =1', '/admin/deedslog/del/id/1.html', '-1', '1599184394', '1599038934');
INSERT INTO `ob_action_log` VALUES ('1463', '1', 'admin', '127.0.0.1', '添加', 'model deedsLog添加where id = 3', '/admin/deedslog/add.html', '-1', '1599184394', '1599038945');
INSERT INTO `ob_action_log` VALUES ('1464', '1', 'admin', '127.0.0.1', '添加', 'model deedsLog添加where id = 4', '/admin/deedslog/add.html', '-1', '1599184394', '1599038955');
INSERT INTO `ob_action_log` VALUES ('1465', '1', 'admin', '127.0.0.1', '添加', 'model deedsnews add where id=1', '/admin/deedsnews/add.html', '-1', '1599184394', '1599042975');
INSERT INTO `ob_action_log` VALUES ('1466', '1', 'admin', '127.0.0.1', '添加', 'model deedsnews add where id=2', '/admin/deedsnews/add.html', '-1', '1599184394', '1599042991');
INSERT INTO `ob_action_log` VALUES ('1467', '1', 'admin', '127.0.0.1', '添加', 'model deedsnews add where id=3', '/admin/deedsnews/add.html', '-1', '1599184394', '1599043007');
INSERT INTO `ob_action_log` VALUES ('1468', '1', 'admin', '127.0.0.1', '编辑', 'model deedsnews edit where id=1', '/admin/deedsnews/edit.html', '-1', '1599184394', '1599043024');
INSERT INTO `ob_action_log` VALUES ('1469', '1', 'admin', '127.0.0.1', '编辑', 'model deedsnews edit where id=1', '/admin/deedsnews/edit.html', '-1', '1599184394', '1599043031');
INSERT INTO `ob_action_log` VALUES ('1470', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：DeedsNews，id：1，value：10', '/admin/deedsnews/setsort.html', '-1', '1599184394', '1599043104');
INSERT INTO `ob_action_log` VALUES ('1471', '1', 'admin', '127.0.0.1', '删除', 'model deedsnews where id =2', '/admin/deedsnews/del/id/2.html', '-1', '1599184394', '1599043109');
INSERT INTO `ob_action_log` VALUES ('1472', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1599094480');
INSERT INTO `ob_action_log` VALUES ('1473', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：文章管理', '/admin/menu/menuedit.html', '-1', '1599184394', '1599094515');
INSERT INTO `ob_action_log` VALUES ('1474', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1599101979');
INSERT INTO `ob_action_log` VALUES ('1475', '1', 'admin', '127.0.0.1', '添加', 'model deedsworks add where id=1', '/admin/works/add.html', '-1', '1599184394', '1599103337');
INSERT INTO `ob_action_log` VALUES ('1476', '1', 'admin', '127.0.0.1', '添加', 'model deedsworks add where id=2', '/admin/works/add.html', '-1', '1599184394', '1599103764');
INSERT INTO `ob_action_log` VALUES ('1477', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：DeedsWorks，id：1，value：20', '/admin/works/setsort.html', '-1', '1599184394', '1599104739');
INSERT INTO `ob_action_log` VALUES ('1478', '1', 'admin', '127.0.0.1', '编辑', 'model deedsworks edit where id=2', '/admin/works/edit.html', '-1', '1599184394', '1599105163');
INSERT INTO `ob_action_log` VALUES ('1479', '1', 'admin', '127.0.0.1', '添加', 'model deedsworks add where id=3', '/admin/works/add.html', '-1', '1599184394', '1599105182');
INSERT INTO `ob_action_log` VALUES ('1480', '1', 'admin', '127.0.0.1', '编辑', 'model deedsworks edit where id=1', '/admin/works/edit.html', '-1', '1599184394', '1599105204');
INSERT INTO `ob_action_log` VALUES ('1481', '1', 'admin', '127.0.0.1', '编辑', 'model deedsworks edit where id=2', '/admin/works/edit.html', '-1', '1599184394', '1599105218');
INSERT INTO `ob_action_log` VALUES ('1482', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫荣耀简介', '/admin/menu/menuadd.html', '-1', '1599184394', '1599112523');
INSERT INTO `ob_action_log` VALUES ('1483', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫荣耀分类', '/admin/menu/menuadd.html', '-1', '1599184394', '1599112564');
INSERT INTO `ob_action_log` VALUES ('1484', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：扶贫荣耀', '/admin/menu/menuedit.html', '-1', '1599184394', '1599112646');
INSERT INTO `ob_action_log` VALUES ('1485', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：先进单位', '/admin/menu/menuadd.html', '-1', '1599184394', '1599112943');
INSERT INTO `ob_action_log` VALUES ('1486', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：先进个人', '/admin/menu/menuadd.html', '-1', '1599184394', '1599112972');
INSERT INTO `ob_action_log` VALUES ('1487', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：先进个人', '/admin/menu/menuedit.html', '-1', '1599184394', '1599114354');
INSERT INTO `ob_action_log` VALUES ('1488', '1', 'admin', '127.0.0.1', '添加', 'model gloryperson add where id =1', '/admin/person/add.html', '-1', '1599184394', '1599117901');
INSERT INTO `ob_action_log` VALUES ('1489', '1', 'admin', '127.0.0.1', '添加', 'model gloryperson add where id =2', '/admin/person/add.html', '-1', '1599184394', '1599117981');
INSERT INTO `ob_action_log` VALUES ('1490', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =2', '/admin/person/edit.html', '-1', '1599184394', '1599118182');
INSERT INTO `ob_action_log` VALUES ('1491', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =1', '/admin/person/edit.html', '-1', '1599184394', '1599118217');
INSERT INTO `ob_action_log` VALUES ('1492', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =1', '/admin/person/edit.html', '-1', '1599184394', '1599118230');
INSERT INTO `ob_action_log` VALUES ('1493', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =1', '/admin/person/edit.html', '-1', '1599184394', '1599118269');
INSERT INTO `ob_action_log` VALUES ('1494', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =1', '/admin/person/edit.html', '-1', '1599184394', '1599118281');
INSERT INTO `ob_action_log` VALUES ('1495', '1', 'admin', '127.0.0.1', '添加', 'model gloryperson add where id =3', '/admin/person/add.html', '-1', '1599184394', '1599118303');
INSERT INTO `ob_action_log` VALUES ('1496', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =1', '/admin/person/edit.html', '-1', '1599184394', '1599118313');
INSERT INTO `ob_action_log` VALUES ('1497', '1', 'admin', '127.0.0.1', '删除', 'model gloryperson delete where id=1', '/admin/person/del/id/1.html', '-1', '1599184394', '1599118320');
INSERT INTO `ob_action_log` VALUES ('1498', '1', 'admin', '127.0.0.1', '添加', 'model gloryperson add where id =4', '/admin/person/add.html', '-1', '1599184394', '1599118339');
INSERT INTO `ob_action_log` VALUES ('1499', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =4', '/admin/person/edit.html', '-1', '1599184394', '1599118347');
INSERT INTO `ob_action_log` VALUES ('1500', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：GloryPerson，id：3，value：20', '/admin/person/setsort.html', '-1', '1599184394', '1599118481');
INSERT INTO `ob_action_log` VALUES ('1501', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：扶贫荣耀分类设置', '/admin/menu/menuedit.html', '-1', '1599184394', '1599119058');
INSERT INTO `ob_action_log` VALUES ('1502', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：扶贫荣耀分类设置', '/admin/menu/menuedit.html', '-1', '1599184394', '1599119127');
INSERT INTO `ob_action_log` VALUES ('1503', '1', 'admin', '127.0.0.1', '添加', 'model glorycates add where id=1', '/admin/glory/add.html', '-1', '1599184394', '1599122960');
INSERT INTO `ob_action_log` VALUES ('1504', '1', 'admin', '127.0.0.1', '添加', 'model glorycates add where id=2', '/admin/glory/add.html', '-1', '1599184394', '1599123058');
INSERT INTO `ob_action_log` VALUES ('1505', '1', 'admin', '127.0.0.1', '编辑', 'model glorycates edit where id=2', '/admin/glory/edit.html', '-1', '1599184394', '1599123224');
INSERT INTO `ob_action_log` VALUES ('1506', '1', 'admin', '127.0.0.1', '编辑', 'model glorycates edit where id=2', '/admin/glory/edit.html', '-1', '1599184394', '1599123230');
INSERT INTO `ob_action_log` VALUES ('1507', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：GloryCates，id：1，value：10', '/admin/glory/catessort.html', '-1', '1599184394', '1599123458');
INSERT INTO `ob_action_log` VALUES ('1508', '1', 'admin', '127.0.0.1', '添加', 'model glorycontent add where id=1', '/admin/glory/content.html', '-1', '1599184394', '1599124340');
INSERT INTO `ob_action_log` VALUES ('1509', '1', 'admin', '127.0.0.1', '编辑', 'model glorycontent edit where id=1', '/admin/glory/content.html', '-1', '1599184394', '1599124400');
INSERT INTO `ob_action_log` VALUES ('1510', '1', 'admin', '127.0.0.1', '添加', 'model glorycompany add where id=1', '/admin/company/index.html', '-1', '1599184394', '1599124879');
INSERT INTO `ob_action_log` VALUES ('1511', '1', 'admin', '127.0.0.1', '编辑', 'model glorycompany edit where id=1', '/admin/company/index.html', '-1', '1599184394', '1599124904');
INSERT INTO `ob_action_log` VALUES ('1512', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：先进单位简介', '/admin/menu/menuedit.html', '-1', '1599184394', '1599124967');
INSERT INTO `ob_action_log` VALUES ('1513', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '-1', '1599184394', '1599180678');
INSERT INTO `ob_action_log` VALUES ('1514', '1', 'admin', '127.0.0.1', '编辑', 'model overviewCates 更新数据 where id =2', '/admin/overview/edit.html', '-1', '1599184394', '1599181912');
INSERT INTO `ob_action_log` VALUES ('1515', '1', 'admin', '127.0.0.1', '编辑', 'model overviewCates 更新数据 where id =1', '/admin/overview/edit.html', '-1', '1599184394', '1599182076');
INSERT INTO `ob_action_log` VALUES ('1516', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：深圳担当新闻管理', '/admin/menu/menuedit.html', '-1', '1599184394', '1599182210');
INSERT INTO `ob_action_log` VALUES ('1517', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：Overnews，id：2，value：10', '/admin/overnews/setsort.html', '-1', '1599184394', '1599182364');
INSERT INTO `ob_action_log` VALUES ('1518', '1', 'admin', '127.0.0.1', '添加', 'model overnews 新增数据 where id= 3', '/admin/overnews/add.html', '-1', '1599184394', '1599182479');
INSERT INTO `ob_action_log` VALUES ('1519', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：分类名称图片设置', '/admin/menu/menuedit.html', '-1', '1599184394', '1599182516');
INSERT INTO `ob_action_log` VALUES ('1520', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：深圳帮扶简史', '/admin/menu/menuadd.html', '-1', '1599184394', '1599182576');
INSERT INTO `ob_action_log` VALUES ('1521', '1', 'admin', '127.0.0.1', '编辑', 'model bearcontent edit where id = 1', '/admin/bear/index.html', '-1', '1599184394', '1599184197');
INSERT INTO `ob_action_log` VALUES ('1522', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=1', '/admin/explore/edit.html', '-1', '1599184394', '1599184217');
INSERT INTO `ob_action_log` VALUES ('1523', '1', 'admin', '127.0.0.1', '编辑', 'model explorehistory where id= 2', '/admin/explorehistory/index.html', '-1', '1599184394', '1599184229');
INSERT INTO `ob_action_log` VALUES ('1524', '1', 'admin', '127.0.0.1', '编辑', 'model explorenews edit where id=1', '/admin/explorenews/edit.html', '-1', '1599184394', '1599184245');
INSERT INTO `ob_action_log` VALUES ('1525', '1', 'admin', '127.0.0.1', '编辑', 'model product where id=1', '/admin/product/edit.html', '-1', '1599184394', '1599184255');
INSERT INTO `ob_action_log` VALUES ('1526', '1', 'admin', '127.0.0.1', '添加', 'model product where id=4', '/admin/product/add.html', '-1', '1599184394', '1599184290');
INSERT INTO `ob_action_log` VALUES ('1527', '1', 'admin', '127.0.0.1', '编辑', 'model ProductContent where id=2', '/admin/product/content.html', '-1', '1599184394', '1599184297');
INSERT INTO `ob_action_log` VALUES ('1528', '1', 'admin', '127.0.0.1', '导出', '导出会员列表', '/admin/member/exportmemberlist.html?', '1', '0', '1599184402');
INSERT INTO `ob_action_log` VALUES ('1529', '1', 'admin', '127.0.0.1', '编辑', 'model deedscates where id=1', '/admin/deeds/edit.html', '1', '0', '1599185508');
INSERT INTO `ob_action_log` VALUES ('1530', '1', 'admin', '127.0.0.1', '编辑', 'model deedscates where id=4', '/admin/deeds/edit.html', '1', '0', '1599185518');
INSERT INTO `ob_action_log` VALUES ('1531', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =4', '/admin/person/edit.html', '1', '0', '1599185626');
INSERT INTO `ob_action_log` VALUES ('1532', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：Product，id：1，value：1', '/admin/product/setsort.html', '1', '0', '1599185676');
INSERT INTO `ob_action_log` VALUES ('1533', '1', 'admin', '127.0.0.1', '添加', 'model deedscates where id=6', '/admin/deeds/add.html', '1', '0', '1599185762');
INSERT INTO `ob_action_log` VALUES ('1534', '1', 'admin', '127.0.0.1', '设置', '系统设置保存', '/admin/config/setting.html', '1', '0', '1599198903');
INSERT INTO `ob_action_log` VALUES ('1535', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '1', '0', '1599440208');
INSERT INTO `ob_action_log` VALUES ('1536', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：接口管理', '/admin/menu/menuedit.html', '1', '0', '1599443081');
INSERT INTO `ob_action_log` VALUES ('1537', '1', 'admin', '127.0.0.1', '数据状态', '数据状态调整，model：Menu，ids：157，status：1', '/admin/menu/setstatus/ids/157/status/1.html', '1', '0', '1599443085');
INSERT INTO `ob_action_log` VALUES ('1538', '1', 'admin', '127.0.0.1', '数据状态', '数据状态调整，model：Menu，ids：157，status：0', '/admin/menu/setstatus/ids/157/status/0.html', '1', '0', '1599443291');
INSERT INTO `ob_action_log` VALUES ('1539', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：接口管理', '/admin/menu/menuedit.html', '1', '0', '1599443294');
INSERT INTO `ob_action_log` VALUES ('1540', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：接口管理', '/admin/menu/menuedit.html', '1', '0', '1599443305');
INSERT INTO `ob_action_log` VALUES ('1541', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '1', '0', '1599467317');
INSERT INTO `ob_action_log` VALUES ('1542', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '1', '0', '1599526706');
INSERT INTO `ob_action_log` VALUES ('1543', '1', 'admin', '127.0.0.1', '删除', 'model deedscates where id=6', '/admin/deeds/del/id/6.html', '1', '0', '1599526826');
INSERT INTO `ob_action_log` VALUES ('1544', '1', 'admin', '127.0.0.1', '数据排序', '数据排序调整，model：DeedsLog，id：4，value：10', '/admin/deedslog/setsort.html', '1', '0', '1599532779');
INSERT INTO `ob_action_log` VALUES ('1545', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =3', '/admin/person/edit.html', '1', '0', '1599547667');
INSERT INTO `ob_action_log` VALUES ('1546', '1', 'admin', '127.0.0.1', '编辑', 'model gloryperson edit where id =4', '/admin/person/edit.html', '1', '0', '1599547676');
INSERT INTO `ob_action_log` VALUES ('1547', '1', 'admin', '127.0.0.1', '编辑', 'model exploreCates 编辑where id=1', '/admin/explore/edit.html', '1', '0', '1599554010');
INSERT INTO `ob_action_log` VALUES ('1548', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '1', '0', '1599612969');
INSERT INTO `ob_action_log` VALUES ('1549', '1', 'admin', '127.0.0.1', '编辑', '编辑菜单，name：扶贫报道', '/admin/menu/menuedit.html', '1', '0', '1599644173');
INSERT INTO `ob_action_log` VALUES ('1550', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫报道描述', '/admin/menu/menuadd.html', '1', '0', '1599644207');
INSERT INTO `ob_action_log` VALUES ('1551', '1', 'admin', '127.0.0.1', '新增', '新增菜单，name：扶贫报道新闻列表', '/admin/menu/menuadd.html', '1', '0', '1599644228');
INSERT INTO `ob_action_log` VALUES ('1552', '1', 'admin', '127.0.0.1', '编辑', 'model deedsdescribe edit where id=2', '/admin/deedsnews/describe.html', '1', '0', '1599645230');
INSERT INTO `ob_action_log` VALUES ('1553', '1', 'admin', '127.0.0.1', '编辑', 'model deedsdescribe edit where id=2', '/admin/deedsnews/describe.html', '1', '0', '1599645249');
INSERT INTO `ob_action_log` VALUES ('1554', '1', 'admin', '127.0.0.1', '编辑', 'model deedsnews edit where id=1', '/admin/deedsnews/edit.html', '1', '0', '1599646397');
INSERT INTO `ob_action_log` VALUES ('1555', '1', 'admin', '127.0.0.1', '登录', '登录操作，username：admin', '/admin/login/loginhandle.html', '1', '0', '1599699974');
INSERT INTO `ob_action_log` VALUES ('1556', '1', 'admin', '127.0.0.1', '编辑', 'prefaceimg上传图片 id=6', '/admin/preface/setimg.html', '1', '0', '1599700546');
INSERT INTO `ob_action_log` VALUES ('1557', '1', 'admin', '127.0.0.1', '编辑', 'prefaceimg上传图片 id=7', '/admin/preface/setimg.html', '1', '0', '1599700564');
INSERT INTO `ob_action_log` VALUES ('1558', '1', 'admin', '127.0.0.1', '编辑', 'prefaceimg上传图片 id=8', '/admin/preface/setimg.html', '1', '0', '1599701071');
INSERT INTO `ob_action_log` VALUES ('1559', '1', 'admin', '127.0.0.1', '新增', 'prefaceimg上传图片 id=1', '/admin/preface/setimg.html', '1', '0', '1599701927');
INSERT INTO `ob_action_log` VALUES ('1560', '1', 'admin', '127.0.0.1', '新增', 'prefaceimg上传图片 id=1', '/admin/preface/setimg.html', '1', '0', '1599701936');
INSERT INTO `ob_action_log` VALUES ('1561', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '1', '0', '1599706428');
INSERT INTO `ob_action_log` VALUES ('1562', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '1', '0', '1599706528');
INSERT INTO `ob_action_log` VALUES ('1563', '1', 'admin', '127.0.0.1', '编辑', 'prefacecontent where id =1', '/admin/preface/editcontent.html', '1', '0', '1599716018');

-- ----------------------------
-- Table structure for ob_addon
-- ----------------------------
DROP TABLE IF EXISTS `ob_addon`;
CREATE TABLE `ob_addon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '插件名或标识',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '中文名称',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '插件描述',
  `config` text NOT NULL COMMENT '配置',
  `author` varchar(40) NOT NULL DEFAULT '' COMMENT '作者',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '版本号',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of ob_addon
-- ----------------------------
INSERT INTO `ob_addon` VALUES ('3', 'File', '文件上传', '文件上传插件', '', 'Jack', '1.0', '1', '0', '0');
INSERT INTO `ob_addon` VALUES ('4', 'Icon', '图标选择', '图标选择插件', '', 'Bigotry', '1.0', '1', '0', '0');
INSERT INTO `ob_addon` VALUES ('5', 'Editor', '文本编辑器', '富文本编辑器', '', 'Bigotry', '1.0', '1', '0', '0');

-- ----------------------------
-- Table structure for ob_api
-- ----------------------------
DROP TABLE IF EXISTS `ob_api`;
CREATE TABLE `ob_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(150) NOT NULL DEFAULT '' COMMENT '接口名称',
  `group_id` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '接口分组',
  `request_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '请求类型 0:POST  1:GET',
  `api_url` char(50) NOT NULL DEFAULT '' COMMENT '请求路径',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '接口描述',
  `describe_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '接口富文本描述',
  `is_request_data` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要请求数据',
  `request_data` text NOT NULL COMMENT '请求数据',
  `response_data` text NOT NULL COMMENT '响应数据',
  `is_response_data` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要响应数据',
  `is_user_token` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否需要用户token',
  `is_response_sign` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否返回数据签名',
  `is_request_sign` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证请求数据签名',
  `response_examples` text NOT NULL COMMENT '响应栗子',
  `developer` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '研发者',
  `api_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '接口状态（0:待研发，1:研发中，2:测试中，3:已完成）',
  `is_page` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为分页接口 0：否  1：是',
  `sort` tinyint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COMMENT='API表';

-- ----------------------------
-- Records of ob_api
-- ----------------------------
INSERT INTO `ob_api` VALUES ('186', '登录或注册', '34', '0', 'common/login', '系统登录注册接口，若用户名存在则验证密码正确性，若用户名不存在则注册新用户，返回 user_token 用于操作需验证身份的接口', '', '1', '[{\"field_name\":\"username\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u7528\\u6237\\u540d\"},{\"field_name\":\"password\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u5bc6\\u7801\"}]', '[{\"field_name\":\"data\",\"data_type\":\"2\",\"field_describe\":\"\\u4f1a\\u5458\\u6570\\u636e\\u53causer_token\"}]', '1', '0', '1', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;member_id&quot;: 51,\r\n        &quot;nickname&quot;: &quot;sadasdas&quot;,\r\n        &quot;username&quot;: &quot;sadasdas&quot;,\r\n        &quot;create_time&quot;: &quot;2017-09-09 13:40:17&quot;,\r\n        &quot;user_token&quot;: &quot;eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJPbmVCYXNlIEpXVCIsImlhdCI6MTUwNDkzNTYxNywiZXhwIjoxNTA0OTM2NjE3LCJhdWQiOiJPbmVCYXNlIiwic3ViIjoiT25lQmFzZSIsImRhdGEiOnsibWVtYmVyX2lkIjo1MSwibmlja25hbWUiOiJzYWRhc2RhcyIsInVzZXJuYW1lIjoic2FkYXNkYXMiLCJjcmVhdGVfdGltZSI6IjIwMTctMDktMDkgMTM6NDA6MTcifX0.6PEShODuifNsa-x1TumLoEaR2TCXpUEYgjpD3Mz3GRM&quot;\r\n    }\r\n}', '0', '1', '0', '0', '1', '1504501410', '1520504982');
INSERT INTO `ob_api` VALUES ('187', '文章分类列表', '44', '0', 'article/categorylist', '文章分类列表接口', '', '0', '', '[{\"field_name\":\"id\",\"data_type\":\"0\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\"},{\"field_name\":\"name\",\"data_type\":\"0\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u540d\\u79f0\"}]', '1', '0', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: [\r\n        {\r\n            &quot;id&quot;: 2,\r\n            &quot;name&quot;: &quot;测试文章分类2&quot;\r\n        },\r\n        {\r\n            &quot;id&quot;: 1,\r\n            &quot;name&quot;: &quot;测试文章分类1&quot;\r\n        }\r\n    ]\r\n}', '0', '0', '0', '2', '1', '1504765581', '1520504982');
INSERT INTO `ob_api` VALUES ('188', '文章列表', '44', '0', 'article/articlelist', '文章列表接口', '', '1', '[{\"field_name\":\"category_id\",\"data_type\":\"0\",\"is_require\":\"0\",\"field_describe\":\"\\u82e5\\u4e0d\\u4f20\\u9012\\u6b64\\u53c2\\u6570\\u5219\\u4e3a\\u6240\\u6709\\u5206\\u7c7b\"}]', '', '0', '0', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;total&quot;: 9,\r\n        &quot;per_page&quot;: &quot;10&quot;,\r\n        &quot;current_page&quot;: 1,\r\n        &quot;last_page&quot;: 1,\r\n        &quot;data&quot;: [\r\n            {\r\n                &quot;id&quot;: 16,\r\n                &quot;name&quot;: &quot;11111111&quot;,\r\n                &quot;category_id&quot;: 2,\r\n                &quot;describe&quot;: &quot;22222222&quot;,\r\n                &quot;create_time&quot;: &quot;2017-08-07 13:58:37&quot;\r\n            },\r\n            {\r\n                &quot;id&quot;: 15,\r\n                &quot;name&quot;: &quot;tttttt&quot;,\r\n                &quot;category_id&quot;: 1,\r\n                &quot;describe&quot;: &quot;sddd&quot;,\r\n                &quot;create_time&quot;: &quot;2017-08-07 13:24:46&quot;\r\n            }\r\n        ]\r\n    }\r\n}', '0', '0', '1', '1', '1', '1504779780', '1520504982');
INSERT INTO `ob_api` VALUES ('189', '首页接口', '45', '0', 'combination/index', '首页聚合接口', '', '1', '[{\"field_name\":\"category_id\",\"data_type\":\"0\",\"is_require\":\"0\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\"}]', '[{\"field_name\":\"article_category_list\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u6570\\u636e\"},{\"field_name\":\"article_list\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u6570\\u636e\"}]', '1', '0', '1', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;article_category_list&quot;: [\r\n            {\r\n                &quot;id&quot;: 2,\r\n                &quot;name&quot;: &quot;测试文章分类2&quot;\r\n            },\r\n            {\r\n                &quot;id&quot;: 1,\r\n                &quot;name&quot;: &quot;测试文章分类1&quot;\r\n            }\r\n        ],\r\n        &quot;article_list&quot;: {\r\n            &quot;total&quot;: 8,\r\n            &quot;per_page&quot;: &quot;2&quot;,\r\n            &quot;current_page&quot;: &quot;1&quot;,\r\n            &quot;last_page&quot;: 4,\r\n            &quot;data&quot;: [\r\n                {\r\n                    &quot;id&quot;: 15,\r\n                    &quot;name&quot;: &quot;tttttt&quot;,\r\n                    &quot;category_id&quot;: 1,\r\n                    &quot;describe&quot;: &quot;sddd&quot;,\r\n                    &quot;create_time&quot;: &quot;2017-08-07 13:24:46&quot;\r\n                },\r\n                {\r\n                    &quot;id&quot;: 14,\r\n                    &quot;name&quot;: &quot;1111111111111111111&quot;,\r\n                    &quot;category_id&quot;: 1,\r\n                    &quot;describe&quot;: &quot;123123&quot;,\r\n                    &quot;create_time&quot;: &quot;2017-08-04 15:37:20&quot;\r\n                }\r\n            ]\r\n        }\r\n    }\r\n}', '0', '0', '1', '0', '1', '1504785072', '1520504982');
INSERT INTO `ob_api` VALUES ('190', '详情页接口', '45', '0', 'combination/details', '详情页接口', '', '1', '[{\"field_name\":\"article_id\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u6587\\u7ae0ID\"}]', '[{\"field_name\":\"article_category_list\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u5206\\u7c7b\\u6570\\u636e\"},{\"field_name\":\"article_details\",\"data_type\":\"2\",\"field_describe\":\"\\u6587\\u7ae0\\u8be6\\u60c5\\u6570\\u636e\"}]', '1', '0', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;data&quot;: {\r\n        &quot;article_category_list&quot;: [\r\n            {\r\n                &quot;id&quot;: 2,\r\n                &quot;name&quot;: &quot;测试文章分类2&quot;\r\n            },\r\n            {\r\n                &quot;id&quot;: 1,\r\n                &quot;name&quot;: &quot;测试文章分类1&quot;\r\n            }\r\n        ],\r\n        &quot;article_details&quot;: {\r\n            &quot;id&quot;: 1,\r\n            &quot;name&quot;: &quot;213&quot;,\r\n            &quot;category_id&quot;: 1,\r\n            &quot;describe&quot;: &quot;test001&quot;,\r\n            &quot;content&quot;: &quot;第三方发送到&quot;&quot;&quot;,\r\n            &quot;create_time&quot;: &quot;2014-07-22 11:56:53&quot;\r\n        }\r\n    }\r\n}', '0', '0', '0', '0', '1', '1504922092', '1520504982');
INSERT INTO `ob_api` VALUES ('191', '修改密码', '34', '0', 'common/changepassword', '修改密码接口', '', '1', '[{\"field_name\":\"old_password\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u65e7\\u5bc6\\u7801\"},{\"field_name\":\"new_password\",\"data_type\":\"0\",\"is_require\":\"1\",\"field_describe\":\"\\u65b0\\u5bc6\\u7801\"}]', '', '0', '1', '0', '0', '{\r\n    &quot;code&quot;: 0,\r\n    &quot;msg&quot;: &quot;操作成功&quot;,\r\n    &quot;exe_time&quot;: &quot;0.037002&quot;\r\n}', '0', '0', '0', '0', '1', '1504941496', '1520504982');

-- ----------------------------
-- Table structure for ob_api_group
-- ----------------------------
DROP TABLE IF EXISTS `ob_api_group`;
CREATE TABLE `ob_api_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(120) NOT NULL DEFAULT '' COMMENT 'aip分组名称',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='api分组表';

-- ----------------------------
-- Records of ob_api_group
-- ----------------------------
INSERT INTO `ob_api_group` VALUES ('34', '基础接口', '0', '1504501195', '0', '1');
INSERT INTO `ob_api_group` VALUES ('44', '文章接口', '1', '1504765319', '1504765319', '1');
INSERT INTO `ob_api_group` VALUES ('45', '聚合接口', '0', '1504784149', '1504784149', '1');

-- ----------------------------
-- Table structure for ob_article
-- ----------------------------
DROP TABLE IF EXISTS `ob_article`;
CREATE TABLE `ob_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `name` char(40) NOT NULL DEFAULT '' COMMENT '文章名称',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `content` text NOT NULL COMMENT '文章内容',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面图片id',
  `file_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件id',
  `img_ids` varchar(200) NOT NULL DEFAULT '',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章表';

-- ----------------------------
-- Records of ob_article
-- ----------------------------
INSERT INTO `ob_article` VALUES ('23', '1', '序言', '7', 'OneBase 是什么？', '&lt;h3 class=&quot;line&quot;&gt;\r\n	ThinkPHP -&amp;gt; OneBase -&amp;gt; 产品\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	OneBase是一个免费开源的，快速、简单的面向对象的应用研发架构，是为了快速研发应用而诞生的。在保持出色的性能和新颖设计思想同时，也注重易用性。遵循Apache2开源许可协议发布，意味着你可以免费使用OneBase，允许把您基于OneBase研发的应用开源或商业产品发布/销售。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	主要特性\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;规范&lt;/strong&gt;： OneBase 提供一套编码规范，可使团队研发协作事半功倍。&lt;br /&gt;\r\n&lt;strong&gt;严谨&lt;/strong&gt;： 异常严谨的错误检测和安全机制，详细的日志信息，为您的研发保驾护航。&lt;br /&gt;\r\n&lt;strong&gt;灵活&lt;/strong&gt;： 分层，服务，插件等合理的解耦合设计使您升级框架或需求变更得心应手。&lt;br /&gt;\r\n&lt;strong&gt;接口&lt;/strong&gt;： 完善的接口研发架构，使您只需关注业务逻辑研发，省心省力。&lt;br /&gt;\r\n&lt;strong&gt;高效&lt;/strong&gt;： 自动缓存设计，抛弃了处处判断的尴尬，使您不知不觉中已经使用了缓存。&lt;br /&gt;\r\n&lt;strong&gt;特色&lt;/strong&gt;： 无限级权限控制，垃圾资源回收，系统通用回收站，SEO变量支持，性能与操作监控，等各种脑洞大开的设计思想。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	捐赠我们\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	OneBase致力于简化企业和个人应用研发，您的帮助是对我们最大的支持和动力！\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	OneBase团队一直在坚持不懈地努力，并坚持开源和免费提供使用，帮助开发人员更加方便的进行应用快速研发，如果您对我们的成果表示认同并且觉得对您有所帮助我们愿意接受来自各方面的捐赠^_^。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	************ &lt;strong&gt;微信捐赠&lt;/strong&gt; ************************* &lt;strong&gt;支付宝捐赠&lt;/strong&gt; ************\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/6640ec28b9701a85b8a970e53b870da3_265x265.png&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;https://box.kancloud.cn/b63395ec098a6e3c823825167bd6ffd7_265x265.png&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;\r\n************************* &lt;strong&gt;QQ交流群：477824874&lt;/strong&gt; *********************\r\n&lt;/p&gt;', '0', '0', '', '1509620805', '1509762405', '1');
INSERT INTO `ob_article` VALUES ('24', '1', '安装OneBase', '7', 'OneBase安装环境要求', '&lt;h1 class=&quot;line&quot;&gt;\r\n	OneBase安装环境要求\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;pre&gt;PHP &amp;gt;= &lt;span class=&quot;hljs-number&quot;&gt;7.0&lt;/span&gt;&lt;span class=&quot;hljs-number&quot;&gt;.0&lt;/span&gt; PDO PHP &lt;span class=&quot;hljs-keyword&quot;&gt;Extension&lt;/span&gt; MBstring PHP &lt;span class=&quot;hljs-keyword&quot;&gt;Extension&lt;/span&gt; CURL PHP &lt;span class=&quot;hljs-keyword&quot;&gt;Extension&lt;/span&gt; &lt;/pre&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	开始安装\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;下载源码&lt;/strong&gt;：&lt;a href=&quot;https://gitee.com/Bigotry/OneBase&quot;&gt;https://gitee.com/Bigotry/OneBase&lt;/a&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	1.下载源码后解压至Web目录。&lt;br /&gt;\r\n2.配置虚拟主机指向源码public目录。&lt;br /&gt;\r\n3.一切就绪后访问域名会看到引导安装界面。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	若安装流程正常执行完毕会跳转至系统首页，此时OneBase已经安装完成啦 ^_^\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;常见安装问题：&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;1. No input file specified&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;解决办法 （.htaccess 文件 RewriteRule 改成这句 ^(.*)$ index.php [L,E=PATH_INFO:$1]）&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;2. 某些Nginx版本下出现，控制器不存在问题，参考以下配置文件&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/upload/picture/20171206/a770f61efb2ce03d85bb4bff7a8c70d7.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	演示系统配置文件参考 &lt;a href=&quot;https://www.kancloud.cn/onebase/onebase/441504&quot;&gt;https://www.kancloud.cn/onebase/onebase/441504&lt;/a&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span id=&quot;__kindeditor_bookmark_start_0__&quot;&gt;&lt;/span&gt; \r\n&lt;/p&gt;', '0', '0', '', '1509762474', '1512538659', '1');
INSERT INTO `ob_article` VALUES ('25', '1', '研发规范', '7', '团队研发事半功倍', '&lt;h1 class=&quot;line&quot;&gt;\r\n	研发规范\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	目录和文件命名\r\n&lt;/h3&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		目录命令使用小写加下划线。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		类库、函数文件统一以.php为后缀。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		类的文件名均以命名空间定义，并且命名空间的路径和类库文件所在路径一致。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		类文件采用驼峰法命名（首字母大写），其它文件采用小写加下划线命名。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		类名和类文件名保持一致，统一采用驼峰法命名（首字母大写）。\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	函数和类、属性命名\r\n&lt;/h3&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		类的命名采用驼峰法（首字母大写），例如 User。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		函数的命名使用小写字母和下划线（小写字母开头）的方式，例如 get_client_ip。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		方法的命名使用驼峰法（首字母小写），例如 getUserName。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		属性的命名使用驼峰法（首字母小写），例如 tableName、instance。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		类名和类文件名保持一致，统一采用驼峰法命名（首字母大写）。\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	常量和配置命名\r\n&lt;/h3&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		常量以大写字母和下划线命名，例如 APP_PATH。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		配置参数以小写字母和下划线命名，例如 url_route_on。\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	数据表和字段命名\r\n&lt;/h3&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		数据表和字段采用小写加下划线方式命名，并注意字段名不要以下划线开头，例如 think_user 表和 user_name字段，不建议使用驼峰和中文作为数据表字段命名。\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	编码建议\r\n&lt;/h3&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		每个类（不含注释）代码应在200行以内，每个方法（不含注释）代码应在20行以内。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		控制器层（controller）中，尽量不出现 if else switch 等流程分支语句。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		业务逻辑尽量封装在逻辑层（logic）中，供控制器调用。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		数据模型层（model）尽量在逻辑层 logic 中使用，尽量不要再控制器中直接使用model。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		数据验证尽量写在验证层（validate）中，供逻辑层调用，尽量不要在控制器中进行数据验证。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		支付|短信 等尽量封装为服务便于后续扩展，图标选择|省市县联动 等尽量封装为插件便于后续复用。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		API接口尽量根据APP界面实现组合接口，减少APP接口请求。\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n		其他文档中遗漏项，尽量参考OneBase编码与命名。\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;', '0', '0', '', '1509762507', '1509763729', '1');
INSERT INTO `ob_article` VALUES ('26', '1', '目录结构', '7', 'OneBase目录结构', '&lt;img src=&quot;/upload/picture/20171206/e49c32fb18c336cf8706e81c704e6774.png&quot; alt=&quot;&quot; /&gt;&lt;br /&gt;', '0', '0', '', '1509762529', '1512538717', '1');
INSERT INTO `ob_article` VALUES ('27', '1', '首页介绍', '8', '后台登录与首页介绍', '&lt;h3 class=&quot;line&quot;&gt;\r\n	后台首页\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	安装完成以后输入 &lt;a href=&quot;http://xn--eqrt2g04jtsx/admin.php&quot;&gt;http://您的域名/admin.php&lt;/a&gt; 即可进入后台页面，若没有登录则会跳转登录页面。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/fcea4ef525c3d80d03acf8c94e4149f8_1920x1000.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	登录完成后即可进入后台首页\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/8f67981df66d26204af877e920d7e15a_1920x1002.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	后台分四个区域 顶部，左侧，内容，底部。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;顶部&lt;/strong&gt;：左侧为产品名称，旁边小图标可控制左侧是否展开，顶部右侧齿轮按钮可设置后台皮肤与布局，点击昵称区域可显示上次登录时间，时间下方左侧为 清空系统缓存按钮，右侧为退出系统按钮。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;左侧&lt;/strong&gt;：左侧为系统的菜单区域，左侧菜单为无限级菜单，后台的菜单管理中可控制左侧菜单与上面的图标和链接。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;内容&lt;/strong&gt;：内容区域分左右布局，左侧为系统信息，显示了系统的版本与依赖框架的版本包括运行环境，右侧为产品信息，值得注意的是右侧下方两项，缓存量与命中率只有后台开启自动缓存的情况下才会统计，缓存量是自动缓存的key数量，命中率为\r\n 查询次数与读取缓存次数计算出来的，比如  查询了 2次，第一次查询了数据库，第二次直接从缓存中读取，那么命中率为50%。&lt;br /&gt;\r\n系统信息与产品信息上方左侧为当前操作的标题信息，默认读取菜单名称，也可以控制器中使用 setTitle 方法设置，右侧为面包屑，可标识当前页面的位置结构。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;底部&lt;/strong&gt;：底部分左右布局，左侧为OneBase的版权信息，右侧为版本号，浮动在右下角的是TP5的调试信息，可在配置文件中关闭，研发阶段建议开启。\r\n&lt;/p&gt;', '0', '0', '', '1509792865', '1509792865', '1');
INSERT INTO `ob_article` VALUES ('28', '1', '会员管理', '8', '会员管理及无限级权限介绍', '&lt;h1 class=&quot;line&quot;&gt;\r\n	会员管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	会员列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/98ae6e56979ef99082e34b3855c2d2b8_1920x1005.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	OneBase的会员列表是带继承关系的，超级管理员查看可看到所有的会员数据，上方有两个按钮，新增与导出，导出功能为演示系统导出功能的用法，数据列表中的操作按钮有授权与删除，授权可设置会员所在权限组，删除为软删除，需要彻底删除后面介绍回收站时会讲解。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;注意&lt;/strong&gt;：新增会员时表单中有一项 &ldquo;是否共享会员&rdquo;， 若选择共享会员自己的会员则会继承给添加的会员，添加的会员就可以在会员列表中查看到自己的会员数据，若不共享则添加的会员就没有权限查看自己的会员数据。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	权限管理\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/ab02d0de03680b08ff9bf439608836e1_1903x945.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	权限管理点开默认为权限组列表页，可新增，删除，编辑 权限组信息。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;注意&lt;/strong&gt;：每个会员的权限组都是独立的，菜单授权功能也是带继承关系的，超级管理员拥有所有添加在菜单中的节点权限，比如：超级管理员添加\r\n 权限组 A， 并设置权限组A的菜单权限为 a1 a2 a3 a4 a5，然后添加一个会员 张三，将张三授权到权限组 A \r\n中，张三登录进来后，点击权限管理 是看不到 超级管理员的权限组信息的，张三此时可添加自己的权限组 B，然后给 B权限组设置 菜单权限，此时 \r\n张三可设置的菜单节点为 A 组 的最大权限 a1 a2 a3 a4 a5，那么 张三给B组的菜单权限设置为 a1 a2 a3权限， \r\n并添加李四进B组，李四 添加自己的权限组，可分配的最大权限即为 a1 a2 a3，OneBase的权限是可以这样无限的继承分配下去 ^_^。\r\n&lt;/p&gt;', '0', '0', '', '1509792935', '1509792935', '1');
INSERT INTO `ob_article` VALUES ('29', '1', '系统设置与配置管理', '8', '设置系统中需要使用的信息，在系统中通过 config 函数取值使用', '&lt;h1 class=&quot;line&quot; style=&quot;font-size:2.25em;font-family:&amp;quot;font-weight:200;color:rgba(0, 0, 0, 0.87);font-style:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	系统设置与配置管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot; style=&quot;font-family:&amp;quot;font-weight:200;font-size:1.5em;color:rgba(0, 0, 0, 0.87);font-style:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	系统设置\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/1bf57e33aa50f1a5ced8cb49638a20fa_1920x947.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	系统设置是设置系统中需要使用的字符串，数组，文本 等信息，在系统中通过 config 函数取值使用。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	OneBase 默认支持 数字，字符，文本，枚举，数组 5种配置类型，如有需要可自行扩展，后续手册中也会演示扩展配置类型的教程。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	系统设置值之前需要先添加系统配置，下面看下如何添加系统配置。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot; style=&quot;font-family:&amp;quot;font-weight:200;font-size:1.5em;color:rgba(0, 0, 0, 0.87);font-style:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	配置列表与配置新增\r\n&lt;/h3&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/f993980d47992aee3b1bb7aafa079243_1917x945.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/2aa1a9ed50c0b7c1dbe093adaceb09a2_1918x943.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;注意&lt;/strong&gt;：系统设置与配置列表 上面的 基础，数据，系统，API 四项 也属于系统配置，在配置列表中是可以找到的，若需要添加新的配置分组可直接在系统设置中进行设置。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	下面咱们演示添加一个枚举与一个字符配置\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	添加一个客服电话字符配置\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/c6a21953d9548a2e588c25e02736454d_1920x730.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	添加一个语言枚举配置\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/92d4f8fbeb0dadd88ddc5cbb325210f7_1919x811.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	添加了两个配置后，咱们来看一下系统设置。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/461df4a992ddd491056d49afc03a0fce_1917x820.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	发现多出了 两个设置选项，显示顺序可在添加配置时根据排序值控制，这里不再叙述。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	客服电话 是字符类型的配置，所以设置时 可以直接输入字符串值。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	枚举类型是单选择框只能选择一个值，因为咱们添加时配置值默认输入的是0，所以此时默认的是 PHP，默认选择值也就是 配置项 中 冒号 : 之前的内容，注意冒号是英文冒号，前后值不要包含空格，一个选项独占一行。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	下面咱们看看 在程序中如何使用\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/e6c3550fc71329855a9f53f3165c78fc_722x599.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	在代码中咱们通过 config函数获取了 刚才的配置标识对应的值，下面看下输出结果。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/b28fb82d6ec4f7cf59e5c13754431310_692x111.png&quot; alt=&quot;&quot; style=&quot;border:0px;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	输出了 刚才配置的客服电话 与 语言选项，若咱们在设置中将 客服电话修改为 18521353332 将 语言选项设置为 C#，那么 输出结果将变成 18521353332 与 2 。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:rgba(0, 0, 0, 0.87);font-family:&amp;quot;font-size:15.96px;font-style:normal;font-weight:normal;text-align:start;text-indent:0px;background-color:#FFFFFF;&quot;&gt;\r\n	^_^。 理解了吧，是不是很简单。 至于OneBase默认自带的配置 后续章节会介绍蛤~\r\n&lt;/p&gt;', '0', '0', '', '1509966353', '1509966399', '1');
INSERT INTO `ob_article` VALUES ('30', '1', '菜单管理', '8', 'OneBase 后台菜单是无限级的，意味着您的后台菜单可以无限制的往下层添加', '&lt;h1 class=&quot;line&quot;&gt;\r\n	菜单管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	菜单列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/cae5ec29ba13bd71a1db0aaab597481c_1919x942.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	OneBase 后台菜单是无限级的，意味着您的后台菜单可以无限制的往下层添加。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	后台查看下级菜单可点击菜单名称或右侧子菜单按钮，此处使用的是递归遍历，所以点进去后模板与外层模板是一样的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	初学者添加后台菜单建议参考OneBase现有的菜单数据添加。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	菜单添加\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/8e68f8eec7b630965f564095edf30820_1905x666.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	菜单名称是用于后台显示的和用户识别的，排序值是控制菜单后台显示顺序的（同级有效），链接是指点击菜单后跳转的页面语法（控制器/方法），上级菜单是指当前添加菜单属于某个菜单下级，是否隐藏是控制是否出现在后台菜单中的（隐藏菜单也会进行权限验证），图标是后台菜单名称前面的小图标，此处小图标选择已经封装成了插件需要使用小图标选择时参考菜单添加与编辑这里，小图标库也可以进行扩展（参考\r\n font-awesome）。\r\n&lt;/p&gt;', '0', '0', '', '1510137834', '1510137842', '1');
INSERT INTO `ob_article` VALUES ('31', '1', '系统回收站', '8', 'OneBase 的回收站不是其他产品那种 某个表（如：订单或文章）的回收站喔，而是整个系统所有数据的回收站喔~', '&lt;h1 class=&quot;line&quot;&gt;\r\n	系统回收站\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	回收站\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/1025ac572b017963b83ad26b9c6cb517_1914x699.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	OneBase 的回收站不是其他产品那种 某个表（如：订单或文章）的回收站喔，而是整个系统所有数据的回收站喔~\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	下面咱们介绍一下回收站列表页面，上图中 第一列是 数据模型名称，第二列是 数据模型路径，第三列是指 此模型下面被删除数据的数量，第四列是操作列，点击数据可查看此模型被删除的数据。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	小伙伴们看到这里有列表 但是没有新增是不是很好奇数据从哪里来的丫 ^_^。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/058e92152bfb5296e58bf16c663fdb96_1918x783.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	就是这里。。系统设置里面的系统分组中有个回收站配置，key为模型名称，值为显示列。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	意思就是 冒号前面是 模型的名称 如：用户模型（Member），冒号后面是 回收站数据 页面中显示的名称。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	腻害吧，在这里配置完成后 咱们的回收站就会自动显示对应的模型，查看被删除的数据，还可以还原和彻底干掉喔~\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	回收站数据\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/ee37aaf33b7b5080c2fcfe7a6365a1de_1918x698.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	比如上图中就是点击菜单模型旁边的数据看到的页面，里面这些数据 都是被删除的数据，点击彻底删除就可以彻底的让Ta消失。。再也找不回来了。所以要慎重(⊙o⊙)&hellip; ，点击恢复正常 可以 把删除状态恢复为正常数据状态，在菜单管理中就可以看到啦。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	系统回收站就介绍到这里咯，还有疑问可加入QQ交流群：477824874 交流蛤~期待您的光临。\r\n&lt;/p&gt;', '0', '0', '', '1510218109', '1510218109', '1');
INSERT INTO `ob_article` VALUES ('32', '1', '服务管理', '8', 'OneBase 已经集成了 支付服务和云存储服务，OneBase 追求的不是服务有多少，插件有多少，而是给开发者们一套可扩展性强，适合用来二次研发的架构', '&lt;h1 class=&quot;line&quot;&gt;\r\n	服务管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	系统服务列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/05df6205da557c801dd1d061d27317a9_1917x650.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	图中可以看到OneBase 已经集成了 支付服务和云存储服务，OneBase \r\n追求的不是服务有多少，插件有多少，而是给开发者们一套可扩展性强，适合用来二次研发的架构，所以OneBase 自带的服务、驱动、插件 \r\n主要是起一个引导作用，实际研发中根据实际情况分析，然后进行服务、驱动、插件、函数 等封装。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	服务驱动列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/75855cf08e4d06f5b94ac91fd278cc97_1915x679.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	点开支付服务右侧的驱动，可以看到已经存在支付宝、微信支付、易宝支付 的驱动，由此处就可以看到 想扩展其他支付驱动很方便，至于服务和驱动 如果进行编码及研发，可参考后续章节的服务研发及使用。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/46d13fa1b8d41e0f5596932434a78ad4_1915x731.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/68456ee3cee2ebedb4a9b86a571ccdc1_1915x736.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图为 点开 微信驱动安装与支付宝驱动安装的效果，细心的小伙伴会发现 浏览器上的URL并没有变化，而是参数在变化。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	此处使用了多态性的设计，使不同的驱动安装 展示不同的表单录入项，至于需要录入的录入项则是由驱动研发时进行控制的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	这里只是介绍，具体研发及扩展 请阅读后续章节蛤。^_^。\r\n&lt;/p&gt;', '0', '0', '', '1510307288', '1510307288', '1');
INSERT INTO `ob_article` VALUES ('33', '1', '插件管理', '8', 'OneBase 可以自己扩展插件哦', '&lt;h1 class=&quot;line&quot;&gt;\r\n	插件管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	钩子列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/232758b9b204a053cd07634fa33a47ce_1918x703.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	插件列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/b7406939a59699f894e653fe95eeaf17_1920x737.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图为 咱们的插件列表，右侧按钮 有 安装 与 卸载，但是每次只会出现一个，未安装状态下出现的是安装按钮，安装状态下出现的是卸载按钮。\r\n&lt;/p&gt;', '0', '0', '', '1510393207', '1510393207', '1');
INSERT INTO `ob_article` VALUES ('34', '1', '文章管理', '8', 'OneBase 文章管理可谓简单粗暴', '&lt;h1 class=&quot;line&quot;&gt;\r\n	文章管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	文章分类列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/93e990d2063204f7171aaaee1e8cb319_1915x568.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	文章是很常见的功能模块，也是一套系统经常会操作的功能，所以必须要简单易用。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	OneBase 考虑到文章编辑人员可能存在使用上的障碍，所以默认使用了最常见的结构，一级文章分类，此处抛弃了 无限级分类的文章架构，因为实际情况下运营人员常常要求很简单，不希望常用功能过于复杂难于理解。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	当然也不排除有些项目的需求从架构上 就必须要求 多级分类，所以此处谈下 扩展文章分类的做法，OneBase扩展多级分类建议从文章分类上 向上扩展，比如添加文章分类上 加一项顶级分类选择。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	文章列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/e03831ec9865bfa3520b59ff68025fec_1913x688.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/800dd3be11a94330050a5cb1f3575512_1903x940.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图为文章列表与文章编辑， 可以看到列表页和编辑页有些数据是咱们OneBase前端没有看到的数据，OneBase \r\n是一套研发应用解决方案，文章上的 附件，单图上传，多图上传 等 包括其他模块没有用到的一些功能存在是为了展示研发及使用上的技巧，所以 \r\n作为OneBase的使用者，是需要具备二次研发能力的。\r\n&lt;/p&gt;', '0', '0', '', '1510393374', '1510393406', '1');
INSERT INTO `ob_article` VALUES ('35', '1', '接口管理', '8', '接口管理看完后再也不用和APP研发工程师撕逼啦~自己去看文档吧，哈哈', '&lt;h1 class=&quot;line&quot;&gt;\r\n	接口管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	接口列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	接口分组管理这里就不在叙述，就是为了给接口归类。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/5f5267b6d4fee4a47c9f7d8e29e88ecc_1919x738.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图为接口列表页，左上角有两个按钮，一个是新增接口，一个是接口文档跳转按钮。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	数据列表中 第1列为 接口名称，第2列为接口分组，第3列为接口请求类型，OneBase默认统一POST类型，当然需要其他类型如GET \r\n可自行扩展，第4列为接口地址也就是 \r\n（控制器/方法），第5列是接口目前的状态，接口状态中的选项在系统设置的API栏目下可进行配置，第6列为研发者，研发者成员也在系统设置的API栏目下配置，后面两列为接口排序与操作，接口排序为同级有效。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	接口新增\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/c425bef34644d08f110f9e10e3a794e1_1900x945.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	^_^。  虽然表单数据数据有点多，但是不要怕蛤，咱们来一个一个讲解。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	咱们按从左往右，从上往下进行编号讲解，比如 1 2 3 4 对应的是 接口名称，接口排序值，请求地址，请求类型。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	1：API接口名称，就是用来看滴。。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	2：接口排序值，用来进行接口显示排序，这些都很好理解啦。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	3：请求地址，接口访问地址格式（控制器/方法）。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	4：请求类型，默认为POST，需要其他类型可自己扩展。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	5：是否为分页接口，意思就是这个接口是否需要分页功能，如果需要分页功能可传递相关参数，如：list_rows 每页显示的数据量，page 查询的页码。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	6：研发者，此接口的研发人员，选项中的可选值可在系统设置的API分组下进行配置。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	7：请求数据，意思就是执行此接口是否需要带请求参数，默认为否不带请求数据，此处的请求数据控制的为接口所依赖的请求参数，大家可以打开 &lt;a href=&quot;/api.php&quot;&gt;https://onebase.org/api.php&lt;/a&gt; 看到里面这些接口 下面有个测试接口功能，此处测试接口功能的表单就是根据这里请求数据设置自动生成的，Token与分页参数是不受此处控制的。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	8：响应数据，意思就是接口执行成功后返回的数据，默认为否不带返回数据，为是 则可添加接口返回的数据，当然也会有特殊数据 如 分页数据及后面将介绍的数据签名 等。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	9：接口分组，这个就不介绍啦。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	10：接口状态，这个也飘过吧。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	11：接口响应示例，这个是用来给接口调用者看的，方便接口调用者可一眼看清数据结构，提升团队研发效率。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	12：接口简介，用来看滴。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	13：是否验证用户令牌：user_token， 用来做身份验证滴，比如 \r\n文章列表接口，所有的访问者不需要登录也可以看到，就设置为否，这样接口调用就不需要带user_token，若 为需要身份验证的接口，如 \r\n订单列表，某个会员只能查看自己的订单，就需要用到user_token啦，所以 像 订单管理，个人中心等 这些接口是需要带 \r\nuser_token的。user_token 是调用登录接口后返回的，所以若终端想调用需要身份验证的接口，则需要 先调用登录接口后将接口中返回的\r\n user_token 保存下来，在后续接口调用过程中使用。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	14：是否响应数据签名：data_sign，此处是用于做数据安全验证的，比如咱们服务器给终端返回了数据，但是 \r\n终端那边怎么知道真滴是咱们返回的呢。。此时 data_sign 就派上用场啦。 返回的数据中带上了 data_sign \r\n字段，终端根据服务器返回的数据进行与服务器端相同的算法，计算出 终端的  data_sign，然后两端的  data_sign \r\n进行比对，若一模一样，则说明 数据是一模一样滴，这样就很安全啦，别人想改也不行，嘿嘿。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	15：是否验证请求数据签名：data_sign，原理是一样滴，意思就是 终端像接口提交数据时，咱们服务器端也得知道提交的数据是否安全，所以\r\n 咱们也要根据提交上来的数据 生成 \r\ndata_sign，与提交数据中带的data_sign，进行比对，不一样的话就不执行操作，接口返回数据签名不对，一样的话就放行。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	16：这个是备用的。。担心服务端人员太腻害，研发出来的接口实在是用言语无法表达。。就可以用富文本进行图文描述。。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	好啦，输入选项介绍完了，咱们看下登录接口的编辑数据页面，看看是咋输入滴。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/b66298b92545f3cc1b2c22d886a68f4f_1900x947.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	后台接口管理功能就介绍到这里，更深一步将在接口研发中讲解。\r\n&lt;/p&gt;', '0', '0', '', '1510646369', '1510646369', '1');
INSERT INTO `ob_article` VALUES ('36', '1', '优化维护-SEO管理', '8', 'OneBase中的SEO信息可是支持变量滴~', '&lt;h1 class=&quot;line&quot;&gt;\r\n	SEO管理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	SEO管理列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/4065235f0baa9f04351aa5dfda0a7590_1920x562.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图为SEO管理数据列表，可以看到标题和关键词里面有变量，OneBase中的这些变量可不是固定的喔~\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	SEO变量\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	至于新增和编辑这里就不在叙述啦~太简单咯，咱们直接看看SEO中的这些变量是从哪里来滴。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/6f2c5cf3484b2768324f2409ca84accb_1915x786.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	咱们点开首页的SEO配置信息编辑页面，看到里面用到这些变量，{$category_name}，{$article_title}，{$article_describe}\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	这些变量是从哪里来的？ 请看下图\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/a805e5dee7706276a304787f2ee31194_1031x930.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	细心的观众能看出来，都是 assign 方法中的变量，如果 assign 不知道是干啥的。。那么请移步至ThinkPHP5的手册 看完再来蛤。。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	SEO中的变量支持 所有在控制器中 assign 给模板赋值的变量，这意味着您想添加或减少很简单。。前提是您是开发者。当然，开发者开发完成后建议把此处所支持的变量录入到 可用变量 的输入框中 方便 非开发者知道可支持的有哪些变量蛤。\r\n&lt;/p&gt;', '0', '0', '', '1512096686', '1512096686', '1');
INSERT INTO `ob_article` VALUES ('37', '1', '优化维护-数据库', '8', '此处可以备份和还原数据库', '&lt;h1 class=&quot;line&quot;&gt;\r\n	数据库\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	数据备份\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/fca84a3b960b8d65dfe2896bab3de32d_1912x873.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图是数据备份页面，列表中是数据库表信息，点击左上角的按钮备份数据，可实现数据库的备份，旁边的 优化和修复是执行的MySql内置的优化与修复，如需了解请自行搜索蛤。\r\n&lt;/p&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	数据还原\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/a939e0e84d1a25952e619e7beaff76ad_1916x788.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图是数据还原的界面，列表中为之前备份的记录，点击右侧的还原可还原到当时备份的数据库，若系统已经上线此功能要慎重使用。\r\n&lt;/p&gt;', '0', '0', '', '1512096775', '1512096775', '1');
INSERT INTO `ob_article` VALUES ('38', '1', '优化维护-文件清理', '8', '自动清理系统辣鸡文件和辣鸡数据，维护系统健康', '&lt;h1 class=&quot;line&quot;&gt;\r\n	文件清理\r\n&lt;/h1&gt;\r\n&lt;hr /&gt;\r\n&lt;h3 class=&quot;line&quot;&gt;\r\n	文件清理列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/2cbbad1d7df01f67406b189a057e4a2a_1918x609.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	点击文件清理后发现没有数据，说明系统很健康喔~木有辣鸡文件需要清理，下面咱们人工制造两个无用的图片试试。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/d42b3147c268615b37e5275c57cc5344_561x798.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	上图中咱们 制造了 辣鸡1 和 辣鸡2，再来看看后台。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/ded6f545da29c4ddada686a061e93568_1917x764.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	发现辣鸡了。。腻害吧。嘿嘿。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	然后咱们点击开始清理，然后就会自动干掉 系统中没有引用的文件，这里不光是干掉没有使用的辣鸡文件哦，还隐式的干掉了 数据库中记录的文件记录但是在文件中又不存在的，是双向检索蛤。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	那么问题来了， 系统怎么知道咱们哪些需要检索为辣鸡数据 哪些不需要检索呢？\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/0e48380b13dda40e59223ed21ab18d05_1918x845.png&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	图上就是配置检索字段的地方啦。: 冒号前面为 模型名称，后面为 需要检索的字段名称，但是 \r\n冒号前面的模型前咋还有下划线呢？下划线是用来区分key标识的，因为 如果没有下划线前面的 0 和 1 系统就没办法知道 这两个 key \r\n有啥区别，就理解成了 只有 1个key ， 就会造成系统清理的时候 有遗漏蛤，所以 需要添加清理配置列就参考此处喔。\r\n&lt;/p&gt;', '0', '0', '', '1512096869', '1512096869', '1');
INSERT INTO `ob_article` VALUES ('39', '1', '优化维护-行为日志', '8', '后台操作行为一目了然', '&lt;h3 class=&quot;line&quot;&gt;\r\n	行为日志列表\r\n&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;https://box.kancloud.cn/ace534fc77ad7137c1eb21c2679d287b_1917x855.png&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	图上是系统的行为日志，此处的行为日志是指后台的操作行为记录，不涉及其他模块，后台研发过程中需要记录行为日志则使用  action_log 函数记录，清空与删除日志此处就不说啦。\r\n&lt;/p&gt;', '0', '0', '', '1512471084', '1512471100', '1');
INSERT INTO `ob_article` VALUES ('40', '1', '优化维护-执行记录', '8', '监控系统执行记录，让系统随时处于最佳状态', '<h1 class=\"line\">\r\n	执行记录\r\n</h1>\r\n<hr />\r\n<h3 class=\"line\">\r\n	全局范围\r\n</h3>\r\n<p>\r\n	<img src=\"https://box.kancloud.cn/5cbb0f2cb8e55ef6593668299a67022a_1916x732.png\" alt=\"\" />\r\n</p>\r\n<hr />\r\n<h3 class=\"line\">\r\n	接口范围\r\n</h3>\r\n<p>\r\n	<img src=\"https://box.kancloud.cn/10f2ec0dfb638c81b70016e7359c51ac_1914x725.png\" alt=\"\" />\r\n</p>\r\n<hr />\r\n<p>\r\n	这功能就有点腻害啦，是压轴滴蛤。\r\n</p>\r\n<p>\r\n	咱们第一张图是 全局范围，意思就是 咱们整套系统的任何模块所有的操作记录。\r\n</p>\r\n<p>\r\n	第二张图是 接口范围，意思就是 咱们接口模块所有的执行操作记录。\r\n</p>\r\n<p>\r\n	至于数据列表上面的列就不介绍啦~相信能来到这里的小伙伴都可以看懂喔。\r\n</p>\r\n<p>\r\n	看到全局范围 1200多页。。。会不会影响系统速度呢？\r\n</p>\r\n<p>\r\n	看看咱们执行记录的流程就知道咯\r\n</p>\r\n<p>\r\n	1.访问系统 -&gt; 2.记录文件 -&gt; 3.后台手动批量入库 -&gt;  4.干掉已入库文件记录\r\n</p>\r\n<p>\r\n	清空日志是指软删除咱们全局范围中所有的数据库记录，全局范围包含了接口范围喔~\r\n</p>\r\n<p>\r\n	之前就说过咯，咱们所有的数据删除都是软删除，想要彻底干掉就去回收站介绍里面看看蛤。\r\n</p>\r\n<p>\r\n	咱们后台功能介绍就到此为止咯，相信童鞋们已经看到OneBase的腻害之处了吧，下面咱们来看看如何研发后台功能吧。 ^_^。\r\n</p>', '1', '0', '', '1512471194', '1597991933', '1');

-- ----------------------------
-- Table structure for ob_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ob_article_category`;
CREATE TABLE `ob_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `icon` char(20) NOT NULL DEFAULT '' COMMENT '分类图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of ob_article_category
-- ----------------------------
INSERT INTO `ob_article_category` VALUES ('7', '基础', '基础内容', '1509620712', '1509620712', '1', 'fa-street-view');
INSERT INTO `ob_article_category` VALUES ('8', '后台介绍', '后台功能介绍', '1509792822', '1509792822', '1', 'fa-user');

-- ----------------------------
-- Table structure for ob_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `ob_auth_group`;
CREATE TABLE `ob_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组所属模块',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `describe` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(1000) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of ob_auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for ob_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ob_auth_group_access`;
CREATE TABLE `ob_auth_group_access` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组授权表';

-- ----------------------------
-- Records of ob_auth_group_access
-- ----------------------------

-- ----------------------------
-- Table structure for ob_bear_content
-- ----------------------------
DROP TABLE IF EXISTS `ob_bear_content`;
CREATE TABLE `ob_bear_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='深圳帮扶简史 表';

-- ----------------------------
-- Records of ob_bear_content
-- ----------------------------
INSERT INTO `ob_bear_content` VALUES ('2', '不择客服部举而不坚比较急就比较', null);

-- ----------------------------
-- Table structure for ob_blogroll
-- ----------------------------
DROP TABLE IF EXISTS `ob_blogroll`;
CREATE TABLE `ob_blogroll` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL DEFAULT '' COMMENT '链接名称',
  `img_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '链接图片封面',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of ob_blogroll
-- ----------------------------

-- ----------------------------
-- Table structure for ob_config
-- ----------------------------
DROP TABLE IF EXISTS `ob_config`;
CREATE TABLE `ob_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置选项',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='配置表';

-- ----------------------------
-- Records of ob_config
-- ----------------------------
INSERT INTO `ob_config` VALUES ('1', 'seo_title', '1', '网站标题', '1', '', '网站标题前台显示标题，优先级低于SEO模块', '1378898976', '1599198903', '1', '深圳扶贫后台', '3');
INSERT INTO `ob_config` VALUES ('2', 'seo_description', '2', '网站描述', '1', '', '网站搜索引擎描述，优先级低于SEO模块', '1378898976', '1512555314', '1', 'OneBase|ThinkPHP5', '100');
INSERT INTO `ob_config` VALUES ('3', 'seo_keywords', '2', '网站关键字', '1', '', '网站搜索引擎关键字，优先级低于SEO模块', '1378898976', '1599198903', '1', 'OneBase|ThinkPHP5', '99');
INSERT INTO `ob_config` VALUES ('9', 'config_type_list', '3', '配置类型列表', '3', '', '主要用于数据解析和页面表单的生成', '1378898976', '1512982406', '1', '0:数字\r\n1:字符\r\n2:文本\r\n3:数组\r\n4:枚举\r\n5:图片\r\n6:文件\r\n7:富文本\r\n8:单选\r\n9:多选\r\n10:日期\r\n11:时间\r\n12:颜色', '100');
INSERT INTO `ob_config` VALUES ('20', 'config_group_list', '3', '配置分组', '3', '', '配置分组', '1379228036', '1512982406', '1', '1:基础\r\n2:数据\r\n3:系统\r\n4:API', '100');
INSERT INTO `ob_config` VALUES ('25', 'list_rows', '0', '每页数据记录数', '2', '', '数据每页显示记录数', '1379503896', '1507197630', '1', '10', '10');
INSERT INTO `ob_config` VALUES ('29', 'data_backup_part_size', '0', '数据库备份卷大小', '2', '', '该值用于限制压缩后的分卷最大长度。单位：B', '1381482488', '1507197630', '1', '52428800', '7');
INSERT INTO `ob_config` VALUES ('30', 'data_backup_compress', '4', '数据库备份文件是否启用压缩', '2', '0:不压缩\r\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '1381713345', '1507197630', '1', '1', '9');
INSERT INTO `ob_config` VALUES ('31', 'data_backup_compress_level', '4', '数据库备份文件压缩级别', '2', '1:普通\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '1381713408', '1507197630', '1', '9', '10');
INSERT INTO `ob_config` VALUES ('33', 'allow_url', '3', '不受权限验证的url', '3', '', '', '1386644047', '1512982406', '1', '0:file/pictureupload\r\n1:addon/execute', '100');
INSERT INTO `ob_config` VALUES ('43', 'empty_list_describe', '1', '数据列表为空时的描述信息', '2', '', '', '1492278127', '1507197630', '1', 'aOh! 暂时还没有数据~', '0');
INSERT INTO `ob_config` VALUES ('44', 'trash_config', '3', '回收站配置', '3', '', 'key为模型名称，值为显示列。', '1492312698', '1512982406', '1', 'Config:name\r\nAuthGroup:name\r\nMember:nickname\r\nMenu:name\r\nArticle:name\r\nArticleCategory:name\r\nAddon:name\r\nPicture:name\r\nFile:name\r\nActionLog:describe\r\nApi:name\r\nApiGroup:name\r\nBlogroll:name', '0');
INSERT INTO `ob_config` VALUES ('49', 'static_domain', '1', '静态资源域名', '1', '', '若静态资源为本地资源则此项为空，若为外部资源则为存放静态资源的域名', '1502430387', '1512555314', '1', '', '0');
INSERT INTO `ob_config` VALUES ('52', 'team_developer', '3', '研发团队人员', '4', '', '', '1504236453', '1510894595', '1', '0:Bigotry\r\n1:扫地僧', '0');
INSERT INTO `ob_config` VALUES ('53', 'api_status_option', '3', 'API接口状态', '4', '', '', '1504242433', '1510894595', '1', '0:待研发\r\n1:研发中\r\n2:测试中\r\n3:已完成', '0');
INSERT INTO `ob_config` VALUES ('54', 'api_data_type_option', '3', 'API数据类型', '4', '', '', '1504328208', '1510894595', '1', '0:字符\r\n1:文本\r\n2:数组\r\n3:文件', '0');
INSERT INTO `ob_config` VALUES ('55', 'frontend_theme', '1', '前端主题', '1', '', '', '1504762360', '1599198903', '1', 'default', '0');
INSERT INTO `ob_config` VALUES ('56', 'api_domain', '1', 'API部署域名', '4', '', '', '1504779094', '1510894595', '1', 'https://demo.onebase.org', '0');
INSERT INTO `ob_config` VALUES ('57', 'api_key', '1', 'API加密KEY', '4', '', '泄露后API将存在安全隐患', '1505302112', '1510894595', '1', 'l2V|gfZp{8`;jzR~6Y1_', '0');
INSERT INTO `ob_config` VALUES ('58', 'loading_icon', '4', '页面Loading图标设置', '1', '1:图标1\r\n2:图标2\r\n3:图标3\r\n4:图标4\r\n5:图标5\r\n6:图标6\r\n7:图标7', '页面Loading图标支持7种图标切换', '1505377202', '1599198903', '1', '6', '80');
INSERT INTO `ob_config` VALUES ('59', 'sys_file_field', '3', '文件字段配置', '3', '', 'key为模型名，值为文件列名。', '1505799386', '1512982406', '1', '0_article:file_id', '0');
INSERT INTO `ob_config` VALUES ('60', 'sys_picture_field', '3', '图片字段配置', '3', '', 'key为模型名，值为图片列名。', '1506315422', '1512982406', '1', '0_article:cover_id\r\n1_article:img_ids', '0');
INSERT INTO `ob_config` VALUES ('61', 'jwt_key', '1', 'JWT加密KEY', '4', '', '', '1506748805', '1510894595', '1', 'l2V|DSFXXXgfZp{8`;FjzR~6Y1_', '0');
INSERT INTO `ob_config` VALUES ('65', 'admin_allow_ip', '3', '超级管理员登录IP', '3', '', '后台超级管理员登录IP限制，其他角色不受限。', '1510995580', '1512982406', '1', '0:27.22.112.250', '0');
INSERT INTO `ob_config` VALUES ('66', 'pjax_mode', '8', 'PJAX模式', '3', '0:否\r\n1:是', '若为PJAX模式则浏览器不会刷新，若为常规模式则为AJAX+刷新', '1512370397', '1512982406', '1', '1', '120');

-- ----------------------------
-- Table structure for ob_deeds_cates
-- ----------------------------
DROP TABLE IF EXISTS `ob_deeds_cates`;
CREATE TABLE `ob_deeds_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgs` int(5) DEFAULT NULL COMMENT 'icon图',
  `title` varchar(40) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=ok 0=delete',
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='事迹风采分类表';

-- ----------------------------
-- Records of ob_deeds_cates
-- ----------------------------
INSERT INTO `ob_deeds_cates` VALUES ('1', '25', '扶贫文艺作品', '50', '1', '1598926169');
INSERT INTO `ob_deeds_cates` VALUES ('2', '9', '八百', '1', '0', '1598926199');
INSERT INTO `ob_deeds_cates` VALUES ('3', '14', '扶贫报到精选', '15', '1', '1598955958');
INSERT INTO `ob_deeds_cates` VALUES ('4', '9', '扶贫日记', '20', '1', '1599032129');
INSERT INTO `ob_deeds_cates` VALUES ('5', '8', '扶贫荣耀', '1', '1', '1599032358');
INSERT INTO `ob_deeds_cates` VALUES ('6', '26', '测试', '1', '0', '1599185762');

-- ----------------------------
-- Table structure for ob_deeds_content
-- ----------------------------
DROP TABLE IF EXISTS `ob_deeds_content`;
CREATE TABLE `ob_deeds_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='事迹风采介绍表';

-- ----------------------------
-- Records of ob_deeds_content
-- ----------------------------
INSERT INTO `ob_deeds_content` VALUES ('2', '五星111111111');

-- ----------------------------
-- Table structure for ob_deeds_describe
-- ----------------------------
DROP TABLE IF EXISTS `ob_deeds_describe`;
CREATE TABLE `ob_deeds_describe` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='扶贫报道描述表';

-- ----------------------------
-- Records of ob_deeds_describe
-- ----------------------------
INSERT INTO `ob_deeds_describe` VALUES ('2', '王建峰佳佳就给回复给回复改好发给养你和');

-- ----------------------------
-- Table structure for ob_deeds_log
-- ----------------------------
DROP TABLE IF EXISTS `ob_deeds_log`;
CREATE TABLE `ob_deeds_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '新闻标题',
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `introduce` varchar(200) DEFAULT NULL COMMENT '新闻简介',
  `content` text COMMENT '新闻详情',
  `status` tinyint(1) DEFAULT '1' COMMENT '1=ok 0=delete',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='事迹风采 扶贫日记表';

-- ----------------------------
-- Records of ob_deeds_log
-- ----------------------------
INSERT INTO `ob_deeds_log` VALUES ('1', '测试', '1', '                            ceshiob                        ', '分公司个体', '0', '1599038879');
INSERT INTO `ob_deeds_log` VALUES ('2', '就改好发给', '1', '她估计灰灰给', '和顶顶顶顶顶的的', '1', '1599038931');
INSERT INTO `ob_deeds_log` VALUES ('3', '刚刚凤冠福股份', '1', '跟单还是多或所所过或或或或或或或或或或或或或或', '更合适不V型北大法宝发广告', '1', '1599038945');
INSERT INTO `ob_deeds_log` VALUES ('4', '1111', '10', '222222222222', '3333333333', '1', '1599038955');

-- ----------------------------
-- Table structure for ob_deeds_news
-- ----------------------------
DROP TABLE IF EXISTS `ob_deeds_news`;
CREATE TABLE `ob_deeds_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgs` int(10) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `title` varchar(50) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `content` text,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=ok 0=delete',
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ob_deeds_news
-- ----------------------------
INSERT INTO `ob_deeds_news` VALUES ('1', '20', '10', '汽车配件2222', '   465465465 546654654654564564564                                                ', '                                                788797877/654654654654645645                                                ', '1', '1599042975');
INSERT INTO `ob_deeds_news` VALUES ('2', '16', '1', '测试', '4546645645', '8787878778', '0', '1599042991');
INSERT INTO `ob_deeds_news` VALUES ('3', '14', '1', '测试1111', '65+5464545', '5645645464545', '1', '1599043007');

-- ----------------------------
-- Table structure for ob_deeds_works
-- ----------------------------
DROP TABLE IF EXISTS `ob_deeds_works`;
CREATE TABLE `ob_deeds_works` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cates_id` int(5) unsigned DEFAULT NULL COMMENT '类型',
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `resources` int(10) NOT NULL COMMENT '资源路径',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=>ok 0=delete',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='扶贫文艺作品表';

-- ----------------------------
-- Records of ob_deeds_works
-- ----------------------------
INSERT INTO `ob_deeds_works` VALUES ('1', '1', '20', '这是歌曲', '3', '1', '1599103337');
INSERT INTO `ob_deeds_works` VALUES ('2', '2', '1', '这是视频', '3', '1', '1599103764');
INSERT INTO `ob_deeds_works` VALUES ('3', '2', '1', '好看的', '3', '1', '1599105182');

-- ----------------------------
-- Table structure for ob_driver
-- ----------------------------
DROP TABLE IF EXISTS `ob_driver`;
CREATE TABLE `ob_driver` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `service_name` varchar(40) NOT NULL DEFAULT '' COMMENT '服务标识',
  `driver_name` varchar(20) NOT NULL DEFAULT '' COMMENT '驱动标识',
  `config` text NOT NULL COMMENT '配置',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of ob_driver
-- ----------------------------

-- ----------------------------
-- Table structure for ob_explore_cates
-- ----------------------------
DROP TABLE IF EXISTS `ob_explore_cates`;
CREATE TABLE `ob_explore_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgs` int(5) DEFAULT NULL COMMENT 'icon图',
  `title` varchar(40) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `content` varchar(255) DEFAULT NULL COMMENT '简介',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=ok 0=delete',
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='探索 管理分类表';

-- ----------------------------
-- Records of ob_explore_cates
-- ----------------------------
INSERT INTO `ob_explore_cates` VALUES ('1', '20', '深圳担当', '20', '                                                            7788787887                                                ', '1', '1598922682');
INSERT INTO `ob_explore_cates` VALUES ('2', '5', '探索管理', '30', '45455454', '1', '1598922724');
INSERT INTO `ob_explore_cates` VALUES ('3', '19', '勇于担当', '1', '5645664664565456', '1', '1599030433');

-- ----------------------------
-- Table structure for ob_explore_history
-- ----------------------------
DROP TABLE IF EXISTS `ob_explore_history`;
CREATE TABLE `ob_explore_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '名称',
  `imgs` int(10) unsigned NOT NULL COMMENT '图片',
  `content` text,
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='探索管理历史管理表';

-- ----------------------------
-- Records of ob_explore_history
-- ----------------------------
INSERT INTO `ob_explore_history` VALUES ('2', '   历史回望', '16', '5644646446545465645645', '1599016995');

-- ----------------------------
-- Table structure for ob_explore_news
-- ----------------------------
DROP TABLE IF EXISTS `ob_explore_news`;
CREATE TABLE `ob_explore_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) unsigned DEFAULT NULL COMMENT '分类id',
  `sort` int(10) DEFAULT '1' COMMENT '排序',
  `title` varchar(50) NOT NULL COMMENT '新闻标题',
  `content` text COMMENT '新闻内容',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=ok 0=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='探索管理新闻表';

-- ----------------------------
-- Records of ob_explore_news
-- ----------------------------
INSERT INTO `ob_explore_news` VALUES ('1', '2', '10', '汽车配件444', '65666789987879889', '1599028610', '1');
INSERT INTO `ob_explore_news` VALUES ('2', '1', '1', '测试', '                                                                           reeeeeeeeee                                                                        ', '1599028975', '1');
INSERT INTO `ob_explore_news` VALUES ('3', '3', '1', '哈哈哈', '46465456456465465564564654', '1599031064', '1');

-- ----------------------------
-- Table structure for ob_file
-- ----------------------------
DROP TABLE IF EXISTS `ob_file`;
CREATE TABLE `ob_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '原始文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '保存名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '远程地址',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件表';

-- ----------------------------
-- Records of ob_file
-- ----------------------------
INSERT INTO `ob_file` VALUES ('1', 'b2e6be75b2e963ee998b405e148cf9ad.png', '20200821/b2e6be75b2e963ee998b405e148cf9ad.png', '', '6637e0afd237654a34ea85c7fcbc9c8f6306fead', '1597991206', '0', '1');
INSERT INTO `ob_file` VALUES ('2', '0a75d0cbca875c01618cd6d2241a6ef3.png', '20200821/0a75d0cbca875c01618cd6d2241a6ef3.png', '', 'a43bc128d4ea84f9a96c7099cbc03d6fa182d62a', '1597991216', '0', '1');
INSERT INTO `ob_file` VALUES ('3', '32064efb9de612416143f5b4b31abe79.mp4', '20200903/32064efb9de612416143f5b4b31abe79.mp4', '', 'a0386e90c8278c07be68b4b84164106f17511d57', '1599103282', '0', '1');
INSERT INTO `ob_file` VALUES ('4', '88672c78405c2d520e6bba62303a5694.jpg', '20200910/88672c78405c2d520e6bba62303a5694.jpg', '', '51ddb1ca69b825053752ebea8eee7ba068f06a94', '1599716006', '0', '1');

-- ----------------------------
-- Table structure for ob_glory_cates
-- ----------------------------
DROP TABLE IF EXISTS `ob_glory_cates`;
CREATE TABLE `ob_glory_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `imgs` int(10) NOT NULL COMMENT '图片',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='荣耀分类表';

-- ----------------------------
-- Records of ob_glory_cates
-- ----------------------------
INSERT INTO `ob_glory_cates` VALUES ('1', '10', '先进单位', '23', '1599122960');
INSERT INTO `ob_glory_cates` VALUES ('2', '1', '先进个人', '14', '1599123058');

-- ----------------------------
-- Table structure for ob_glory_company
-- ----------------------------
DROP TABLE IF EXISTS `ob_glory_company`;
CREATE TABLE `ob_glory_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='荣耀先进单位表';

-- ----------------------------
-- Records of ob_glory_company
-- ----------------------------
INSERT INTO `ob_glory_company` VALUES ('1', '佳都科技扩扩扩扩但是都懂是的撒的', '1599124879');

-- ----------------------------
-- Table structure for ob_glory_content
-- ----------------------------
DROP TABLE IF EXISTS `ob_glory_content`;
CREATE TABLE `ob_glory_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='荣耀简介表';

-- ----------------------------
-- Records of ob_glory_content
-- ----------------------------
INSERT INTO `ob_glory_content` VALUES ('1', '                        规划局很尴尬会更好规划局好久好久好久好久                        ', '1599124340');

-- ----------------------------
-- Table structure for ob_glory_person
-- ----------------------------
DROP TABLE IF EXISTS `ob_glory_person`;
CREATE TABLE `ob_glory_person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `users` varchar(50) NOT NULL COMMENT '个人姓名',
  `address` varchar(100) NOT NULL COMMENT '个人住址',
  `user_img` int(10) NOT NULL COMMENT '用户图',
  `content` text NOT NULL COMMENT '个人简介',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=ok  0=delete',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `desc` varchar(255) DEFAULT NULL COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='荣耀先进个人表';

-- ----------------------------
-- Records of ob_glory_person
-- ----------------------------
INSERT INTO `ob_glory_person` VALUES ('1', '1', '张无忌', '光明顶235号', '18', '更丰富付付付付付付付', '0', '1599117901', null);
INSERT INTO `ob_glory_person` VALUES ('2', '1', '张三丰', '武当山', '20', '金晶科技看看借记卡健康健康', '1', '1599117981', null);
INSERT INTO `ob_glory_person` VALUES ('3', '20', '呜呜呜呜呜呜呜', '呃呃呃呃呃呃', '16', '                            鹅鹅鹅饿鹅鹅鹅饿                        ', '1', '1599118303', '到门口毛孔里面力缆狂澜');
INSERT INTO `ob_glory_person` VALUES ('4', '1', '张翠山', '武当山', '21', '                                                        顶顶顶顶顶顶顶顶顶                                                ', '1', '1599118339', '反反复复');

-- ----------------------------
-- Table structure for ob_hook
-- ----------------------------
DROP TABLE IF EXISTS `ob_hook`;
CREATE TABLE `ob_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(40) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `describe` varchar(255) NOT NULL COMMENT '描述',
  `addon_list` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件 ''，''分割',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of ob_hook
-- ----------------------------
INSERT INTO `ob_hook` VALUES ('36', 'File', '文件上传钩子', 'File', '1', '0', '0');
INSERT INTO `ob_hook` VALUES ('37', 'Icon', '图标选择钩子', 'Icon', '1', '0', '0');
INSERT INTO `ob_hook` VALUES ('38', 'ArticleEditor', '富文本编辑器', 'Editor', '1', '0', '0');

-- ----------------------------
-- Table structure for ob_jobs
-- ----------------------------
DROP TABLE IF EXISTS `ob_jobs`;
CREATE TABLE `ob_jobs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '队列名称',
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '有效负载',
  `attempts` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '重试次数',
  `reserved` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订阅次数',
  `reserved_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订阅时间',
  `available_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效时间',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='消息队列';

-- ----------------------------
-- Records of ob_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for ob_member
-- ----------------------------
DROP TABLE IF EXISTS `ob_member`;
CREATE TABLE `ob_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `head_img_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '头像图片ID',
  `nickname` char(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `username` char(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `email` char(32) NOT NULL DEFAULT '' COMMENT '用户邮箱',
  `session_id` char(32) NOT NULL DEFAULT '' COMMENT 'session_id',
  `mobile` char(15) NOT NULL DEFAULT '' COMMENT '用户手机',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态',
  `leader_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '上级会员ID',
  `is_share_member` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否共享会员',
  `is_inside` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为后台使用者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of ob_member
-- ----------------------------
INSERT INTO `ob_member` VALUES ('1', '1', 'admin', 'admin', '2dfc60226828374ae6efa854b28b93bc', '46985699@qq.com', 'a6jf7j2gbqujje3nusgh3759h0', '18555550710', '1599699974', '1597978893', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for ob_menu
-- ----------------------------
DROP TABLE IF EXISTS `ob_menu`;
CREATE TABLE `ob_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `is_hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `is_shortcut` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否快捷操作',
  `icon` char(30) NOT NULL DEFAULT '' COMMENT '图标',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of ob_menu
-- ----------------------------
INSERT INTO `ob_menu` VALUES ('1', '系统首页', '0', '1', 'admin', 'index/index', '0', '0', 'fa-home', '1', '1520506753', '0');
INSERT INTO `ob_menu` VALUES ('16', '会员管理', '0', '3', 'admin', 'member/index', '0', '0', 'fa-users', '1', '1520506753', '0');
INSERT INTO `ob_menu` VALUES ('17', '会员列表', '16', '1', 'admin', 'member/memberlist', '0', '1', 'fa-list', '1', '1495272875', '0');
INSERT INTO `ob_menu` VALUES ('18', '会员添加', '16', '2', 'admin', 'member/memberadd', '0', '0', 'fa-user-plus', '1', '1520505510', '0');
INSERT INTO `ob_menu` VALUES ('27', '权限管理', '16', '3', 'admin', 'auth/grouplist', '0', '0', 'fa-key', '1', '1520505512', '0');
INSERT INTO `ob_menu` VALUES ('32', '权限组编辑', '27', '0', 'admin', 'auth/groupedit', '1', '0', '', '1', '1492002620', '0');
INSERT INTO `ob_menu` VALUES ('34', '授权', '27', '0', 'admin', 'auth_manager/group', '1', '0', '', '1', '0', '0');
INSERT INTO `ob_menu` VALUES ('35', '菜单授权', '27', '0', 'admin', 'auth/menuauth', '1', '0', '', '1', '1492095653', '0');
INSERT INTO `ob_menu` VALUES ('36', '会员授权', '27', '0', 'admin', 'auth_manager/memberaccess', '1', '0', '', '1', '0', '0');
INSERT INTO `ob_menu` VALUES ('68', '系统管理', '0', '15', 'admin', 'config/group', '0', '0', 'fa-wrench', '1', '1597988186', '0');
INSERT INTO `ob_menu` VALUES ('69', '系统设置', '68', '3', 'admin', 'config/setting', '0', '0', 'fa-cogs', '1', '1520505460', '0');
INSERT INTO `ob_menu` VALUES ('70', '配置管理', '68', '2', 'admin', 'config/index', '0', '0', 'fa-cog', '1', '1520505457', '0');
INSERT INTO `ob_menu` VALUES ('71', '配置编辑', '70', '0', 'admin', 'config/configedit', '1', '0', '', '1', '1491674180', '0');
INSERT INTO `ob_menu` VALUES ('72', '配置删除', '70', '0', 'admin', 'config/configDel', '1', '0', '', '1', '1491674201', '0');
INSERT INTO `ob_menu` VALUES ('73', '配置添加', '70', '0', 'admin', 'config/configadd', '0', '0', 'fa-plus', '1', '1491666947', '0');
INSERT INTO `ob_menu` VALUES ('75', '菜单管理', '68', '1', 'admin', 'menu/index', '0', '0', 'fa-th-large', '1', '1520505453', '0');
INSERT INTO `ob_menu` VALUES ('98', '菜单编辑', '75', '0', 'admin', 'menu/menuedit', '1', '0', '', '1', '1512459021', '0');
INSERT INTO `ob_menu` VALUES ('124', '菜单列表', '75', '0', 'admin', 'menu/menulist', '0', '1', 'fa-list', '1', '1491318271', '0');
INSERT INTO `ob_menu` VALUES ('125', '菜单添加', '75', '0', 'admin', 'menu/menuadd', '0', '0', 'fa-plus', '1', '1491318307', '0');
INSERT INTO `ob_menu` VALUES ('126', '配置列表', '70', '0', 'admin', 'config/configlist', '0', '0', 'fa-list', '1', '1598838967', '1491666890');
INSERT INTO `ob_menu` VALUES ('127', '菜单状态', '75', '0', 'admin', 'menu/setstatus', '1', '0', '', '1', '1520506673', '1491674128');
INSERT INTO `ob_menu` VALUES ('128', '权限组添加', '27', '0', 'admin', 'auth/groupadd', '1', '0', '', '1', '1492002635', '1492002635');
INSERT INTO `ob_menu` VALUES ('134', '授权', '17', '0', 'admin', 'member/memberauth', '1', '0', '', '1', '1492238568', '1492101426');
INSERT INTO `ob_menu` VALUES ('135', '回收站', '68', '4', 'admin', 'trash/trashlist', '0', '0', ' fa-recycle', '1', '1520505468', '1492311462');
INSERT INTO `ob_menu` VALUES ('136', '回收站数据', '135', '0', 'admin', 'trash/trashdatalist', '1', '0', 'fa-database', '1', '1492319477', '1492319392');
INSERT INTO `ob_menu` VALUES ('140', '服务管理', '68', '5', 'admin', 'service/servicelist', '0', '0', 'fa-server', '1', '1520505473', '1492352972');
INSERT INTO `ob_menu` VALUES ('141', '插件管理', '68', '6', 'admin', 'addon/index', '0', '0', 'fa-puzzle-piece', '1', '1520505475', '1492427605');
INSERT INTO `ob_menu` VALUES ('142', '钩子列表', '141', '0', 'admin', 'addon/hooklist', '0', '0', 'fa-anchor', '1', '1492427665', '1492427665');
INSERT INTO `ob_menu` VALUES ('143', '插件列表', '141', '0', 'admin', 'addon/addonlist', '0', '0', 'fa-list', '1', '1492428116', '1492427838');
INSERT INTO `ob_menu` VALUES ('144', '文章管理', '0', '4', 'admin', 'article/index', '1', '0', 'fa-edit', '0', '1599094515', '1492480187');
INSERT INTO `ob_menu` VALUES ('145', '文章列表', '144', '0', 'admin', 'article/articlelist', '0', '0', 'fa-list', '1', '1598842968', '1492480245');
INSERT INTO `ob_menu` VALUES ('146', '文章分类', '144', '0', 'admin', 'article/articlecategorylist', '0', '0', 'fa-list', '1', '1492480359', '1492480342');
INSERT INTO `ob_menu` VALUES ('147', '文章分类编辑', '146', '0', 'admin', 'article/articlecategoryedit', '1', '0', '', '1', '1492485294', '1492485294');
INSERT INTO `ob_menu` VALUES ('148', '分类添加', '144', '0', 'admin', 'article/articlecategoryadd', '0', '0', 'fa-plus', '1', '1492486590', '1492486576');
INSERT INTO `ob_menu` VALUES ('149', '文章添加', '144', '0', 'admin', 'article/articleadd', '0', '0', 'fa-plus', '1', '1492518453', '1492518453');
INSERT INTO `ob_menu` VALUES ('150', '文章编辑', '145', '0', 'admin', 'article/articleedit', '1', '0', '', '1', '1492879589', '1492879589');
INSERT INTO `ob_menu` VALUES ('151', '插件安装', '143', '0', 'admin', 'addon/addoninstall', '1', '0', '', '1', '1492879763', '1492879763');
INSERT INTO `ob_menu` VALUES ('152', '插件卸载', '143', '0', 'admin', 'addon/addonuninstall', '1', '0', '', '1', '1492879789', '1492879789');
INSERT INTO `ob_menu` VALUES ('153', '文章删除', '145', '0', 'admin', 'article/articledel', '1', '0', '', '1', '1492879960', '1492879960');
INSERT INTO `ob_menu` VALUES ('154', '文章分类删除', '146', '0', 'admin', 'article/articlecategorydel', '1', '0', '', '1', '1492879995', '1492879995');
INSERT INTO `ob_menu` VALUES ('156', '驱动安装', '140', '0', 'admin', 'service/driverinstall', '1', '0', '', '1', '1502267009', '1502267009');
INSERT INTO `ob_menu` VALUES ('157', '接口管理', '0', '5', 'admin', 'api/index', '1', '0', 'fa fa-book', '0', '1599443305', '1504000434');
INSERT INTO `ob_menu` VALUES ('158', '分组管理', '157', '0', 'admin', 'api/apigrouplist', '0', '0', 'fa fa-fw fa-th-list', '1', '1504000977', '1504000723');
INSERT INTO `ob_menu` VALUES ('159', '分组添加', '157', '0', 'admin', 'api/apigroupadd', '0', '0', 'fa fa-fw fa-plus', '1', '1504004646', '1504004646');
INSERT INTO `ob_menu` VALUES ('160', '分组编辑', '157', '0', 'admin', 'api/apigroupedit', '1', '0', '', '1', '1504004710', '1504004710');
INSERT INTO `ob_menu` VALUES ('161', '分组删除', '157', '0', 'admin', 'api/apigroupdel', '1', '0', '', '1', '1504004732', '1504004732');
INSERT INTO `ob_menu` VALUES ('162', '接口列表', '157', '0', 'admin', 'api/apilist', '0', '0', 'fa fa-fw fa-th-list', '1', '1504172326', '1504172326');
INSERT INTO `ob_menu` VALUES ('163', '接口添加', '157', '0', 'admin', 'api/apiadd', '0', '0', 'fa fa-fw fa-plus', '1', '1504172352', '1504172352');
INSERT INTO `ob_menu` VALUES ('164', '接口编辑', '157', '0', 'admin', 'api/apiedit', '1', '0', '', '1', '1504172414', '1504172414');
INSERT INTO `ob_menu` VALUES ('165', '接口删除', '157', '0', 'admin', 'api/apidel', '1', '0', '', '1', '1504172435', '1504172435');
INSERT INTO `ob_menu` VALUES ('166', '优化维护', '0', '6', 'admin', 'maintain/index', '1', '0', 'fa-legal', '0', '1598838712', '1505387256');
INSERT INTO `ob_menu` VALUES ('168', '数据库', '166', '0', 'admin', 'maintain/database', '0', '0', 'fa-database', '1', '1505539670', '1505539394');
INSERT INTO `ob_menu` VALUES ('169', '数据备份', '168', '0', 'admin', 'database/databackup', '0', '0', 'fa-download', '1', '1506309900', '1505539428');
INSERT INTO `ob_menu` VALUES ('170', '数据还原', '168', '0', 'admin', 'database/datarestore', '0', '0', 'fa-exchange', '1', '1506309911', '1505539492');
INSERT INTO `ob_menu` VALUES ('171', '文件清理', '166', '0', 'admin', 'fileclean/cleanlist', '0', '0', 'fa-file', '1', '1506310152', '1505788517');
INSERT INTO `ob_menu` VALUES ('174', '行为日志', '166', '0', 'admin', 'log/loglist', '0', '1', 'fa-street-view', '1', '1507201516', '1507200836');
INSERT INTO `ob_menu` VALUES ('203', '友情链接', '68', '7', 'admin', 'blogroll/index', '0', '0', 'fa-link', '1', '1520505723', '1520505717');
INSERT INTO `ob_menu` VALUES ('204', '链接列表', '203', '0', 'admin', 'blogroll/blogrolllist', '0', '0', 'fa-th', '1', '1520505777', '1520505777');
INSERT INTO `ob_menu` VALUES ('205', '链接添加', '203', '0', 'admin', 'blogroll/blogrolladd', '0', '0', 'fa-plus', '1', '1520505826', '1520505826');
INSERT INTO `ob_menu` VALUES ('206', '链接编辑', '203', '0', 'admin', 'blogroll/blogrolledit', '1', '0', 'fa-edit', '1', '1520505863', '1520505863');
INSERT INTO `ob_menu` VALUES ('207', '链接删除', '203', '0', 'admin', 'blogroll/blogrolldel', '1', '0', 'fa-minus', '1', '1520505889', '1520505889');
INSERT INTO `ob_menu` VALUES ('208', '菜单排序', '75', '0', 'admin', 'menu/setsort', '1', '0', '', '1', '1520506696', '1520506696');
INSERT INTO `ob_menu` VALUES ('209', '会员编辑', '16', '2', 'admin', 'member/memberedit', '1', '0', 'fa-edit', '1', '1520505510', '0');
INSERT INTO `ob_menu` VALUES ('210', '修改密码', '1', '2', 'admin', 'member/editpassword', '1', '0', 'fa-edit', '1', '1520505510', '0');
INSERT INTO `ob_menu` VALUES ('211', '前言管理', '0', '7', 'admin', 'preface', '0', '0', 'fa-film', '1', '1598836111', '1598836104');
INSERT INTO `ob_menu` VALUES ('212', '首页展示图', '211', '0', 'admin', 'preface/getimg', '0', '0', 'fa-photo', '1', '0', '1598836149');
INSERT INTO `ob_menu` VALUES ('213', '序言内容', '211', '0', 'admin', 'preface/getcontent', '0', '0', 'fa-bar-chart-o', '1', '0', '1598836199');
INSERT INTO `ob_menu` VALUES ('214', '综述管理', '0', '9', 'admin', 'overview/index', '0', '0', 'fa-list-ol', '1', '0', '1598836367');
INSERT INTO `ob_menu` VALUES ('215', '探索管理', '0', '10', 'admin', 'explore/index', '0', '0', 'fa-file-text-o', '1', '0', '1598836418');
INSERT INTO `ob_menu` VALUES ('216', '项目精选', '0', '11', 'admin', 'product/index', '0', '0', 'fa-building-o', '1', '0', '1598836463');
INSERT INTO `ob_menu` VALUES ('217', '事迹风采', '0', '12', 'admin', 'dees/index', '0', '0', 'fa-battery-3', '1', '0', '1598836541');
INSERT INTO `ob_menu` VALUES ('218', '留言管理', '0', '13', 'admin', 'message/index', '0', '0', 'fa-commenting-o', '1', '0', '1598836572');
INSERT INTO `ob_menu` VALUES ('219', '分类名称图片设置', '214', '1', 'admin', 'overview/cates', '0', '0', 'fa-th-list', '1', '1599182516', '1598837386');
INSERT INTO `ob_menu` VALUES ('220', '探索分类列表', '215', '1', 'admin', 'explore/getlist', '0', '0', 'fa-th-list', '1', '1598838682', '1598838647');
INSERT INTO `ob_menu` VALUES ('221', '分类列表', '216', '1', 'admin', 'product/getlist', '0', '0', 'fa-table', '1', '0', '1598839492');
INSERT INTO `ob_menu` VALUES ('222', '留言结语', '218', '1', 'admin', 'message/contents', '0', '0', 'fa-reorder', '1', '1598841009', '1598839630');
INSERT INTO `ob_menu` VALUES ('223', '留言列表', '218', '2', 'admin', 'message/getmsglist', '0', '0', 'fa-list-ul', '1', '0', '1598839664');
INSERT INTO `ob_menu` VALUES ('224', '事迹分类设置', '217', '1', 'admin', 'deeds/getlist', '0', '0', 'fa-wifi', '1', '1599031903', '1598842558');
INSERT INTO `ob_menu` VALUES ('225', '深圳担当新闻管理', '214', '2', 'admin', 'overnews/index', '0', '0', 'fa-map-o', '1', '1599182210', '1598926694');
INSERT INTO `ob_menu` VALUES ('226', '项目精选介绍', '216', '2', 'admin', 'product/content', '0', '0', 'fa-file-text-o', '1', '0', '1598948136');
INSERT INTO `ob_menu` VALUES ('227', '事迹风采简介', '217', '2', 'admin', 'deeds/content', '0', '0', 'fa-photo', '1', '1599032460', '1598952666');
INSERT INTO `ob_menu` VALUES ('228', '历史回望管理', '215', '2', 'admin', 'explorehistory/index', '0', '0', 'fa-thumb-tack', '1', '0', '1599012358');
INSERT INTO `ob_menu` VALUES ('229', '探索新闻管理', '215', '3', 'admin', 'explorenews/index', '0', '0', 'fa-maxcdn', '1', '1599026604', '1599018425');
INSERT INTO `ob_menu` VALUES ('230', '扶贫作品设置', '217', '3', 'admin', 'works/index', '0', '0', 'fa-book', '1', '0', '1599032520');
INSERT INTO `ob_menu` VALUES ('231', '扶贫报道', '217', '4', 'admin', 'deedsnews', '0', '0', 'fa-align-right', '1', '1599644173', '1599032565');
INSERT INTO `ob_menu` VALUES ('232', '扶贫日记', '217', '5', 'admin', 'deedslog/index', '0', '0', 'fa-list', '1', '0', '1599032602');
INSERT INTO `ob_menu` VALUES ('233', '扶贫荣耀', '217', '6', 'admin', 'glory', '0', '0', 'fa-barcode', '1', '1599112646', '1599032651');
INSERT INTO `ob_menu` VALUES ('234', '扶贫荣耀简介', '233', '0', 'admin', 'glory/content', '0', '0', 'fa-bar-chart', '1', '0', '1599112523');
INSERT INTO `ob_menu` VALUES ('235', '扶贫荣耀分类设置', '233', '2', 'admin', 'glory/cates', '0', '0', 'fa-institution', '1', '1599119127', '1599112564');
INSERT INTO `ob_menu` VALUES ('236', '先进单位简介', '233', '4', 'admin', 'company/index', '0', '0', 'fa-desktop', '1', '1599124967', '1599112943');
INSERT INTO `ob_menu` VALUES ('237', '先进个人', '233', '5', 'admin', 'person/index', '0', '0', 'fa-check-square', '1', '1599114354', '1599112972');
INSERT INTO `ob_menu` VALUES ('238', '深圳帮扶简史', '214', '3', 'admin', 'bear/index', '0', '0', 'fa-gear', '1', '0', '1599182576');
INSERT INTO `ob_menu` VALUES ('239', '扶贫报道描述', '231', '1', 'admin', 'deedsnews/describe', '0', '0', 'fa-photo', '1', '0', '1599644207');
INSERT INTO `ob_menu` VALUES ('240', '扶贫报道新闻列表', '231', '2', 'admin', 'deedsnews/index', '0', '0', 'fa-eject', '1', '0', '1599644228');

-- ----------------------------
-- Table structure for ob_message
-- ----------------------------
DROP TABLE IF EXISTS `ob_message`;
CREATE TABLE `ob_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_id` int(10) unsigned DEFAULT NULL COMMENT '用户id',
  `user` varchar(50) NOT NULL COMMENT '用户名',
  `num` int(10) DEFAULT NULL COMMENT '点赞数量',
  `content` varchar(200) NOT NULL,
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=>ok 0=>delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of ob_message
-- ----------------------------

-- ----------------------------
-- Table structure for ob_message_content
-- ----------------------------
DROP TABLE IF EXISTS `ob_message_content`;
CREATE TABLE `ob_message_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='留言 结语表';

-- ----------------------------
-- Records of ob_message_content
-- ----------------------------
INSERT INTO `ob_message_content` VALUES ('1', '&lt;p&gt;\r\n	&lt;img src=&quot;http://api.map.baidu.com/staticimage?center=121.920988%2C31.170099&amp;zoom=9&amp;width=558&amp;height=360&amp;markers=121.920988%2C31.170099&amp;markerStyles=l%2CA&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	44dsdfsd8f898989\r\n&lt;/p&gt;', '1598863504');

-- ----------------------------
-- Table structure for ob_overnews
-- ----------------------------
DROP TABLE IF EXISTS `ob_overnews`;
CREATE TABLE `ob_overnews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL COMMENT '新闻类型别id',
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `title` varchar(50) NOT NULL COMMENT '新闻标题',
  `content` text COMMENT '新闻内容',
  `create_time` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1=>ok 0=>delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='综述管理新闻表';

-- ----------------------------
-- Records of ob_overnews
-- ----------------------------
INSERT INTO `ob_overnews` VALUES ('1', '1', '1', '2015年1月29日，习近平总书记在国家民委一份简报上批示', '2015年1月29日，习近平总书记在国家民委一份简报上批示2015年1月29日，习近平总书记在国家民委一份简报上批示', '1598952250', '0');
INSERT INTO `ob_overnews` VALUES ('2', '2', '10', '哈哈哈哈', '解决呢女女女扩军绿军扩军扩绿绿扩军', '1598952307', '1');
INSERT INTO `ob_overnews` VALUES ('3', '1', '1', '功夫兔', '付人工费郭德纲人体', '1599182479', '1');

-- ----------------------------
-- Table structure for ob_overview_cates
-- ----------------------------
DROP TABLE IF EXISTS `ob_overview_cates`;
CREATE TABLE `ob_overview_cates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgs` int(5) DEFAULT NULL COMMENT 'icon图',
  `title` varchar(40) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '1' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=ok 0=delete',
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='综述管理 分类表';

-- ----------------------------
-- Records of ob_overview_cates
-- ----------------------------
INSERT INTO `ob_overview_cates` VALUES ('1', '8', '深圳担当', '20', '1', '1598926169');
INSERT INTO `ob_overview_cates` VALUES ('2', '9', '深帮扶简史', '1', '1', '1598926199');

-- ----------------------------
-- Table structure for ob_picture
-- ----------------------------
DROP TABLE IF EXISTS `ob_picture`;
CREATE TABLE `ob_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '图片名称',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='图片表';

-- ----------------------------
-- Records of ob_picture
-- ----------------------------
INSERT INTO `ob_picture` VALUES ('1', '154634f62bdbb4c74bc6863c5a6ad3ec.png', '20200821/154634f62bdbb4c74bc6863c5a6ad3ec.png', '', '6637e0afd237654a34ea85c7fcbc9c8f6306fead', '1597981016', '0', '1');
INSERT INTO `ob_picture` VALUES ('2', 'f6502ff87da688e1b15145d4fd18db8d.png', '20200821/f6502ff87da688e1b15145d4fd18db8d.png', '', '6b07407e041bc8ce4ce7e909a9c8b666e0771b9d', '1597991202', '0', '1');
INSERT INTO `ob_picture` VALUES ('3', '3e9a092fe9140b952f8d60c3a1bca428.jpg', '20200831/3e9a092fe9140b952f8d60c3a1bca428.jpg', '', 'a3c580c663761ce09f57a21d97a584b2d2258076', '1598837048', '0', '1');
INSERT INTO `ob_picture` VALUES ('4', '1a48ac5c5fc1b77570c68a312b4afb71.jpg', '20200831/1a48ac5c5fc1b77570c68a312b4afb71.jpg', '', '9ddea180ab1853d6d9e97ac8a569262bf9d8d9d2', '1598842930', '0', '1');
INSERT INTO `ob_picture` VALUES ('5', 'e348332b6aa8715bc851b9c8046887ef.png', '20200901/e348332b6aa8715bc851b9c8046887ef.png', '', 'e4a4efc73bb9bedd910f73abcdb2d9291e2604c9', '1598922293', '0', '1');
INSERT INTO `ob_picture` VALUES ('6', '58c52731b6064aaf62cbb0531965e8da.png', '20200901/58c52731b6064aaf62cbb0531965e8da.png', '', '174041f6c605b7f2a1aeacf2be20a7dd531ca652', '1598925501', '0', '1');
INSERT INTO `ob_picture` VALUES ('7', 'e11a9bc1185b931810a693800aee8a03.png', '20200901/e11a9bc1185b931810a693800aee8a03.png', '', '9734961616d1e9829df8ab69fee97633be7010e5', '1598926032', '0', '1');
INSERT INTO `ob_picture` VALUES ('8', 'cfa4c9e8d745b7a29b9aa359fc3e1b43.png', '20200901/cfa4c9e8d745b7a29b9aa359fc3e1b43.png', '', '7f24cdc2e1c8a96477fe46e8d85a689b4a053076', '1598926125', '0', '1');
INSERT INTO `ob_picture` VALUES ('9', 'fd2090cbd10e0f0336a30ca40658fc8e.png', '20200901/fd2090cbd10e0f0336a30ca40658fc8e.png', '', '9da8cd04682910dd158902c0df71a2b288ebe320', '1598926198', '0', '1');
INSERT INTO `ob_picture` VALUES ('10', 'd93f77701618efa656ba958d8c98fad8.jpg', '20200901/d93f77701618efa656ba958d8c98fad8.jpg', '', 'e353ee0bea2da2dd22a4eb8ffaf8de7c386d459e', '1598947404', '0', '1');
INSERT INTO `ob_picture` VALUES ('11', 'a72824ab4ca4ee64d7609d79e0fb57e4.png', '20200901/a72824ab4ca4ee64d7609d79e0fb57e4.png', '', 'b690a0cb5d168b7ef8404904b5fed6f91c0abb13', '1598947411', '0', '1');
INSERT INTO `ob_picture` VALUES ('12', 'd5dcec279b9d740c307ead23b77c10b4.png', '20200901/d5dcec279b9d740c307ead23b77c10b4.png', '', '60d9cff2c608aa792b993e3338780da618ddaabb', '1598947732', '0', '1');
INSERT INTO `ob_picture` VALUES ('13', 'a0a18199dcc405feb932f534e96cc27c.png', '20200901/a0a18199dcc405feb932f534e96cc27c.png', '', '2dbf8b03582b62a9ba6eb0b81d85b4da4d6046cb', '1598948056', '0', '1');
INSERT INTO `ob_picture` VALUES ('14', 'd650e3acc43ba4164eda4b912c5997ee.png', '20200901/d650e3acc43ba4164eda4b912c5997ee.png', '', '65d110380433238ef8f0c0e19073de7440c5b434', '1598955833', '0', '1');
INSERT INTO `ob_picture` VALUES ('15', 'd962162e2c6cbd4900a65f20fd4d68f1.png', '20200902/d962162e2c6cbd4900a65f20fd4d68f1.png', '', 'c1f56d436867fcad2171b5005ab414887e3c0430', '1599014195', '0', '1');
INSERT INTO `ob_picture` VALUES ('16', '5da24e1249afd84f21cb6a220e951222.png', '20200902/5da24e1249afd84f21cb6a220e951222.png', '', '575c0f5c9ba637fee8d707ce06871cd2364dffaf', '1599014450', '0', '1');
INSERT INTO `ob_picture` VALUES ('17', '99afe0929047db2212a3bf0c4bc72024.jpg', '20200902/99afe0929047db2212a3bf0c4bc72024.jpg', '', '1410097ab258c687d81221ee65cf289d758e1b7d', '1599014474', '0', '1');
INSERT INTO `ob_picture` VALUES ('18', '07d9adc183085e98e644eeb3cbf79d0d.png', '20200902/07d9adc183085e98e644eeb3cbf79d0d.png', '', '57a50492e1974458ed1953e6e8b89640aa1e9dd1', '1599016767', '0', '1');
INSERT INTO `ob_picture` VALUES ('19', '029960c4f932ddba36d3ca72c3bffb13.png', '20200902/029960c4f932ddba36d3ca72c3bffb13.png', '', '7f6db95662f3400e5a0a662fab62d3d332283f60', '1599030394', '0', '1');
INSERT INTO `ob_picture` VALUES ('20', 'f93702bfcf4543fc137f20aecfaf8bf2.jpg', '20200902/f93702bfcf4543fc137f20aecfaf8bf2.jpg', '', '51ddb1ca69b825053752ebea8eee7ba068f06a94', '1599034976', '0', '1');
INSERT INTO `ob_picture` VALUES ('21', '7c2a5f71459bb0baa59faf3cb3a8c342.jpg', '20200902/7c2a5f71459bb0baa59faf3cb3a8c342.jpg', '', '0236af51b09a3f83aa47f449de19c67465d61642', '1599042822', '0', '1');
INSERT INTO `ob_picture` VALUES ('22', 'bd09f6c58e90160034b77dc49d73ecd2.png', '20200903/bd09f6c58e90160034b77dc49d73ecd2.png', '', '7a179ca30e82ddc64d10ab7bb0560d2ee236b7bc', '1599122813', '0', '1');
INSERT INTO `ob_picture` VALUES ('23', '63c837d59d8a285f310eee11d69409fa.png', '20200903/63c837d59d8a285f310eee11d69409fa.png', '', 'ad0b65d7fade8da4362de8d73083ba3f07c0fc87', '1599122959', '0', '1');
INSERT INTO `ob_picture` VALUES ('24', '327aebea9b3405d3671c8574736c3f04.png', '20200904/327aebea9b3405d3671c8574736c3f04.png', '', '7048a990b864463b92c44cbf4b05871e9aec3fae', '1599184275', '0', '1');
INSERT INTO `ob_picture` VALUES ('25', 'ea0aa731e1e1bbe2909bdf6b9e8a7b18.png', '20200904/ea0aa731e1e1bbe2909bdf6b9e8a7b18.png', '', '58a105d48d2822f45b2b8ea531898597f8f0e7e1', '1599185506', '0', '1');
INSERT INTO `ob_picture` VALUES ('26', 'b48213e08002ee5443aed39709330e86.png', '20200904/b48213e08002ee5443aed39709330e86.png', '', '389b861dbe120605e7af36326f6c99c54ebe70c8', '1599185761', '0', '1');
INSERT INTO `ob_picture` VALUES ('27', '06859088e3dc6adb230991545e33fe5e.jpg', '20200910/06859088e3dc6adb230991545e33fe5e.jpg', '', '65f4a61dec505841aa854f64a6aae219ba72a090', '1599700544', '0', '1');

-- ----------------------------
-- Table structure for ob_preface_content
-- ----------------------------
DROP TABLE IF EXISTS `ob_preface_content`;
CREATE TABLE `ob_preface_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ob_preface_content
-- ----------------------------
INSERT INTO `ob_preface_content` VALUES ('6', '&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;img src=&quot;/upload/file/20200910/88672c78405c2d520e6bba62303a5694.jpg&quot; alt=&quot;&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	哈哈哈哈沙发上芙蓉区分为法人。哈哈哈哈嗯嗯嗯5555\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;');

-- ----------------------------
-- Table structure for ob_preface_img
-- ----------------------------
DROP TABLE IF EXISTS `ob_preface_img`;
CREATE TABLE `ob_preface_img` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgs` int(5) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=ok 0=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='前言首页图';

-- ----------------------------
-- Records of ob_preface_img
-- ----------------------------
INSERT INTO `ob_preface_img` VALUES ('7', '27', '1599700564', '1');

-- ----------------------------
-- Table structure for ob_product
-- ----------------------------
DROP TABLE IF EXISTS `ob_product`;
CREATE TABLE `ob_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` varchar(100) NOT NULL COMMENT '地区名称',
  `p_imgs` varchar(200) DEFAULT NULL COMMENT '展示图',
  `sort` int(10) unsigned DEFAULT '1',
  `title` varchar(50) DEFAULT NULL COMMENT '新闻标题',
  `content` text COMMENT '新闻内容',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '1=ok 0=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='项目精选新闻表';

-- ----------------------------
-- Records of ob_product
-- ----------------------------
INSERT INTO `ob_product` VALUES ('1', '深圳', '11', '1', '汽车配件', '                                                惹我夫人夫人人人                                                ', '1598947508', '1');
INSERT INTO `ob_product` VALUES ('2', '贵州', '12', '20', '惠州1111', '反反复复付', '1598947735', '0');
INSERT INTO `ob_product` VALUES ('3', '江西', '13', '1', '江西是个好地方', '烦烦烦的地方大幅度的地方', '1598948060', '1');
INSERT INTO `ob_product` VALUES ('4', '湖南', '24', '1', '这里是添加', '更丰富吧吧吧吧吧吧吧吧吧吧吧吧吧吧吧吧吧吧吧吧测', '1599184290', '1');

-- ----------------------------
-- Table structure for ob_product_content
-- ----------------------------
DROP TABLE IF EXISTS `ob_product_content`;
CREATE TABLE `ob_product_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='项目精选介绍表';

-- ----------------------------
-- Records of ob_product_content
-- ----------------------------
INSERT INTO `ob_product_content` VALUES ('2', '五星级军军军军军军军的表单板块维科技56465465465654654');

-- ----------------------------
-- Table structure for ob_region
-- ----------------------------
DROP TABLE IF EXISTS `ob_region`;
CREATE TABLE `ob_region` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '地区名称',
  `level` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '深度',
  `upid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '父级',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=910007 DEFAULT CHARSET=utf8 COMMENT='省市县数据表';

-- ----------------------------
-- Records of ob_region
-- ----------------------------
INSERT INTO `ob_region` VALUES ('110000', '北京市', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('110100', '北京市', '2', '110000', '1');
INSERT INTO `ob_region` VALUES ('110101', '东城区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110102', '西城区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110103', '崇文区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110104', '宣武区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110105', '朝阳区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110106', '丰台区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110107', '石景山区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110108', '海淀区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110109', '门头沟区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110111', '房山区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110112', '通州区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110113', '顺义区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110114', '昌平区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110115', '大兴区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110116', '怀柔区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110117', '平谷区', '3', '110100', '1');
INSERT INTO `ob_region` VALUES ('110200', '县', '2', '110000', '1');
INSERT INTO `ob_region` VALUES ('110228', '密云县', '3', '110200', '1');
INSERT INTO `ob_region` VALUES ('110229', '延庆县', '3', '110200', '1');
INSERT INTO `ob_region` VALUES ('120000', '天津市', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('120100', '市辖区', '2', '120000', '1');
INSERT INTO `ob_region` VALUES ('120101', '和平区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120102', '河东区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120103', '河西区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120104', '南开区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120105', '河北区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120106', '红桥区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120107', '塘沽区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120108', '汉沽区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120109', '大港区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120110', '东丽区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120111', '西青区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120112', '津南区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120113', '北辰区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120114', '武清区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120115', '宝坻区', '3', '120100', '1');
INSERT INTO `ob_region` VALUES ('120200', '县', '2', '120000', '1');
INSERT INTO `ob_region` VALUES ('120221', '宁河县', '3', '120200', '1');
INSERT INTO `ob_region` VALUES ('120223', '静海县', '3', '120200', '1');
INSERT INTO `ob_region` VALUES ('120225', '蓟　县', '3', '120200', '1');
INSERT INTO `ob_region` VALUES ('130000', '河北省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('130100', '石家庄市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130101', '市辖区', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130102', '长安区', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130103', '桥东区', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130104', '桥西区', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130105', '新华区', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130107', '井陉矿区', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130108', '裕华区', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130121', '井陉县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130123', '正定县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130124', '栾城县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130125', '行唐县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130126', '灵寿县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130127', '高邑县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130128', '深泽县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130129', '赞皇县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130130', '无极县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130131', '平山县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130132', '元氏县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130133', '赵　县', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130181', '辛集市', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130182', '藁城市', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130183', '晋州市', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130184', '新乐市', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130185', '鹿泉市', '3', '130100', '1');
INSERT INTO `ob_region` VALUES ('130200', '唐山市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130201', '市辖区', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130202', '路南区', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130203', '路北区', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130204', '古冶区', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130205', '开平区', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130207', '丰南区', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130208', '丰润区', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130223', '滦　县', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130224', '滦南县', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130225', '乐亭县', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130227', '迁西县', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130229', '玉田县', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130230', '唐海县', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130281', '遵化市', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130283', '迁安市', '3', '130200', '1');
INSERT INTO `ob_region` VALUES ('130300', '秦皇岛市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130301', '市辖区', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130302', '海港区', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130303', '山海关区', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130304', '北戴河区', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130321', '青龙满族自治县', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130322', '昌黎县', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130323', '抚宁县', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130324', '卢龙县', '3', '130300', '1');
INSERT INTO `ob_region` VALUES ('130400', '邯郸市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130401', '市辖区', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130402', '邯山区', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130403', '丛台区', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130404', '复兴区', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130406', '峰峰矿区', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130421', '邯郸县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130423', '临漳县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130424', '成安县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130425', '大名县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130426', '涉　县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130427', '磁　县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130428', '肥乡县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130429', '永年县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130430', '邱　县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130431', '鸡泽县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130432', '广平县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130433', '馆陶县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130434', '魏　县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130435', '曲周县', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130481', '武安市', '3', '130400', '1');
INSERT INTO `ob_region` VALUES ('130500', '邢台市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130501', '市辖区', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130502', '桥东区', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130503', '桥西区', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130521', '邢台县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130522', '临城县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130523', '内丘县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130524', '柏乡县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130525', '隆尧县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130526', '任　县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130527', '南和县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130528', '宁晋县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130529', '巨鹿县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130530', '新河县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130531', '广宗县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130532', '平乡县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130533', '威　县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130534', '清河县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130535', '临西县', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130581', '南宫市', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130582', '沙河市', '3', '130500', '1');
INSERT INTO `ob_region` VALUES ('130600', '保定市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130601', '市辖区', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130602', '新市区', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130603', '北市区', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130604', '南市区', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130621', '满城县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130622', '清苑县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130623', '涞水县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130624', '阜平县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130625', '徐水县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130626', '定兴县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130627', '唐　县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130628', '高阳县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130629', '容城县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130630', '涞源县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130631', '望都县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130632', '安新县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130633', '易　县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130634', '曲阳县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130635', '蠡　县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130636', '顺平县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130637', '博野县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130638', '雄　县', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130681', '涿州市', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130682', '定州市', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130683', '安国市', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130684', '高碑店市', '3', '130600', '1');
INSERT INTO `ob_region` VALUES ('130700', '张家口市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130701', '市辖区', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130702', '桥东区', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130703', '桥西区', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130705', '宣化区', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130706', '下花园区', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130721', '宣化县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130722', '张北县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130723', '康保县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130724', '沽源县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130725', '尚义县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130726', '蔚　县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130727', '阳原县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130728', '怀安县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130729', '万全县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130730', '怀来县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130731', '涿鹿县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130732', '赤城县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130733', '崇礼县', '3', '130700', '1');
INSERT INTO `ob_region` VALUES ('130800', '承德市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130801', '市辖区', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130802', '双桥区', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130803', '双滦区', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130804', '鹰手营子矿区', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130821', '承德县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130822', '兴隆县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130823', '平泉县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130824', '滦平县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130825', '隆化县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130826', '丰宁满族自治县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130827', '宽城满族自治县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130828', '围场满族蒙古族自治县', '3', '130800', '1');
INSERT INTO `ob_region` VALUES ('130900', '沧州市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('130901', '市辖区', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130902', '新华区', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130903', '运河区', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130921', '沧　县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130922', '青　县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130923', '东光县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130924', '海兴县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130925', '盐山县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130926', '肃宁县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130927', '南皮县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130928', '吴桥县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130929', '献　县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130930', '孟村回族自治县', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130981', '泊头市', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130982', '任丘市', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130983', '黄骅市', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('130984', '河间市', '3', '130900', '1');
INSERT INTO `ob_region` VALUES ('131000', '廊坊市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('131001', '市辖区', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131002', '安次区', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131003', '广阳区', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131022', '固安县', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131023', '永清县', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131024', '香河县', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131025', '大城县', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131026', '文安县', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131028', '大厂回族自治县', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131081', '霸州市', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131082', '三河市', '3', '131000', '1');
INSERT INTO `ob_region` VALUES ('131100', '衡水市', '2', '130000', '1');
INSERT INTO `ob_region` VALUES ('131101', '市辖区', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131102', '桃城区', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131121', '枣强县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131122', '武邑县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131123', '武强县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131124', '饶阳县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131125', '安平县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131126', '故城县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131127', '景　县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131128', '阜城县', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131181', '冀州市', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('131182', '深州市', '3', '131100', '1');
INSERT INTO `ob_region` VALUES ('140000', '山西省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('140100', '太原市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140101', '市辖区', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140105', '小店区', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140106', '迎泽区', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140107', '杏花岭区', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140108', '尖草坪区', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140109', '万柏林区', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140110', '晋源区', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140121', '清徐县', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140122', '阳曲县', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140123', '娄烦县', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140181', '古交市', '3', '140100', '1');
INSERT INTO `ob_region` VALUES ('140200', '大同市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140201', '市辖区', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140202', '城　区', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140203', '矿　区', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140211', '南郊区', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140212', '新荣区', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140221', '阳高县', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140222', '天镇县', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140223', '广灵县', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140224', '灵丘县', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140225', '浑源县', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140226', '左云县', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140227', '大同县', '3', '140200', '1');
INSERT INTO `ob_region` VALUES ('140300', '阳泉市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140301', '市辖区', '3', '140300', '1');
INSERT INTO `ob_region` VALUES ('140302', '城　区', '3', '140300', '1');
INSERT INTO `ob_region` VALUES ('140303', '矿　区', '3', '140300', '1');
INSERT INTO `ob_region` VALUES ('140311', '郊　区', '3', '140300', '1');
INSERT INTO `ob_region` VALUES ('140321', '平定县', '3', '140300', '1');
INSERT INTO `ob_region` VALUES ('140322', '盂　县', '3', '140300', '1');
INSERT INTO `ob_region` VALUES ('140400', '长治市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140401', '市辖区', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140402', '城　区', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140411', '郊　区', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140421', '长治县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140423', '襄垣县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140424', '屯留县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140425', '平顺县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140426', '黎城县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140427', '壶关县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140428', '长子县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140429', '武乡县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140430', '沁　县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140431', '沁源县', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140481', '潞城市', '3', '140400', '1');
INSERT INTO `ob_region` VALUES ('140500', '晋城市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140501', '市辖区', '3', '140500', '1');
INSERT INTO `ob_region` VALUES ('140502', '城　区', '3', '140500', '1');
INSERT INTO `ob_region` VALUES ('140521', '沁水县', '3', '140500', '1');
INSERT INTO `ob_region` VALUES ('140522', '阳城县', '3', '140500', '1');
INSERT INTO `ob_region` VALUES ('140524', '陵川县', '3', '140500', '1');
INSERT INTO `ob_region` VALUES ('140525', '泽州县', '3', '140500', '1');
INSERT INTO `ob_region` VALUES ('140581', '高平市', '3', '140500', '1');
INSERT INTO `ob_region` VALUES ('140600', '朔州市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140601', '市辖区', '3', '140600', '1');
INSERT INTO `ob_region` VALUES ('140602', '朔城区', '3', '140600', '1');
INSERT INTO `ob_region` VALUES ('140603', '平鲁区', '3', '140600', '1');
INSERT INTO `ob_region` VALUES ('140621', '山阴县', '3', '140600', '1');
INSERT INTO `ob_region` VALUES ('140622', '应　县', '3', '140600', '1');
INSERT INTO `ob_region` VALUES ('140623', '右玉县', '3', '140600', '1');
INSERT INTO `ob_region` VALUES ('140624', '怀仁县', '3', '140600', '1');
INSERT INTO `ob_region` VALUES ('140700', '晋中市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140701', '市辖区', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140702', '榆次区', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140721', '榆社县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140722', '左权县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140723', '和顺县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140724', '昔阳县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140725', '寿阳县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140726', '太谷县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140727', '祁　县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140728', '平遥县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140729', '灵石县', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140781', '介休市', '3', '140700', '1');
INSERT INTO `ob_region` VALUES ('140800', '运城市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140801', '市辖区', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140802', '盐湖区', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140821', '临猗县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140822', '万荣县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140823', '闻喜县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140824', '稷山县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140825', '新绛县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140826', '绛　县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140827', '垣曲县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140828', '夏　县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140829', '平陆县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140830', '芮城县', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140881', '永济市', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140882', '河津市', '3', '140800', '1');
INSERT INTO `ob_region` VALUES ('140900', '忻州市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('140901', '市辖区', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140902', '忻府区', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140921', '定襄县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140922', '五台县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140923', '代　县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140924', '繁峙县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140925', '宁武县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140926', '静乐县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140927', '神池县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140928', '五寨县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140929', '岢岚县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140930', '河曲县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140931', '保德县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140932', '偏关县', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('140981', '原平市', '3', '140900', '1');
INSERT INTO `ob_region` VALUES ('141000', '临汾市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('141001', '市辖区', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141002', '尧都区', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141021', '曲沃县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141022', '翼城县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141023', '襄汾县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141024', '洪洞县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141025', '古　县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141026', '安泽县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141027', '浮山县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141028', '吉　县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141029', '乡宁县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141030', '大宁县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141031', '隰　县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141032', '永和县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141033', '蒲　县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141034', '汾西县', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141081', '侯马市', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141082', '霍州市', '3', '141000', '1');
INSERT INTO `ob_region` VALUES ('141100', '吕梁市', '2', '140000', '1');
INSERT INTO `ob_region` VALUES ('141101', '市辖区', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141102', '离石区', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141121', '文水县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141122', '交城县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141123', '兴　县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141124', '临　县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141125', '柳林县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141126', '石楼县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141127', '岚　县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141128', '方山县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141129', '中阳县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141130', '交口县', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141181', '孝义市', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('141182', '汾阳市', '3', '141100', '1');
INSERT INTO `ob_region` VALUES ('150000', '内蒙古', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('150100', '呼和浩特市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150101', '市辖区', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150102', '新城区', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150103', '回民区', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150104', '玉泉区', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150105', '赛罕区', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150121', '土默特左旗', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150122', '托克托县', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150123', '和林格尔县', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150124', '清水河县', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150125', '武川县', '3', '150100', '1');
INSERT INTO `ob_region` VALUES ('150200', '包头市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150201', '市辖区', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150202', '东河区', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150203', '昆都仑区', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150204', '青山区', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150205', '石拐区', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150206', '白云矿区', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150207', '九原区', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150221', '土默特右旗', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150222', '固阳县', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150223', '达尔罕茂明安联合旗', '3', '150200', '1');
INSERT INTO `ob_region` VALUES ('150300', '乌海市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150301', '市辖区', '3', '150300', '1');
INSERT INTO `ob_region` VALUES ('150302', '海勃湾区', '3', '150300', '1');
INSERT INTO `ob_region` VALUES ('150303', '海南区', '3', '150300', '1');
INSERT INTO `ob_region` VALUES ('150304', '乌达区', '3', '150300', '1');
INSERT INTO `ob_region` VALUES ('150400', '赤峰市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150401', '市辖区', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150402', '红山区', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150403', '元宝山区', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150404', '松山区', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150421', '阿鲁科尔沁旗', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150422', '巴林左旗', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150423', '巴林右旗', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150424', '林西县', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150425', '克什克腾旗', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150426', '翁牛特旗', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150428', '喀喇沁旗', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150429', '宁城县', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150430', '敖汉旗', '3', '150400', '1');
INSERT INTO `ob_region` VALUES ('150500', '通辽市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150501', '市辖区', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150502', '科尔沁区', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150521', '科尔沁左翼中旗', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150522', '科尔沁左翼后旗', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150523', '开鲁县', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150524', '库伦旗', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150525', '奈曼旗', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150526', '扎鲁特旗', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150581', '霍林郭勒市', '3', '150500', '1');
INSERT INTO `ob_region` VALUES ('150600', '鄂尔多斯市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150602', '东胜区', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150621', '达拉特旗', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150622', '准格尔旗', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150623', '鄂托克前旗', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150624', '鄂托克旗', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150625', '杭锦旗', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150626', '乌审旗', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150627', '伊金霍洛旗', '3', '150600', '1');
INSERT INTO `ob_region` VALUES ('150700', '呼伦贝尔市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150701', '市辖区', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150702', '海拉尔区', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150721', '阿荣旗', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150723', '鄂伦春自治旗', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150724', '鄂温克族自治旗', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150725', '陈巴尔虎旗', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150726', '新巴尔虎左旗', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150727', '新巴尔虎右旗', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150781', '满洲里市', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150782', '牙克石市', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150783', '扎兰屯市', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150784', '额尔古纳市', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150785', '根河市', '3', '150700', '1');
INSERT INTO `ob_region` VALUES ('150800', '巴彦淖尔市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150801', '市辖区', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150802', '临河区', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150821', '五原县', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150822', '磴口县', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150823', '乌拉特前旗', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150824', '乌拉特中旗', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150825', '乌拉特后旗', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150826', '杭锦后旗', '3', '150800', '1');
INSERT INTO `ob_region` VALUES ('150900', '乌兰察布市', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('150901', '市辖区', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150902', '集宁区', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150921', '卓资县', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150922', '化德县', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150923', '商都县', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150924', '兴和县', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150925', '凉城县', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150926', '察哈尔右翼前旗', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150927', '察哈尔右翼中旗', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150928', '察哈尔右翼后旗', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150929', '四子王旗', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('150981', '丰镇市', '3', '150900', '1');
INSERT INTO `ob_region` VALUES ('152200', '兴安盟', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('152201', '乌兰浩特市', '3', '152200', '1');
INSERT INTO `ob_region` VALUES ('152202', '阿尔山市', '3', '152200', '1');
INSERT INTO `ob_region` VALUES ('152221', '科尔沁右翼前旗', '3', '152200', '1');
INSERT INTO `ob_region` VALUES ('152222', '科尔沁右翼中旗', '3', '152200', '1');
INSERT INTO `ob_region` VALUES ('152223', '扎赉特旗', '3', '152200', '1');
INSERT INTO `ob_region` VALUES ('152224', '突泉县', '3', '152200', '1');
INSERT INTO `ob_region` VALUES ('152500', '锡林郭勒盟', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('152501', '二连浩特市', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152502', '锡林浩特市', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152522', '阿巴嘎旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152523', '苏尼特左旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152524', '苏尼特右旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152525', '东乌珠穆沁旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152526', '西乌珠穆沁旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152527', '太仆寺旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152528', '镶黄旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152529', '正镶白旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152530', '正蓝旗', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152531', '多伦县', '3', '152500', '1');
INSERT INTO `ob_region` VALUES ('152900', '阿拉善盟', '2', '150000', '1');
INSERT INTO `ob_region` VALUES ('152921', '阿拉善左旗', '3', '152900', '1');
INSERT INTO `ob_region` VALUES ('152922', '阿拉善右旗', '3', '152900', '1');
INSERT INTO `ob_region` VALUES ('152923', '额济纳旗', '3', '152900', '1');
INSERT INTO `ob_region` VALUES ('210000', '辽宁省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('210100', '沈阳市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210101', '市辖区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210102', '和平区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210103', '沈河区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210104', '大东区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210105', '皇姑区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210106', '铁西区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210111', '苏家屯区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210112', '东陵区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210113', '新城子区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210114', '于洪区', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210122', '辽中县', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210123', '康平县', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210124', '法库县', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210181', '新民市', '3', '210100', '1');
INSERT INTO `ob_region` VALUES ('210200', '大连市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210201', '市辖区', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210202', '中山区', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210203', '西岗区', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210204', '沙河口区', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210211', '甘井子区', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210212', '旅顺口区', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210213', '金州区', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210224', '长海县', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210281', '瓦房店市', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210282', '普兰店市', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210283', '庄河市', '3', '210200', '1');
INSERT INTO `ob_region` VALUES ('210300', '鞍山市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210301', '市辖区', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210302', '铁东区', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210303', '铁西区', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210304', '立山区', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210311', '千山区', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210321', '台安县', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210323', '岫岩满族自治县', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210381', '海城市', '3', '210300', '1');
INSERT INTO `ob_region` VALUES ('210400', '抚顺市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210401', '市辖区', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210402', '新抚区', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210403', '东洲区', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210404', '望花区', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210411', '顺城区', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210421', '抚顺县', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210422', '新宾满族自治县', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210423', '清原满族自治县', '3', '210400', '1');
INSERT INTO `ob_region` VALUES ('210500', '本溪市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210501', '市辖区', '3', '210500', '1');
INSERT INTO `ob_region` VALUES ('210502', '平山区', '3', '210500', '1');
INSERT INTO `ob_region` VALUES ('210503', '溪湖区', '3', '210500', '1');
INSERT INTO `ob_region` VALUES ('210504', '明山区', '3', '210500', '1');
INSERT INTO `ob_region` VALUES ('210505', '南芬区', '3', '210500', '1');
INSERT INTO `ob_region` VALUES ('210521', '本溪满族自治县', '3', '210500', '1');
INSERT INTO `ob_region` VALUES ('210522', '桓仁满族自治县', '3', '210500', '1');
INSERT INTO `ob_region` VALUES ('210600', '丹东市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210601', '市辖区', '3', '210600', '1');
INSERT INTO `ob_region` VALUES ('210602', '元宝区', '3', '210600', '1');
INSERT INTO `ob_region` VALUES ('210603', '振兴区', '3', '210600', '1');
INSERT INTO `ob_region` VALUES ('210604', '振安区', '3', '210600', '1');
INSERT INTO `ob_region` VALUES ('210624', '宽甸满族自治县', '3', '210600', '1');
INSERT INTO `ob_region` VALUES ('210681', '东港市', '3', '210600', '1');
INSERT INTO `ob_region` VALUES ('210682', '凤城市', '3', '210600', '1');
INSERT INTO `ob_region` VALUES ('210700', '锦州市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210701', '市辖区', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210702', '古塔区', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210703', '凌河区', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210711', '太和区', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210726', '黑山县', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210727', '义　县', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210781', '凌海市', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210782', '北宁市', '3', '210700', '1');
INSERT INTO `ob_region` VALUES ('210800', '营口市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210801', '市辖区', '3', '210800', '1');
INSERT INTO `ob_region` VALUES ('210802', '站前区', '3', '210800', '1');
INSERT INTO `ob_region` VALUES ('210803', '西市区', '3', '210800', '1');
INSERT INTO `ob_region` VALUES ('210804', '鲅鱼圈区', '3', '210800', '1');
INSERT INTO `ob_region` VALUES ('210811', '老边区', '3', '210800', '1');
INSERT INTO `ob_region` VALUES ('210881', '盖州市', '3', '210800', '1');
INSERT INTO `ob_region` VALUES ('210882', '大石桥市', '3', '210800', '1');
INSERT INTO `ob_region` VALUES ('210900', '阜新市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('210901', '市辖区', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('210902', '海州区', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('210903', '新邱区', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('210904', '太平区', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('210905', '清河门区', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('210911', '细河区', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('210921', '阜新蒙古族自治县', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('210922', '彰武县', '3', '210900', '1');
INSERT INTO `ob_region` VALUES ('211000', '辽阳市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('211001', '市辖区', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211002', '白塔区', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211003', '文圣区', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211004', '宏伟区', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211005', '弓长岭区', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211011', '太子河区', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211021', '辽阳县', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211081', '灯塔市', '3', '211000', '1');
INSERT INTO `ob_region` VALUES ('211100', '盘锦市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('211101', '市辖区', '3', '211100', '1');
INSERT INTO `ob_region` VALUES ('211102', '双台子区', '3', '211100', '1');
INSERT INTO `ob_region` VALUES ('211103', '兴隆台区', '3', '211100', '1');
INSERT INTO `ob_region` VALUES ('211121', '大洼县', '3', '211100', '1');
INSERT INTO `ob_region` VALUES ('211122', '盘山县', '3', '211100', '1');
INSERT INTO `ob_region` VALUES ('211200', '铁岭市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('211201', '市辖区', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211202', '银州区', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211204', '清河区', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211221', '铁岭县', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211223', '西丰县', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211224', '昌图县', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211281', '调兵山市', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211282', '开原市', '3', '211200', '1');
INSERT INTO `ob_region` VALUES ('211300', '朝阳市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('211301', '市辖区', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211302', '双塔区', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211303', '龙城区', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211321', '朝阳县', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211322', '建平县', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211381', '北票市', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211382', '凌源市', '3', '211300', '1');
INSERT INTO `ob_region` VALUES ('211400', '葫芦岛市', '2', '210000', '1');
INSERT INTO `ob_region` VALUES ('211401', '市辖区', '3', '211400', '1');
INSERT INTO `ob_region` VALUES ('211402', '连山区', '3', '211400', '1');
INSERT INTO `ob_region` VALUES ('211403', '龙港区', '3', '211400', '1');
INSERT INTO `ob_region` VALUES ('211404', '南票区', '3', '211400', '1');
INSERT INTO `ob_region` VALUES ('211421', '绥中县', '3', '211400', '1');
INSERT INTO `ob_region` VALUES ('211422', '建昌县', '3', '211400', '1');
INSERT INTO `ob_region` VALUES ('211481', '兴城市', '3', '211400', '1');
INSERT INTO `ob_region` VALUES ('220000', '吉林省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('220100', '长春市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220101', '市辖区', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220102', '南关区', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220103', '宽城区', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220104', '朝阳区', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220105', '二道区', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220106', '绿园区', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220112', '双阳区', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220122', '农安县', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220181', '九台市', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220182', '榆树市', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220183', '德惠市', '3', '220100', '1');
INSERT INTO `ob_region` VALUES ('220200', '吉林市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220201', '市辖区', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220202', '昌邑区', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220203', '龙潭区', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220204', '船营区', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220211', '丰满区', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220221', '永吉县', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220281', '蛟河市', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220282', '桦甸市', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220283', '舒兰市', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220284', '磐石市', '3', '220200', '1');
INSERT INTO `ob_region` VALUES ('220300', '四平市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220301', '市辖区', '3', '220300', '1');
INSERT INTO `ob_region` VALUES ('220302', '铁西区', '3', '220300', '1');
INSERT INTO `ob_region` VALUES ('220303', '铁东区', '3', '220300', '1');
INSERT INTO `ob_region` VALUES ('220322', '梨树县', '3', '220300', '1');
INSERT INTO `ob_region` VALUES ('220323', '伊通满族自治县', '3', '220300', '1');
INSERT INTO `ob_region` VALUES ('220381', '公主岭市', '3', '220300', '1');
INSERT INTO `ob_region` VALUES ('220382', '双辽市', '3', '220300', '1');
INSERT INTO `ob_region` VALUES ('220400', '辽源市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220401', '市辖区', '3', '220400', '1');
INSERT INTO `ob_region` VALUES ('220402', '龙山区', '3', '220400', '1');
INSERT INTO `ob_region` VALUES ('220403', '西安区', '3', '220400', '1');
INSERT INTO `ob_region` VALUES ('220421', '东丰县', '3', '220400', '1');
INSERT INTO `ob_region` VALUES ('220422', '东辽县', '3', '220400', '1');
INSERT INTO `ob_region` VALUES ('220500', '通化市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220501', '市辖区', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220502', '东昌区', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220503', '二道江区', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220521', '通化县', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220523', '辉南县', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220524', '柳河县', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220581', '梅河口市', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220582', '集安市', '3', '220500', '1');
INSERT INTO `ob_region` VALUES ('220600', '白山市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220601', '市辖区', '3', '220600', '1');
INSERT INTO `ob_region` VALUES ('220602', '八道江区', '3', '220600', '1');
INSERT INTO `ob_region` VALUES ('220621', '抚松县', '3', '220600', '1');
INSERT INTO `ob_region` VALUES ('220622', '靖宇县', '3', '220600', '1');
INSERT INTO `ob_region` VALUES ('220623', '长白朝鲜族自治县', '3', '220600', '1');
INSERT INTO `ob_region` VALUES ('220625', '江源县', '3', '220600', '1');
INSERT INTO `ob_region` VALUES ('220681', '临江市', '3', '220600', '1');
INSERT INTO `ob_region` VALUES ('220700', '松原市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220701', '市辖区', '3', '220700', '1');
INSERT INTO `ob_region` VALUES ('220702', '宁江区', '3', '220700', '1');
INSERT INTO `ob_region` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '3', '220700', '1');
INSERT INTO `ob_region` VALUES ('220722', '长岭县', '3', '220700', '1');
INSERT INTO `ob_region` VALUES ('220723', '乾安县', '3', '220700', '1');
INSERT INTO `ob_region` VALUES ('220724', '扶余县', '3', '220700', '1');
INSERT INTO `ob_region` VALUES ('220800', '白城市', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('220801', '市辖区', '3', '220800', '1');
INSERT INTO `ob_region` VALUES ('220802', '洮北区', '3', '220800', '1');
INSERT INTO `ob_region` VALUES ('220821', '镇赉县', '3', '220800', '1');
INSERT INTO `ob_region` VALUES ('220822', '通榆县', '3', '220800', '1');
INSERT INTO `ob_region` VALUES ('220881', '洮南市', '3', '220800', '1');
INSERT INTO `ob_region` VALUES ('220882', '大安市', '3', '220800', '1');
INSERT INTO `ob_region` VALUES ('222400', '延边朝鲜族自治州', '2', '220000', '1');
INSERT INTO `ob_region` VALUES ('222401', '延吉市', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('222402', '图们市', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('222403', '敦化市', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('222404', '珲春市', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('222405', '龙井市', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('222406', '和龙市', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('222424', '汪清县', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('222426', '安图县', '3', '222400', '1');
INSERT INTO `ob_region` VALUES ('230000', '黑龙江', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('230100', '哈尔滨市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230101', '市辖区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230102', '道里区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230103', '南岗区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230104', '道外区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230106', '香坊区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230107', '动力区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230108', '平房区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230109', '松北区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230111', '呼兰区', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230123', '依兰县', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230124', '方正县', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230125', '宾　县', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230126', '巴彦县', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230127', '木兰县', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230128', '通河县', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230129', '延寿县', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230181', '阿城市', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230182', '双城市', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230183', '尚志市', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230184', '五常市', '3', '230100', '1');
INSERT INTO `ob_region` VALUES ('230200', '齐齐哈尔市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230201', '市辖区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230202', '龙沙区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230203', '建华区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230204', '铁锋区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230205', '昂昂溪区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230206', '富拉尔基区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230207', '碾子山区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230208', '梅里斯达斡尔族区', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230221', '龙江县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230223', '依安县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230224', '泰来县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230225', '甘南县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230227', '富裕县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230229', '克山县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230230', '克东县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230231', '拜泉县', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230281', '讷河市', '3', '230200', '1');
INSERT INTO `ob_region` VALUES ('230300', '鸡西市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230301', '市辖区', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230302', '鸡冠区', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230303', '恒山区', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230304', '滴道区', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230305', '梨树区', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230306', '城子河区', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230307', '麻山区', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230321', '鸡东县', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230381', '虎林市', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230382', '密山市', '3', '230300', '1');
INSERT INTO `ob_region` VALUES ('230400', '鹤岗市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230401', '市辖区', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230402', '向阳区', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230403', '工农区', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230404', '南山区', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230405', '兴安区', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230406', '东山区', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230407', '兴山区', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230421', '萝北县', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230422', '绥滨县', '3', '230400', '1');
INSERT INTO `ob_region` VALUES ('230500', '双鸭山市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230501', '市辖区', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230502', '尖山区', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230503', '岭东区', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230505', '四方台区', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230506', '宝山区', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230521', '集贤县', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230522', '友谊县', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230523', '宝清县', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230524', '饶河县', '3', '230500', '1');
INSERT INTO `ob_region` VALUES ('230600', '大庆市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230601', '市辖区', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230602', '萨尔图区', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230603', '龙凤区', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230604', '让胡路区', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230605', '红岗区', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230606', '大同区', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230621', '肇州县', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230622', '肇源县', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230623', '林甸县', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230624', '杜尔伯特蒙古族自治县', '3', '230600', '1');
INSERT INTO `ob_region` VALUES ('230700', '伊春市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230701', '市辖区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230702', '伊春区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230703', '南岔区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230704', '友好区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230705', '西林区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230706', '翠峦区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230707', '新青区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230708', '美溪区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230709', '金山屯区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230710', '五营区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230711', '乌马河区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230712', '汤旺河区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230713', '带岭区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230714', '乌伊岭区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230715', '红星区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230716', '上甘岭区', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230722', '嘉荫县', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230781', '铁力市', '3', '230700', '1');
INSERT INTO `ob_region` VALUES ('230800', '佳木斯市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230801', '市辖区', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230802', '永红区', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230803', '向阳区', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230804', '前进区', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230805', '东风区', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230811', '郊　区', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230822', '桦南县', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230826', '桦川县', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230828', '汤原县', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230833', '抚远县', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230881', '同江市', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230882', '富锦市', '3', '230800', '1');
INSERT INTO `ob_region` VALUES ('230900', '七台河市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('230901', '市辖区', '3', '230900', '1');
INSERT INTO `ob_region` VALUES ('230902', '新兴区', '3', '230900', '1');
INSERT INTO `ob_region` VALUES ('230903', '桃山区', '3', '230900', '1');
INSERT INTO `ob_region` VALUES ('230904', '茄子河区', '3', '230900', '1');
INSERT INTO `ob_region` VALUES ('230921', '勃利县', '3', '230900', '1');
INSERT INTO `ob_region` VALUES ('231000', '牡丹江市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('231001', '市辖区', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231002', '东安区', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231003', '阳明区', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231004', '爱民区', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231005', '西安区', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231024', '东宁县', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231025', '林口县', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231081', '绥芬河市', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231083', '海林市', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231084', '宁安市', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231085', '穆棱市', '3', '231000', '1');
INSERT INTO `ob_region` VALUES ('231100', '黑河市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('231101', '市辖区', '3', '231100', '1');
INSERT INTO `ob_region` VALUES ('231102', '爱辉区', '3', '231100', '1');
INSERT INTO `ob_region` VALUES ('231121', '嫩江县', '3', '231100', '1');
INSERT INTO `ob_region` VALUES ('231123', '逊克县', '3', '231100', '1');
INSERT INTO `ob_region` VALUES ('231124', '孙吴县', '3', '231100', '1');
INSERT INTO `ob_region` VALUES ('231181', '北安市', '3', '231100', '1');
INSERT INTO `ob_region` VALUES ('231182', '五大连池市', '3', '231100', '1');
INSERT INTO `ob_region` VALUES ('231200', '绥化市', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('231201', '市辖区', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231202', '北林区', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231221', '望奎县', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231222', '兰西县', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231223', '青冈县', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231224', '庆安县', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231225', '明水县', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231226', '绥棱县', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231281', '安达市', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231282', '肇东市', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('231283', '海伦市', '3', '231200', '1');
INSERT INTO `ob_region` VALUES ('232700', '大兴安岭地区', '2', '230000', '1');
INSERT INTO `ob_region` VALUES ('232721', '呼玛县', '3', '232700', '1');
INSERT INTO `ob_region` VALUES ('232722', '塔河县', '3', '232700', '1');
INSERT INTO `ob_region` VALUES ('232723', '漠河县', '3', '232700', '1');
INSERT INTO `ob_region` VALUES ('310000', '上海市', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('310100', '市辖区', '2', '310000', '1');
INSERT INTO `ob_region` VALUES ('310101', '黄浦区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310103', '卢湾区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310104', '徐汇区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310105', '长宁区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310106', '静安区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310107', '普陀区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310108', '闸北区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310109', '虹口区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310110', '杨浦区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310112', '闵行区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310113', '宝山区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310114', '嘉定区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310115', '浦东新区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310116', '金山区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310117', '松江区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310118', '青浦区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310119', '南汇区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310120', '奉贤区', '3', '310100', '1');
INSERT INTO `ob_region` VALUES ('310200', '县', '2', '310000', '1');
INSERT INTO `ob_region` VALUES ('310230', '崇明县', '3', '310200', '1');
INSERT INTO `ob_region` VALUES ('320000', '江苏省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('320100', '南京市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320101', '市辖区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320102', '玄武区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320103', '白下区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320104', '秦淮区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320105', '建邺区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320106', '鼓楼区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320107', '下关区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320111', '浦口区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320113', '栖霞区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320114', '雨花台区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320115', '江宁区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320116', '六合区', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320124', '溧水县', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320125', '高淳县', '3', '320100', '1');
INSERT INTO `ob_region` VALUES ('320200', '无锡市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320201', '市辖区', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320202', '崇安区', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320203', '南长区', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320204', '北塘区', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320205', '锡山区', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320206', '惠山区', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320211', '滨湖区', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320281', '江阴市', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320282', '宜兴市', '3', '320200', '1');
INSERT INTO `ob_region` VALUES ('320300', '徐州市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320301', '市辖区', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320302', '鼓楼区', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320303', '云龙区', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320304', '九里区', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320305', '贾汪区', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320311', '泉山区', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320321', '丰　县', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320322', '沛　县', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320323', '铜山县', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320324', '睢宁县', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320381', '新沂市', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320382', '邳州市', '3', '320300', '1');
INSERT INTO `ob_region` VALUES ('320400', '常州市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320401', '市辖区', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320402', '天宁区', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320404', '钟楼区', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320405', '戚墅堰区', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320411', '新北区', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320412', '武进区', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320481', '溧阳市', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320482', '金坛市', '3', '320400', '1');
INSERT INTO `ob_region` VALUES ('320500', '苏州市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320501', '市辖区', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320502', '沧浪区', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320503', '平江区', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320504', '金阊区', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320505', '虎丘区', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320506', '吴中区', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320507', '相城区', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320581', '常熟市', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320582', '张家港市', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320583', '昆山市', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320584', '吴江市', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320585', '太仓市', '3', '320500', '1');
INSERT INTO `ob_region` VALUES ('320600', '南通市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320601', '市辖区', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320602', '崇川区', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320611', '港闸区', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320621', '海安县', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320623', '如东县', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320681', '启东市', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320682', '如皋市', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320683', '通州市', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320684', '海门市', '3', '320600', '1');
INSERT INTO `ob_region` VALUES ('320700', '连云港市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320701', '市辖区', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320703', '连云区', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320705', '新浦区', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320706', '海州区', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320721', '赣榆县', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320722', '东海县', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320723', '灌云县', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320724', '灌南县', '3', '320700', '1');
INSERT INTO `ob_region` VALUES ('320800', '淮安市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320801', '市辖区', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320802', '清河区', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320803', '楚州区', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320804', '淮阴区', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320811', '清浦区', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320826', '涟水县', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320829', '洪泽县', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320830', '盱眙县', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320831', '金湖县', '3', '320800', '1');
INSERT INTO `ob_region` VALUES ('320900', '盐城市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('320901', '市辖区', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320902', '亭湖区', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320903', '盐都区', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320921', '响水县', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320922', '滨海县', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320923', '阜宁县', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320924', '射阳县', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320925', '建湖县', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320981', '东台市', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('320982', '大丰市', '3', '320900', '1');
INSERT INTO `ob_region` VALUES ('321000', '扬州市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('321001', '市辖区', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321002', '广陵区', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321003', '邗江区', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321011', '郊　区', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321023', '宝应县', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321081', '仪征市', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321084', '高邮市', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321088', '江都市', '3', '321000', '1');
INSERT INTO `ob_region` VALUES ('321100', '镇江市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('321101', '市辖区', '3', '321100', '1');
INSERT INTO `ob_region` VALUES ('321102', '京口区', '3', '321100', '1');
INSERT INTO `ob_region` VALUES ('321111', '润州区', '3', '321100', '1');
INSERT INTO `ob_region` VALUES ('321112', '丹徒区', '3', '321100', '1');
INSERT INTO `ob_region` VALUES ('321181', '丹阳市', '3', '321100', '1');
INSERT INTO `ob_region` VALUES ('321182', '扬中市', '3', '321100', '1');
INSERT INTO `ob_region` VALUES ('321183', '句容市', '3', '321100', '1');
INSERT INTO `ob_region` VALUES ('321200', '泰州市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('321201', '市辖区', '3', '321200', '1');
INSERT INTO `ob_region` VALUES ('321202', '海陵区', '3', '321200', '1');
INSERT INTO `ob_region` VALUES ('321203', '高港区', '3', '321200', '1');
INSERT INTO `ob_region` VALUES ('321281', '兴化市', '3', '321200', '1');
INSERT INTO `ob_region` VALUES ('321282', '靖江市', '3', '321200', '1');
INSERT INTO `ob_region` VALUES ('321283', '泰兴市', '3', '321200', '1');
INSERT INTO `ob_region` VALUES ('321284', '姜堰市', '3', '321200', '1');
INSERT INTO `ob_region` VALUES ('321300', '宿迁市', '2', '320000', '1');
INSERT INTO `ob_region` VALUES ('321301', '市辖区', '3', '321300', '1');
INSERT INTO `ob_region` VALUES ('321302', '宿城区', '3', '321300', '1');
INSERT INTO `ob_region` VALUES ('321311', '宿豫区', '3', '321300', '1');
INSERT INTO `ob_region` VALUES ('321322', '沭阳县', '3', '321300', '1');
INSERT INTO `ob_region` VALUES ('321323', '泗阳县', '3', '321300', '1');
INSERT INTO `ob_region` VALUES ('321324', '泗洪县', '3', '321300', '1');
INSERT INTO `ob_region` VALUES ('330000', '浙江省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('330100', '杭州市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330101', '市辖区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330102', '上城区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330103', '下城区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330104', '江干区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330105', '拱墅区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330106', '西湖区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330108', '滨江区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330109', '萧山区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330110', '余杭区', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330122', '桐庐县', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330127', '淳安县', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330182', '建德市', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330183', '富阳市', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330185', '临安市', '3', '330100', '1');
INSERT INTO `ob_region` VALUES ('330200', '宁波市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330201', '市辖区', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330203', '海曙区', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330204', '江东区', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330205', '江北区', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330206', '北仑区', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330211', '镇海区', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330212', '鄞州区', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330225', '象山县', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330226', '宁海县', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330281', '余姚市', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330282', '慈溪市', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330283', '奉化市', '3', '330200', '1');
INSERT INTO `ob_region` VALUES ('330300', '温州市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330301', '市辖区', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330302', '鹿城区', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330303', '龙湾区', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330304', '瓯海区', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330322', '洞头县', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330324', '永嘉县', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330326', '平阳县', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330327', '苍南县', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330328', '文成县', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330329', '泰顺县', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330381', '瑞安市', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330382', '乐清市', '3', '330300', '1');
INSERT INTO `ob_region` VALUES ('330400', '嘉兴市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330401', '市辖区', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330402', '秀城区', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330411', '秀洲区', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330421', '嘉善县', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330424', '海盐县', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330481', '海宁市', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330482', '平湖市', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330483', '桐乡市', '3', '330400', '1');
INSERT INTO `ob_region` VALUES ('330500', '湖州市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330501', '市辖区', '3', '330500', '1');
INSERT INTO `ob_region` VALUES ('330502', '吴兴区', '3', '330500', '1');
INSERT INTO `ob_region` VALUES ('330503', '南浔区', '3', '330500', '1');
INSERT INTO `ob_region` VALUES ('330521', '德清县', '3', '330500', '1');
INSERT INTO `ob_region` VALUES ('330522', '长兴县', '3', '330500', '1');
INSERT INTO `ob_region` VALUES ('330523', '安吉县', '3', '330500', '1');
INSERT INTO `ob_region` VALUES ('330600', '绍兴市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330601', '市辖区', '3', '330600', '1');
INSERT INTO `ob_region` VALUES ('330602', '越城区', '3', '330600', '1');
INSERT INTO `ob_region` VALUES ('330621', '绍兴县', '3', '330600', '1');
INSERT INTO `ob_region` VALUES ('330624', '新昌县', '3', '330600', '1');
INSERT INTO `ob_region` VALUES ('330681', '诸暨市', '3', '330600', '1');
INSERT INTO `ob_region` VALUES ('330682', '上虞市', '3', '330600', '1');
INSERT INTO `ob_region` VALUES ('330683', '嵊州市', '3', '330600', '1');
INSERT INTO `ob_region` VALUES ('330700', '金华市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330701', '市辖区', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330702', '婺城区', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330703', '金东区', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330723', '武义县', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330726', '浦江县', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330727', '磐安县', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330781', '兰溪市', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330782', '义乌市', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330783', '东阳市', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330784', '永康市', '3', '330700', '1');
INSERT INTO `ob_region` VALUES ('330800', '衢州市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330801', '市辖区', '3', '330800', '1');
INSERT INTO `ob_region` VALUES ('330802', '柯城区', '3', '330800', '1');
INSERT INTO `ob_region` VALUES ('330803', '衢江区', '3', '330800', '1');
INSERT INTO `ob_region` VALUES ('330822', '常山县', '3', '330800', '1');
INSERT INTO `ob_region` VALUES ('330824', '开化县', '3', '330800', '1');
INSERT INTO `ob_region` VALUES ('330825', '龙游县', '3', '330800', '1');
INSERT INTO `ob_region` VALUES ('330881', '江山市', '3', '330800', '1');
INSERT INTO `ob_region` VALUES ('330900', '舟山市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('330901', '市辖区', '3', '330900', '1');
INSERT INTO `ob_region` VALUES ('330902', '定海区', '3', '330900', '1');
INSERT INTO `ob_region` VALUES ('330903', '普陀区', '3', '330900', '1');
INSERT INTO `ob_region` VALUES ('330921', '岱山县', '3', '330900', '1');
INSERT INTO `ob_region` VALUES ('330922', '嵊泗县', '3', '330900', '1');
INSERT INTO `ob_region` VALUES ('331000', '台州市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('331001', '市辖区', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331002', '椒江区', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331003', '黄岩区', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331004', '路桥区', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331021', '玉环县', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331022', '三门县', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331023', '天台县', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331024', '仙居县', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331081', '温岭市', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331082', '临海市', '3', '331000', '1');
INSERT INTO `ob_region` VALUES ('331100', '丽水市', '2', '330000', '1');
INSERT INTO `ob_region` VALUES ('331101', '市辖区', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331102', '莲都区', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331121', '青田县', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331122', '缙云县', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331123', '遂昌县', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331124', '松阳县', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331125', '云和县', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331126', '庆元县', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331127', '景宁畲族自治县', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('331181', '龙泉市', '3', '331100', '1');
INSERT INTO `ob_region` VALUES ('340000', '安徽省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('340100', '合肥市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340101', '市辖区', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340102', '瑶海区', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340103', '庐阳区', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340104', '蜀山区', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340111', '包河区', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340121', '长丰县', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340122', '肥东县', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340123', '肥西县', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('340200', '芜湖市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340201', '市辖区', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340202', '镜湖区', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340203', '马塘区', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340204', '新芜区', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340207', '鸠江区', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340221', '芜湖县', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340222', '繁昌县', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340223', '南陵县', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('340300', '蚌埠市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340301', '市辖区', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340302', '龙子湖区', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340303', '蚌山区', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340304', '禹会区', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340311', '淮上区', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340321', '怀远县', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340322', '五河县', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340323', '固镇县', '3', '340300', '1');
INSERT INTO `ob_region` VALUES ('340400', '淮南市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340401', '市辖区', '3', '340400', '1');
INSERT INTO `ob_region` VALUES ('340402', '大通区', '3', '340400', '1');
INSERT INTO `ob_region` VALUES ('340403', '田家庵区', '3', '340400', '1');
INSERT INTO `ob_region` VALUES ('340404', '谢家集区', '3', '340400', '1');
INSERT INTO `ob_region` VALUES ('340405', '八公山区', '3', '340400', '1');
INSERT INTO `ob_region` VALUES ('340406', '潘集区', '3', '340400', '1');
INSERT INTO `ob_region` VALUES ('340421', '凤台县', '3', '340400', '1');
INSERT INTO `ob_region` VALUES ('340500', '马鞍山市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340501', '市辖区', '3', '340500', '1');
INSERT INTO `ob_region` VALUES ('340502', '金家庄区', '3', '340500', '1');
INSERT INTO `ob_region` VALUES ('340503', '花山区', '3', '340500', '1');
INSERT INTO `ob_region` VALUES ('340504', '雨山区', '3', '340500', '1');
INSERT INTO `ob_region` VALUES ('340521', '当涂县', '3', '340500', '1');
INSERT INTO `ob_region` VALUES ('340600', '淮北市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340601', '市辖区', '3', '340600', '1');
INSERT INTO `ob_region` VALUES ('340602', '杜集区', '3', '340600', '1');
INSERT INTO `ob_region` VALUES ('340603', '相山区', '3', '340600', '1');
INSERT INTO `ob_region` VALUES ('340604', '烈山区', '3', '340600', '1');
INSERT INTO `ob_region` VALUES ('340621', '濉溪县', '3', '340600', '1');
INSERT INTO `ob_region` VALUES ('340700', '铜陵市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340701', '市辖区', '3', '340700', '1');
INSERT INTO `ob_region` VALUES ('340702', '铜官山区', '3', '340700', '1');
INSERT INTO `ob_region` VALUES ('340703', '狮子山区', '3', '340700', '1');
INSERT INTO `ob_region` VALUES ('340711', '郊　区', '3', '340700', '1');
INSERT INTO `ob_region` VALUES ('340721', '铜陵县', '3', '340700', '1');
INSERT INTO `ob_region` VALUES ('340800', '安庆市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('340801', '市辖区', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340802', '迎江区', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340803', '大观区', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340811', '郊　区', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340822', '怀宁县', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340823', '枞阳县', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340824', '潜山县', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340825', '太湖县', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340826', '宿松县', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340827', '望江县', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340828', '岳西县', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('340881', '桐城市', '3', '340800', '1');
INSERT INTO `ob_region` VALUES ('341000', '黄山市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341001', '市辖区', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341002', '屯溪区', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341003', '黄山区', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341004', '徽州区', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341021', '歙　县', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341022', '休宁县', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341023', '黟　县', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341024', '祁门县', '3', '341000', '1');
INSERT INTO `ob_region` VALUES ('341100', '滁州市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341101', '市辖区', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341102', '琅琊区', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341103', '南谯区', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341122', '来安县', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341124', '全椒县', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341125', '定远县', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341126', '凤阳县', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341181', '天长市', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341182', '明光市', '3', '341100', '1');
INSERT INTO `ob_region` VALUES ('341200', '阜阳市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341201', '市辖区', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341202', '颍州区', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341203', '颍东区', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341204', '颍泉区', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341221', '临泉县', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341222', '太和县', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341225', '阜南县', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341226', '颍上县', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341282', '界首市', '3', '341200', '1');
INSERT INTO `ob_region` VALUES ('341300', '宿州市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341301', '市辖区', '3', '341300', '1');
INSERT INTO `ob_region` VALUES ('341302', '墉桥区', '3', '341300', '1');
INSERT INTO `ob_region` VALUES ('341321', '砀山县', '3', '341300', '1');
INSERT INTO `ob_region` VALUES ('341322', '萧　县', '3', '341300', '1');
INSERT INTO `ob_region` VALUES ('341323', '灵璧县', '3', '341300', '1');
INSERT INTO `ob_region` VALUES ('341324', '泗　县', '3', '341300', '1');
INSERT INTO `ob_region` VALUES ('341401', '庐江县', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('341402', '巢湖市', '3', '340100', '1');
INSERT INTO `ob_region` VALUES ('341422', '无为县', '3', '340200', '1');
INSERT INTO `ob_region` VALUES ('341423', '含山县', '3', '340500', '1');
INSERT INTO `ob_region` VALUES ('341424', '和　县', '3', '340500', '1');
INSERT INTO `ob_region` VALUES ('341500', '六安市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341501', '市辖区', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341502', '金安区', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341503', '裕安区', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341521', '寿　县', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341522', '霍邱县', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341523', '舒城县', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341524', '金寨县', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341525', '霍山县', '3', '341500', '1');
INSERT INTO `ob_region` VALUES ('341600', '亳州市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341601', '市辖区', '3', '341600', '1');
INSERT INTO `ob_region` VALUES ('341602', '谯城区', '3', '341600', '1');
INSERT INTO `ob_region` VALUES ('341621', '涡阳县', '3', '341600', '1');
INSERT INTO `ob_region` VALUES ('341622', '蒙城县', '3', '341600', '1');
INSERT INTO `ob_region` VALUES ('341623', '利辛县', '3', '341600', '1');
INSERT INTO `ob_region` VALUES ('341700', '池州市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341701', '市辖区', '3', '341700', '1');
INSERT INTO `ob_region` VALUES ('341702', '贵池区', '3', '341700', '1');
INSERT INTO `ob_region` VALUES ('341721', '东至县', '3', '341700', '1');
INSERT INTO `ob_region` VALUES ('341722', '石台县', '3', '341700', '1');
INSERT INTO `ob_region` VALUES ('341723', '青阳县', '3', '341700', '1');
INSERT INTO `ob_region` VALUES ('341800', '宣城市', '2', '340000', '1');
INSERT INTO `ob_region` VALUES ('341801', '市辖区', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('341802', '宣州区', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('341821', '郎溪县', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('341822', '广德县', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('341823', '泾　县', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('341824', '绩溪县', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('341825', '旌德县', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('341881', '宁国市', '3', '341800', '1');
INSERT INTO `ob_region` VALUES ('350000', '福建省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('350100', '福州市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350101', '市辖区', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350102', '鼓楼区', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350103', '台江区', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350104', '仓山区', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350105', '马尾区', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350111', '晋安区', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350121', '闽侯县', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350122', '连江县', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350123', '罗源县', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350124', '闽清县', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350125', '永泰县', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350128', '平潭县', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350181', '福清市', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350182', '长乐市', '3', '350100', '1');
INSERT INTO `ob_region` VALUES ('350200', '厦门市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350201', '市辖区', '3', '350200', '1');
INSERT INTO `ob_region` VALUES ('350203', '思明区', '3', '350200', '1');
INSERT INTO `ob_region` VALUES ('350205', '海沧区', '3', '350200', '1');
INSERT INTO `ob_region` VALUES ('350206', '湖里区', '3', '350200', '1');
INSERT INTO `ob_region` VALUES ('350211', '集美区', '3', '350200', '1');
INSERT INTO `ob_region` VALUES ('350212', '同安区', '3', '350200', '1');
INSERT INTO `ob_region` VALUES ('350213', '翔安区', '3', '350200', '1');
INSERT INTO `ob_region` VALUES ('350300', '莆田市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350301', '市辖区', '3', '350300', '1');
INSERT INTO `ob_region` VALUES ('350302', '城厢区', '3', '350300', '1');
INSERT INTO `ob_region` VALUES ('350303', '涵江区', '3', '350300', '1');
INSERT INTO `ob_region` VALUES ('350304', '荔城区', '3', '350300', '1');
INSERT INTO `ob_region` VALUES ('350305', '秀屿区', '3', '350300', '1');
INSERT INTO `ob_region` VALUES ('350322', '仙游县', '3', '350300', '1');
INSERT INTO `ob_region` VALUES ('350400', '三明市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350401', '市辖区', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350402', '梅列区', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350403', '三元区', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350421', '明溪县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350423', '清流县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350424', '宁化县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350425', '大田县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350426', '尤溪县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350427', '沙　县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350428', '将乐县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350429', '泰宁县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350430', '建宁县', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350481', '永安市', '3', '350400', '1');
INSERT INTO `ob_region` VALUES ('350500', '泉州市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350501', '市辖区', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350502', '鲤城区', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350503', '丰泽区', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350504', '洛江区', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350505', '泉港区', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350521', '惠安县', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350524', '安溪县', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350525', '永春县', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350526', '德化县', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350527', '金门县', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350581', '石狮市', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350582', '晋江市', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350583', '南安市', '3', '350500', '1');
INSERT INTO `ob_region` VALUES ('350600', '漳州市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350601', '市辖区', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350602', '芗城区', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350603', '龙文区', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350622', '云霄县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350623', '漳浦县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350624', '诏安县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350625', '长泰县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350626', '东山县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350627', '南靖县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350628', '平和县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350629', '华安县', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350681', '龙海市', '3', '350600', '1');
INSERT INTO `ob_region` VALUES ('350700', '南平市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350701', '市辖区', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350702', '延平区', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350721', '顺昌县', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350722', '浦城县', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350723', '光泽县', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350724', '松溪县', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350725', '政和县', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350781', '邵武市', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350782', '武夷山市', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350783', '建瓯市', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350784', '建阳市', '3', '350700', '1');
INSERT INTO `ob_region` VALUES ('350800', '龙岩市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350801', '市辖区', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350802', '新罗区', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350821', '长汀县', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350822', '永定县', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350823', '上杭县', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350824', '武平县', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350825', '连城县', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350881', '漳平市', '3', '350800', '1');
INSERT INTO `ob_region` VALUES ('350900', '宁德市', '2', '350000', '1');
INSERT INTO `ob_region` VALUES ('350901', '市辖区', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350902', '蕉城区', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350921', '霞浦县', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350922', '古田县', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350923', '屏南县', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350924', '寿宁县', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350925', '周宁县', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350926', '柘荣县', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350981', '福安市', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('350982', '福鼎市', '3', '350900', '1');
INSERT INTO `ob_region` VALUES ('360000', '江西省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('360100', '南昌市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360101', '市辖区', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360102', '东湖区', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360103', '西湖区', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360104', '青云谱区', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360105', '湾里区', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360111', '青山湖区', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360121', '南昌县', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360122', '新建县', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360123', '安义县', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360124', '进贤县', '3', '360100', '1');
INSERT INTO `ob_region` VALUES ('360200', '景德镇市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360201', '市辖区', '3', '360200', '1');
INSERT INTO `ob_region` VALUES ('360202', '昌江区', '3', '360200', '1');
INSERT INTO `ob_region` VALUES ('360203', '珠山区', '3', '360200', '1');
INSERT INTO `ob_region` VALUES ('360222', '浮梁县', '3', '360200', '1');
INSERT INTO `ob_region` VALUES ('360281', '乐平市', '3', '360200', '1');
INSERT INTO `ob_region` VALUES ('360300', '萍乡市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360301', '市辖区', '3', '360300', '1');
INSERT INTO `ob_region` VALUES ('360302', '安源区', '3', '360300', '1');
INSERT INTO `ob_region` VALUES ('360313', '湘东区', '3', '360300', '1');
INSERT INTO `ob_region` VALUES ('360321', '莲花县', '3', '360300', '1');
INSERT INTO `ob_region` VALUES ('360322', '上栗县', '3', '360300', '1');
INSERT INTO `ob_region` VALUES ('360323', '芦溪县', '3', '360300', '1');
INSERT INTO `ob_region` VALUES ('360400', '九江市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360401', '市辖区', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360402', '庐山区', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360403', '浔阳区', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360421', '九江县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360423', '武宁县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360424', '修水县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360425', '永修县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360426', '德安县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360427', '星子县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360428', '都昌县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360429', '湖口县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360430', '彭泽县', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360481', '瑞昌市', '3', '360400', '1');
INSERT INTO `ob_region` VALUES ('360500', '新余市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360501', '市辖区', '3', '360500', '1');
INSERT INTO `ob_region` VALUES ('360502', '渝水区', '3', '360500', '1');
INSERT INTO `ob_region` VALUES ('360521', '分宜县', '3', '360500', '1');
INSERT INTO `ob_region` VALUES ('360600', '鹰潭市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360601', '市辖区', '3', '360600', '1');
INSERT INTO `ob_region` VALUES ('360602', '月湖区', '3', '360600', '1');
INSERT INTO `ob_region` VALUES ('360622', '余江县', '3', '360600', '1');
INSERT INTO `ob_region` VALUES ('360681', '贵溪市', '3', '360600', '1');
INSERT INTO `ob_region` VALUES ('360700', '赣州市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360701', '市辖区', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360702', '章贡区', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360721', '赣　县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360722', '信丰县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360723', '大余县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360724', '上犹县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360725', '崇义县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360726', '安远县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360727', '龙南县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360728', '定南县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360729', '全南县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360730', '宁都县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360731', '于都县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360732', '兴国县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360733', '会昌县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360734', '寻乌县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360735', '石城县', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360781', '瑞金市', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360782', '南康市', '3', '360700', '1');
INSERT INTO `ob_region` VALUES ('360800', '吉安市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360801', '市辖区', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360802', '吉州区', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360803', '青原区', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360821', '吉安县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360822', '吉水县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360823', '峡江县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360824', '新干县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360825', '永丰县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360826', '泰和县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360827', '遂川县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360828', '万安县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360829', '安福县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360830', '永新县', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360881', '井冈山市', '3', '360800', '1');
INSERT INTO `ob_region` VALUES ('360900', '宜春市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('360901', '市辖区', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360902', '袁州区', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360921', '奉新县', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360922', '万载县', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360923', '上高县', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360924', '宜丰县', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360925', '靖安县', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360926', '铜鼓县', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360981', '丰城市', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360982', '樟树市', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('360983', '高安市', '3', '360900', '1');
INSERT INTO `ob_region` VALUES ('361000', '抚州市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('361001', '市辖区', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361002', '临川区', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361021', '南城县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361022', '黎川县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361023', '南丰县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361024', '崇仁县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361025', '乐安县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361026', '宜黄县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361027', '金溪县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361028', '资溪县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361029', '东乡县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361030', '广昌县', '3', '361000', '1');
INSERT INTO `ob_region` VALUES ('361100', '上饶市', '2', '360000', '1');
INSERT INTO `ob_region` VALUES ('361101', '市辖区', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361102', '信州区', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361121', '上饶县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361122', '广丰县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361123', '玉山县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361124', '铅山县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361125', '横峰县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361126', '弋阳县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361127', '余干县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361128', '鄱阳县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361129', '万年县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361130', '婺源县', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('361181', '德兴市', '3', '361100', '1');
INSERT INTO `ob_region` VALUES ('370000', '山东省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('370100', '济南市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370101', '市辖区', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370102', '历下区', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370103', '市中区', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370104', '槐荫区', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370105', '天桥区', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370112', '历城区', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370113', '长清区', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370124', '平阴县', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370125', '济阳县', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370126', '商河县', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370181', '章丘市', '3', '370100', '1');
INSERT INTO `ob_region` VALUES ('370200', '青岛市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370201', '市辖区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370202', '市南区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370203', '市北区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370205', '四方区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370211', '黄岛区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370212', '崂山区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370213', '李沧区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370214', '城阳区', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370281', '胶州市', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370282', '即墨市', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370283', '平度市', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370284', '胶南市', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370285', '莱西市', '3', '370200', '1');
INSERT INTO `ob_region` VALUES ('370300', '淄博市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370301', '市辖区', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370302', '淄川区', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370303', '张店区', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370304', '博山区', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370305', '临淄区', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370306', '周村区', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370321', '桓台县', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370322', '高青县', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370323', '沂源县', '3', '370300', '1');
INSERT INTO `ob_region` VALUES ('370400', '枣庄市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370401', '市辖区', '3', '370400', '1');
INSERT INTO `ob_region` VALUES ('370402', '市中区', '3', '370400', '1');
INSERT INTO `ob_region` VALUES ('370403', '薛城区', '3', '370400', '1');
INSERT INTO `ob_region` VALUES ('370404', '峄城区', '3', '370400', '1');
INSERT INTO `ob_region` VALUES ('370405', '台儿庄区', '3', '370400', '1');
INSERT INTO `ob_region` VALUES ('370406', '山亭区', '3', '370400', '1');
INSERT INTO `ob_region` VALUES ('370481', '滕州市', '3', '370400', '1');
INSERT INTO `ob_region` VALUES ('370500', '东营市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370501', '市辖区', '3', '370500', '1');
INSERT INTO `ob_region` VALUES ('370502', '东营区', '3', '370500', '1');
INSERT INTO `ob_region` VALUES ('370503', '河口区', '3', '370500', '1');
INSERT INTO `ob_region` VALUES ('370521', '垦利县', '3', '370500', '1');
INSERT INTO `ob_region` VALUES ('370522', '利津县', '3', '370500', '1');
INSERT INTO `ob_region` VALUES ('370523', '广饶县', '3', '370500', '1');
INSERT INTO `ob_region` VALUES ('370600', '烟台市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370601', '市辖区', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370602', '芝罘区', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370611', '福山区', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370612', '牟平区', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370613', '莱山区', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370634', '长岛县', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370681', '龙口市', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370682', '莱阳市', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370683', '莱州市', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370684', '蓬莱市', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370685', '招远市', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370686', '栖霞市', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370687', '海阳市', '3', '370600', '1');
INSERT INTO `ob_region` VALUES ('370700', '潍坊市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370701', '市辖区', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370702', '潍城区', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370703', '寒亭区', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370704', '坊子区', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370705', '奎文区', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370724', '临朐县', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370725', '昌乐县', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370781', '青州市', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370782', '诸城市', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370783', '寿光市', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370784', '安丘市', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370785', '高密市', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370786', '昌邑市', '3', '370700', '1');
INSERT INTO `ob_region` VALUES ('370800', '济宁市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370801', '市辖区', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370802', '市中区', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370811', '任城区', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370826', '微山县', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370827', '鱼台县', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370828', '金乡县', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370829', '嘉祥县', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370830', '汶上县', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370831', '泗水县', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370832', '梁山县', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370881', '曲阜市', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370882', '兖州市', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370883', '邹城市', '3', '370800', '1');
INSERT INTO `ob_region` VALUES ('370900', '泰安市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('370901', '市辖区', '3', '370900', '1');
INSERT INTO `ob_region` VALUES ('370902', '泰山区', '3', '370900', '1');
INSERT INTO `ob_region` VALUES ('370903', '岱岳区', '3', '370900', '1');
INSERT INTO `ob_region` VALUES ('370921', '宁阳县', '3', '370900', '1');
INSERT INTO `ob_region` VALUES ('370923', '东平县', '3', '370900', '1');
INSERT INTO `ob_region` VALUES ('370982', '新泰市', '3', '370900', '1');
INSERT INTO `ob_region` VALUES ('370983', '肥城市', '3', '370900', '1');
INSERT INTO `ob_region` VALUES ('371000', '威海市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371001', '市辖区', '3', '371000', '1');
INSERT INTO `ob_region` VALUES ('371002', '环翠区', '3', '371000', '1');
INSERT INTO `ob_region` VALUES ('371081', '文登市', '3', '371000', '1');
INSERT INTO `ob_region` VALUES ('371082', '荣成市', '3', '371000', '1');
INSERT INTO `ob_region` VALUES ('371083', '乳山市', '3', '371000', '1');
INSERT INTO `ob_region` VALUES ('371100', '日照市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371101', '市辖区', '3', '371100', '1');
INSERT INTO `ob_region` VALUES ('371102', '东港区', '3', '371100', '1');
INSERT INTO `ob_region` VALUES ('371103', '岚山区', '3', '371100', '1');
INSERT INTO `ob_region` VALUES ('371121', '五莲县', '3', '371100', '1');
INSERT INTO `ob_region` VALUES ('371122', '莒　县', '3', '371100', '1');
INSERT INTO `ob_region` VALUES ('371200', '莱芜市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371201', '市辖区', '3', '371200', '1');
INSERT INTO `ob_region` VALUES ('371202', '莱城区', '3', '371200', '1');
INSERT INTO `ob_region` VALUES ('371203', '钢城区', '3', '371200', '1');
INSERT INTO `ob_region` VALUES ('371300', '临沂市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371301', '市辖区', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371302', '兰山区', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371311', '罗庄区', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371312', '河东区', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371321', '沂南县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371322', '郯城县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371323', '沂水县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371324', '苍山县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371325', '费　县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371326', '平邑县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371327', '莒南县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371328', '蒙阴县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371329', '临沭县', '3', '371300', '1');
INSERT INTO `ob_region` VALUES ('371400', '德州市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371401', '市辖区', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371402', '德城区', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371421', '陵　县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371422', '宁津县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371423', '庆云县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371424', '临邑县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371425', '齐河县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371426', '平原县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371427', '夏津县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371428', '武城县', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371481', '乐陵市', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371482', '禹城市', '3', '371400', '1');
INSERT INTO `ob_region` VALUES ('371500', '聊城市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371501', '市辖区', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371502', '东昌府区', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371521', '阳谷县', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371522', '莘　县', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371523', '茌平县', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371524', '东阿县', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371525', '冠　县', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371526', '高唐县', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371581', '临清市', '3', '371500', '1');
INSERT INTO `ob_region` VALUES ('371600', '滨州市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371601', '市辖区', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371602', '滨城区', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371621', '惠民县', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371622', '阳信县', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371623', '无棣县', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371624', '沾化县', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371625', '博兴县', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371626', '邹平县', '3', '371600', '1');
INSERT INTO `ob_region` VALUES ('371700', '菏泽市', '2', '370000', '1');
INSERT INTO `ob_region` VALUES ('371701', '市辖区', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371702', '牡丹区', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371721', '曹　县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371722', '单　县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371723', '成武县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371724', '巨野县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371725', '郓城县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371726', '鄄城县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371727', '定陶县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('371728', '东明县', '3', '371700', '1');
INSERT INTO `ob_region` VALUES ('410000', '河南省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('410100', '郑州市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410101', '市辖区', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410102', '中原区', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410103', '二七区', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410104', '管城回族区', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410105', '金水区', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410106', '上街区', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410108', '邙山区', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410122', '中牟县', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410181', '巩义市', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410182', '荥阳市', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410183', '新密市', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410184', '新郑市', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410185', '登封市', '3', '410100', '1');
INSERT INTO `ob_region` VALUES ('410200', '开封市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410201', '市辖区', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410202', '龙亭区', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410203', '顺河回族区', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410204', '鼓楼区', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410205', '南关区', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410211', '郊　区', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410221', '杞　县', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410222', '通许县', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410223', '尉氏县', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410224', '开封县', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410225', '兰考县', '3', '410200', '1');
INSERT INTO `ob_region` VALUES ('410300', '洛阳市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410301', '市辖区', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410302', '老城区', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410303', '西工区', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410304', '廛河回族区', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410305', '涧西区', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410306', '吉利区', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410307', '洛龙区', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410322', '孟津县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410323', '新安县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410324', '栾川县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410325', '嵩　县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410326', '汝阳县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410327', '宜阳县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410328', '洛宁县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410329', '伊川县', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410381', '偃师市', '3', '410300', '1');
INSERT INTO `ob_region` VALUES ('410400', '平顶山市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410401', '市辖区', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410402', '新华区', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410403', '卫东区', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410404', '石龙区', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410411', '湛河区', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410421', '宝丰县', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410422', '叶　县', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410423', '鲁山县', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410425', '郏　县', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410481', '舞钢市', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410482', '汝州市', '3', '410400', '1');
INSERT INTO `ob_region` VALUES ('410500', '安阳市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410501', '市辖区', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410502', '文峰区', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410503', '北关区', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410505', '殷都区', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410506', '龙安区', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410522', '安阳县', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410523', '汤阴县', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410526', '滑　县', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410527', '内黄县', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410581', '林州市', '3', '410500', '1');
INSERT INTO `ob_region` VALUES ('410600', '鹤壁市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410601', '市辖区', '3', '410600', '1');
INSERT INTO `ob_region` VALUES ('410602', '鹤山区', '3', '410600', '1');
INSERT INTO `ob_region` VALUES ('410603', '山城区', '3', '410600', '1');
INSERT INTO `ob_region` VALUES ('410611', '淇滨区', '3', '410600', '1');
INSERT INTO `ob_region` VALUES ('410621', '浚　县', '3', '410600', '1');
INSERT INTO `ob_region` VALUES ('410622', '淇　县', '3', '410600', '1');
INSERT INTO `ob_region` VALUES ('410700', '新乡市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410701', '市辖区', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410702', '红旗区', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410703', '卫滨区', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410704', '凤泉区', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410711', '牧野区', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410721', '新乡县', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410724', '获嘉县', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410725', '原阳县', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410726', '延津县', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410727', '封丘县', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410728', '长垣县', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410781', '卫辉市', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410782', '辉县市', '3', '410700', '1');
INSERT INTO `ob_region` VALUES ('410800', '焦作市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410801', '市辖区', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410802', '解放区', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410803', '中站区', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410804', '马村区', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410811', '山阳区', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410821', '修武县', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410822', '博爱县', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410823', '武陟县', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410825', '温　县', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410881', '济源市', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410882', '沁阳市', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410883', '孟州市', '3', '410800', '1');
INSERT INTO `ob_region` VALUES ('410900', '濮阳市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('410901', '市辖区', '3', '410900', '1');
INSERT INTO `ob_region` VALUES ('410902', '华龙区', '3', '410900', '1');
INSERT INTO `ob_region` VALUES ('410922', '清丰县', '3', '410900', '1');
INSERT INTO `ob_region` VALUES ('410923', '南乐县', '3', '410900', '1');
INSERT INTO `ob_region` VALUES ('410926', '范　县', '3', '410900', '1');
INSERT INTO `ob_region` VALUES ('410927', '台前县', '3', '410900', '1');
INSERT INTO `ob_region` VALUES ('410928', '濮阳县', '3', '410900', '1');
INSERT INTO `ob_region` VALUES ('411000', '许昌市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411001', '市辖区', '3', '411000', '1');
INSERT INTO `ob_region` VALUES ('411002', '魏都区', '3', '411000', '1');
INSERT INTO `ob_region` VALUES ('411023', '许昌县', '3', '411000', '1');
INSERT INTO `ob_region` VALUES ('411024', '鄢陵县', '3', '411000', '1');
INSERT INTO `ob_region` VALUES ('411025', '襄城县', '3', '411000', '1');
INSERT INTO `ob_region` VALUES ('411081', '禹州市', '3', '411000', '1');
INSERT INTO `ob_region` VALUES ('411082', '长葛市', '3', '411000', '1');
INSERT INTO `ob_region` VALUES ('411100', '漯河市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411101', '市辖区', '3', '411100', '1');
INSERT INTO `ob_region` VALUES ('411102', '源汇区', '3', '411100', '1');
INSERT INTO `ob_region` VALUES ('411103', '郾城区', '3', '411100', '1');
INSERT INTO `ob_region` VALUES ('411104', '召陵区', '3', '411100', '1');
INSERT INTO `ob_region` VALUES ('411121', '舞阳县', '3', '411100', '1');
INSERT INTO `ob_region` VALUES ('411122', '临颍县', '3', '411100', '1');
INSERT INTO `ob_region` VALUES ('411200', '三门峡市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411201', '市辖区', '3', '411200', '1');
INSERT INTO `ob_region` VALUES ('411202', '湖滨区', '3', '411200', '1');
INSERT INTO `ob_region` VALUES ('411221', '渑池县', '3', '411200', '1');
INSERT INTO `ob_region` VALUES ('411222', '陕　县', '3', '411200', '1');
INSERT INTO `ob_region` VALUES ('411224', '卢氏县', '3', '411200', '1');
INSERT INTO `ob_region` VALUES ('411281', '义马市', '3', '411200', '1');
INSERT INTO `ob_region` VALUES ('411282', '灵宝市', '3', '411200', '1');
INSERT INTO `ob_region` VALUES ('411300', '南阳市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411301', '市辖区', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411302', '宛城区', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411303', '卧龙区', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411321', '南召县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411322', '方城县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411323', '西峡县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411324', '镇平县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411325', '内乡县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411326', '淅川县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411327', '社旗县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411328', '唐河县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411329', '新野县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411330', '桐柏县', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411381', '邓州市', '3', '411300', '1');
INSERT INTO `ob_region` VALUES ('411400', '商丘市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411401', '市辖区', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411402', '梁园区', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411403', '睢阳区', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411421', '民权县', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411422', '睢　县', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411423', '宁陵县', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411424', '柘城县', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411425', '虞城县', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411426', '夏邑县', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411481', '永城市', '3', '411400', '1');
INSERT INTO `ob_region` VALUES ('411500', '信阳市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411501', '市辖区', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411502', '师河区', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411503', '平桥区', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411521', '罗山县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411522', '光山县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411523', '新　县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411524', '商城县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411525', '固始县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411526', '潢川县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411527', '淮滨县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411528', '息　县', '3', '411500', '1');
INSERT INTO `ob_region` VALUES ('411600', '周口市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411601', '市辖区', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411602', '川汇区', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411621', '扶沟县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411622', '西华县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411623', '商水县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411624', '沈丘县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411625', '郸城县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411626', '淮阳县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411627', '太康县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411628', '鹿邑县', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411681', '项城市', '3', '411600', '1');
INSERT INTO `ob_region` VALUES ('411700', '驻马店市', '2', '410000', '1');
INSERT INTO `ob_region` VALUES ('411701', '市辖区', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411702', '驿城区', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411721', '西平县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411722', '上蔡县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411723', '平舆县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411724', '正阳县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411725', '确山县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411726', '泌阳县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411727', '汝南县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411728', '遂平县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('411729', '新蔡县', '3', '411700', '1');
INSERT INTO `ob_region` VALUES ('420000', '湖北省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('420100', '武汉市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420101', '市辖区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420102', '江岸区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420103', '江汉区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420104', '乔口区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420105', '汉阳区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420106', '武昌区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420107', '青山区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420111', '洪山区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420112', '东西湖区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420113', '汉南区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420114', '蔡甸区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420115', '江夏区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420116', '黄陂区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420117', '新洲区', '3', '420100', '1');
INSERT INTO `ob_region` VALUES ('420200', '黄石市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420201', '市辖区', '3', '420200', '1');
INSERT INTO `ob_region` VALUES ('420202', '黄石港区', '3', '420200', '1');
INSERT INTO `ob_region` VALUES ('420203', '西塞山区', '3', '420200', '1');
INSERT INTO `ob_region` VALUES ('420204', '下陆区', '3', '420200', '1');
INSERT INTO `ob_region` VALUES ('420205', '铁山区', '3', '420200', '1');
INSERT INTO `ob_region` VALUES ('420222', '阳新县', '3', '420200', '1');
INSERT INTO `ob_region` VALUES ('420281', '大冶市', '3', '420200', '1');
INSERT INTO `ob_region` VALUES ('420300', '十堰市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420301', '市辖区', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420302', '茅箭区', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420303', '张湾区', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420321', '郧　县', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420322', '郧西县', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420323', '竹山县', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420324', '竹溪县', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420325', '房　县', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420381', '丹江口市', '3', '420300', '1');
INSERT INTO `ob_region` VALUES ('420500', '宜昌市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420501', '市辖区', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420502', '西陵区', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420503', '伍家岗区', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420504', '点军区', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420505', '猇亭区', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420506', '夷陵区', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420525', '远安县', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420526', '兴山县', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420527', '秭归县', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420528', '长阳土家族自治县', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420529', '五峰土家族自治县', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420581', '宜都市', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420582', '当阳市', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420583', '枝江市', '3', '420500', '1');
INSERT INTO `ob_region` VALUES ('420600', '襄阳市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420601', '市辖区', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420602', '襄城区', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420606', '樊城区', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420607', '襄阳区', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420624', '南漳县', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420625', '谷城县', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420626', '保康县', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420682', '老河口市', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420683', '枣阳市', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420684', '宜城市', '3', '420600', '1');
INSERT INTO `ob_region` VALUES ('420700', '鄂州市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420701', '市辖区', '3', '420700', '1');
INSERT INTO `ob_region` VALUES ('420702', '梁子湖区', '3', '420700', '1');
INSERT INTO `ob_region` VALUES ('420703', '华容区', '3', '420700', '1');
INSERT INTO `ob_region` VALUES ('420704', '鄂城区', '3', '420700', '1');
INSERT INTO `ob_region` VALUES ('420800', '荆门市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420801', '市辖区', '3', '420800', '1');
INSERT INTO `ob_region` VALUES ('420802', '东宝区', '3', '420800', '1');
INSERT INTO `ob_region` VALUES ('420804', '掇刀区', '3', '420800', '1');
INSERT INTO `ob_region` VALUES ('420821', '京山县', '3', '420800', '1');
INSERT INTO `ob_region` VALUES ('420822', '沙洋县', '3', '420800', '1');
INSERT INTO `ob_region` VALUES ('420881', '钟祥市', '3', '420800', '1');
INSERT INTO `ob_region` VALUES ('420900', '孝感市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('420901', '市辖区', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('420902', '孝南区', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('420921', '孝昌县', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('420922', '大悟县', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('420923', '云梦县', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('420981', '应城市', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('420982', '安陆市', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('420984', '汉川市', '3', '420900', '1');
INSERT INTO `ob_region` VALUES ('421000', '荆州市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('421001', '市辖区', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421002', '沙市区', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421003', '荆州区', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421022', '公安县', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421023', '监利县', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421024', '江陵县', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421081', '石首市', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421083', '洪湖市', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421087', '松滋市', '3', '421000', '1');
INSERT INTO `ob_region` VALUES ('421100', '黄冈市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('421101', '市辖区', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421102', '黄州区', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421121', '团风县', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421122', '红安县', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421123', '罗田县', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421124', '英山县', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421125', '浠水县', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421126', '蕲春县', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421127', '黄梅县', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421181', '麻城市', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421182', '武穴市', '3', '421100', '1');
INSERT INTO `ob_region` VALUES ('421200', '咸宁市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('421201', '市辖区', '3', '421200', '1');
INSERT INTO `ob_region` VALUES ('421202', '咸安区', '3', '421200', '1');
INSERT INTO `ob_region` VALUES ('421221', '嘉鱼县', '3', '421200', '1');
INSERT INTO `ob_region` VALUES ('421222', '通城县', '3', '421200', '1');
INSERT INTO `ob_region` VALUES ('421223', '崇阳县', '3', '421200', '1');
INSERT INTO `ob_region` VALUES ('421224', '通山县', '3', '421200', '1');
INSERT INTO `ob_region` VALUES ('421281', '赤壁市', '3', '421200', '1');
INSERT INTO `ob_region` VALUES ('421300', '随州市', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('421301', '市辖区', '3', '421300', '1');
INSERT INTO `ob_region` VALUES ('421302', '曾都区', '3', '421300', '1');
INSERT INTO `ob_region` VALUES ('421381', '广水市', '3', '421300', '1');
INSERT INTO `ob_region` VALUES ('422800', '恩施土家族苗族自治州', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('422801', '恩施市', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('422802', '利川市', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('422822', '建始县', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('422823', '巴东县', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('422825', '宣恩县', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('422826', '咸丰县', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('422827', '来凤县', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('422828', '鹤峰县', '3', '422800', '1');
INSERT INTO `ob_region` VALUES ('429000', '省直辖行政单位', '2', '420000', '1');
INSERT INTO `ob_region` VALUES ('429004', '仙桃市', '3', '429000', '1');
INSERT INTO `ob_region` VALUES ('429005', '潜江市', '3', '429000', '1');
INSERT INTO `ob_region` VALUES ('429006', '天门市', '3', '429000', '1');
INSERT INTO `ob_region` VALUES ('429021', '神农架林区', '3', '429000', '1');
INSERT INTO `ob_region` VALUES ('430000', '湖南省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('430100', '长沙市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430101', '市辖区', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430102', '芙蓉区', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430103', '天心区', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430104', '岳麓区', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430105', '开福区', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430111', '雨花区', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430121', '长沙县', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430122', '望城县', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430124', '宁乡县', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430181', '浏阳市', '3', '430100', '1');
INSERT INTO `ob_region` VALUES ('430200', '株洲市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430201', '市辖区', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430202', '荷塘区', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430203', '芦淞区', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430204', '石峰区', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430211', '天元区', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430221', '株洲县', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430223', '攸　县', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430224', '茶陵县', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430225', '炎陵县', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430281', '醴陵市', '3', '430200', '1');
INSERT INTO `ob_region` VALUES ('430300', '湘潭市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430301', '市辖区', '3', '430300', '1');
INSERT INTO `ob_region` VALUES ('430302', '雨湖区', '3', '430300', '1');
INSERT INTO `ob_region` VALUES ('430304', '岳塘区', '3', '430300', '1');
INSERT INTO `ob_region` VALUES ('430321', '湘潭县', '3', '430300', '1');
INSERT INTO `ob_region` VALUES ('430381', '湘乡市', '3', '430300', '1');
INSERT INTO `ob_region` VALUES ('430382', '韶山市', '3', '430300', '1');
INSERT INTO `ob_region` VALUES ('430400', '衡阳市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430401', '市辖区', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430405', '珠晖区', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430406', '雁峰区', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430407', '石鼓区', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430408', '蒸湘区', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430412', '南岳区', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430421', '衡阳县', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430422', '衡南县', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430423', '衡山县', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430424', '衡东县', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430426', '祁东县', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430481', '耒阳市', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430482', '常宁市', '3', '430400', '1');
INSERT INTO `ob_region` VALUES ('430500', '邵阳市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430501', '市辖区', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430502', '双清区', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430503', '大祥区', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430511', '北塔区', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430521', '邵东县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430522', '新邵县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430523', '邵阳县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430524', '隆回县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430525', '洞口县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430527', '绥宁县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430528', '新宁县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430529', '城步苗族自治县', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430581', '武冈市', '3', '430500', '1');
INSERT INTO `ob_region` VALUES ('430600', '岳阳市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430601', '市辖区', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430602', '岳阳楼区', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430603', '云溪区', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430611', '君山区', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430621', '岳阳县', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430623', '华容县', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430624', '湘阴县', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430626', '平江县', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430681', '汨罗市', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430682', '临湘市', '3', '430600', '1');
INSERT INTO `ob_region` VALUES ('430700', '常德市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430701', '市辖区', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430702', '武陵区', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430703', '鼎城区', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430721', '安乡县', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430722', '汉寿县', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430723', '澧　县', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430724', '临澧县', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430725', '桃源县', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430726', '石门县', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430781', '津市市', '3', '430700', '1');
INSERT INTO `ob_region` VALUES ('430800', '张家界市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430801', '市辖区', '3', '430800', '1');
INSERT INTO `ob_region` VALUES ('430802', '永定区', '3', '430800', '1');
INSERT INTO `ob_region` VALUES ('430811', '武陵源区', '3', '430800', '1');
INSERT INTO `ob_region` VALUES ('430821', '慈利县', '3', '430800', '1');
INSERT INTO `ob_region` VALUES ('430822', '桑植县', '3', '430800', '1');
INSERT INTO `ob_region` VALUES ('430900', '益阳市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('430901', '市辖区', '3', '430900', '1');
INSERT INTO `ob_region` VALUES ('430902', '资阳区', '3', '430900', '1');
INSERT INTO `ob_region` VALUES ('430903', '赫山区', '3', '430900', '1');
INSERT INTO `ob_region` VALUES ('430921', '南　县', '3', '430900', '1');
INSERT INTO `ob_region` VALUES ('430922', '桃江县', '3', '430900', '1');
INSERT INTO `ob_region` VALUES ('430923', '安化县', '3', '430900', '1');
INSERT INTO `ob_region` VALUES ('430981', '沅江市', '3', '430900', '1');
INSERT INTO `ob_region` VALUES ('431000', '郴州市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('431001', '市辖区', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431002', '北湖区', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431003', '苏仙区', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431021', '桂阳县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431022', '宜章县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431023', '永兴县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431024', '嘉禾县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431025', '临武县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431026', '汝城县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431027', '桂东县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431028', '安仁县', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431081', '资兴市', '3', '431000', '1');
INSERT INTO `ob_region` VALUES ('431100', '永州市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('431101', '市辖区', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431102', '芝山区', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431103', '冷水滩区', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431121', '祁阳县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431122', '东安县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431123', '双牌县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431124', '道　县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431125', '江永县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431126', '宁远县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431127', '蓝山县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431128', '新田县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431129', '江华瑶族自治县', '3', '431100', '1');
INSERT INTO `ob_region` VALUES ('431200', '怀化市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('431201', '市辖区', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431202', '鹤城区', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431221', '中方县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431222', '沅陵县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431223', '辰溪县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431224', '溆浦县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431225', '会同县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431226', '麻阳苗族自治县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431227', '新晃侗族自治县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431228', '芷江侗族自治县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431229', '靖州苗族侗族自治县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431230', '通道侗族自治县', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431281', '洪江市', '3', '431200', '1');
INSERT INTO `ob_region` VALUES ('431300', '娄底市', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('431301', '市辖区', '3', '431300', '1');
INSERT INTO `ob_region` VALUES ('431302', '娄星区', '3', '431300', '1');
INSERT INTO `ob_region` VALUES ('431321', '双峰县', '3', '431300', '1');
INSERT INTO `ob_region` VALUES ('431322', '新化县', '3', '431300', '1');
INSERT INTO `ob_region` VALUES ('431381', '冷水江市', '3', '431300', '1');
INSERT INTO `ob_region` VALUES ('431382', '涟源市', '3', '431300', '1');
INSERT INTO `ob_region` VALUES ('433100', '湘西土家族苗族自治州', '2', '430000', '1');
INSERT INTO `ob_region` VALUES ('433101', '吉首市', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('433122', '泸溪县', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('433123', '凤凰县', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('433124', '花垣县', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('433125', '保靖县', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('433126', '古丈县', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('433127', '永顺县', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('433130', '龙山县', '3', '433100', '1');
INSERT INTO `ob_region` VALUES ('440000', '广东省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('440100', '广州市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440101', '市辖区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440102', '东山区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440103', '荔湾区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440104', '越秀区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440105', '海珠区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440106', '天河区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440107', '芳村区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440111', '白云区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440112', '黄埔区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440113', '番禺区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440114', '花都区', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440183', '增城市', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440184', '从化市', '3', '440100', '1');
INSERT INTO `ob_region` VALUES ('440200', '韶关市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440201', '市辖区', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440203', '武江区', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440204', '浈江区', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440205', '曲江区', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440222', '始兴县', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440224', '仁化县', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440229', '翁源县', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440232', '乳源瑶族自治县', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440233', '新丰县', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440281', '乐昌市', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440282', '南雄市', '3', '440200', '1');
INSERT INTO `ob_region` VALUES ('440300', '深圳市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440301', '市辖区', '3', '440300', '1');
INSERT INTO `ob_region` VALUES ('440303', '罗湖区', '3', '440300', '1');
INSERT INTO `ob_region` VALUES ('440304', '福田区', '3', '440300', '1');
INSERT INTO `ob_region` VALUES ('440305', '南山区', '3', '440300', '1');
INSERT INTO `ob_region` VALUES ('440306', '宝安区', '3', '440300', '1');
INSERT INTO `ob_region` VALUES ('440307', '龙岗区', '3', '440300', '1');
INSERT INTO `ob_region` VALUES ('440308', '盐田区', '3', '440300', '1');
INSERT INTO `ob_region` VALUES ('440400', '珠海市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440401', '市辖区', '3', '440400', '1');
INSERT INTO `ob_region` VALUES ('440402', '香洲区', '3', '440400', '1');
INSERT INTO `ob_region` VALUES ('440403', '斗门区', '3', '440400', '1');
INSERT INTO `ob_region` VALUES ('440404', '金湾区', '3', '440400', '1');
INSERT INTO `ob_region` VALUES ('440500', '汕头市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440501', '市辖区', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440507', '龙湖区', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440511', '金平区', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440512', '濠江区', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440513', '潮阳区', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440514', '潮南区', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440515', '澄海区', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440523', '南澳县', '3', '440500', '1');
INSERT INTO `ob_region` VALUES ('440600', '佛山市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440601', '市辖区', '3', '440600', '1');
INSERT INTO `ob_region` VALUES ('440604', '禅城区', '3', '440600', '1');
INSERT INTO `ob_region` VALUES ('440605', '南海区', '3', '440600', '1');
INSERT INTO `ob_region` VALUES ('440606', '顺德区', '3', '440600', '1');
INSERT INTO `ob_region` VALUES ('440607', '三水区', '3', '440600', '1');
INSERT INTO `ob_region` VALUES ('440608', '高明区', '3', '440600', '1');
INSERT INTO `ob_region` VALUES ('440700', '江门市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440701', '市辖区', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440703', '蓬江区', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440704', '江海区', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440705', '新会区', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440781', '台山市', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440783', '开平市', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440784', '鹤山市', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440785', '恩平市', '3', '440700', '1');
INSERT INTO `ob_region` VALUES ('440800', '湛江市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440801', '市辖区', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440802', '赤坎区', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440803', '霞山区', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440804', '坡头区', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440811', '麻章区', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440823', '遂溪县', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440825', '徐闻县', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440881', '廉江市', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440882', '雷州市', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440883', '吴川市', '3', '440800', '1');
INSERT INTO `ob_region` VALUES ('440900', '茂名市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('440901', '市辖区', '3', '440900', '1');
INSERT INTO `ob_region` VALUES ('440902', '茂南区', '3', '440900', '1');
INSERT INTO `ob_region` VALUES ('440903', '茂港区', '3', '440900', '1');
INSERT INTO `ob_region` VALUES ('440923', '电白县', '3', '440900', '1');
INSERT INTO `ob_region` VALUES ('440981', '高州市', '3', '440900', '1');
INSERT INTO `ob_region` VALUES ('440982', '化州市', '3', '440900', '1');
INSERT INTO `ob_region` VALUES ('440983', '信宜市', '3', '440900', '1');
INSERT INTO `ob_region` VALUES ('441200', '肇庆市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('441201', '市辖区', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441202', '端州区', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441203', '鼎湖区', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441223', '广宁县', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441224', '怀集县', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441225', '封开县', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441226', '德庆县', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441283', '高要市', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441284', '四会市', '3', '441200', '1');
INSERT INTO `ob_region` VALUES ('441300', '惠州市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('441301', '市辖区', '3', '441300', '1');
INSERT INTO `ob_region` VALUES ('441302', '惠城区', '3', '441300', '1');
INSERT INTO `ob_region` VALUES ('441303', '惠阳区', '3', '441300', '1');
INSERT INTO `ob_region` VALUES ('441322', '博罗县', '3', '441300', '1');
INSERT INTO `ob_region` VALUES ('441323', '惠东县', '3', '441300', '1');
INSERT INTO `ob_region` VALUES ('441324', '龙门县', '3', '441300', '1');
INSERT INTO `ob_region` VALUES ('441400', '梅州市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('441401', '市辖区', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441402', '梅江区', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441421', '梅　县', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441422', '大埔县', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441423', '丰顺县', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441424', '五华县', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441426', '平远县', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441427', '蕉岭县', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441481', '兴宁市', '3', '441400', '1');
INSERT INTO `ob_region` VALUES ('441500', '汕尾市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('441501', '市辖区', '3', '441500', '1');
INSERT INTO `ob_region` VALUES ('441502', '城　区', '3', '441500', '1');
INSERT INTO `ob_region` VALUES ('441521', '海丰县', '3', '441500', '1');
INSERT INTO `ob_region` VALUES ('441523', '陆河县', '3', '441500', '1');
INSERT INTO `ob_region` VALUES ('441581', '陆丰市', '3', '441500', '1');
INSERT INTO `ob_region` VALUES ('441600', '河源市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('441601', '市辖区', '3', '441600', '1');
INSERT INTO `ob_region` VALUES ('441602', '源城区', '3', '441600', '1');
INSERT INTO `ob_region` VALUES ('441621', '紫金县', '3', '441600', '1');
INSERT INTO `ob_region` VALUES ('441622', '龙川县', '3', '441600', '1');
INSERT INTO `ob_region` VALUES ('441623', '连平县', '3', '441600', '1');
INSERT INTO `ob_region` VALUES ('441624', '和平县', '3', '441600', '1');
INSERT INTO `ob_region` VALUES ('441625', '东源县', '3', '441600', '1');
INSERT INTO `ob_region` VALUES ('441700', '阳江市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('441701', '市辖区', '3', '441700', '1');
INSERT INTO `ob_region` VALUES ('441702', '江城区', '3', '441700', '1');
INSERT INTO `ob_region` VALUES ('441721', '阳西县', '3', '441700', '1');
INSERT INTO `ob_region` VALUES ('441723', '阳东县', '3', '441700', '1');
INSERT INTO `ob_region` VALUES ('441781', '阳春市', '3', '441700', '1');
INSERT INTO `ob_region` VALUES ('441800', '清远市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('441801', '市辖区', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441802', '清城区', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441821', '佛冈县', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441823', '阳山县', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441825', '连山壮族瑶族自治县', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441826', '连南瑶族自治县', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441827', '清新县', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441881', '英德市', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441882', '连州市', '3', '441800', '1');
INSERT INTO `ob_region` VALUES ('441900', '东莞市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('442000', '中山市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('445100', '潮州市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('445101', '市辖区', '3', '445100', '1');
INSERT INTO `ob_region` VALUES ('445102', '湘桥区', '3', '445100', '1');
INSERT INTO `ob_region` VALUES ('445121', '潮安县', '3', '445100', '1');
INSERT INTO `ob_region` VALUES ('445122', '饶平县', '3', '445100', '1');
INSERT INTO `ob_region` VALUES ('445200', '揭阳市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('445201', '市辖区', '3', '445200', '1');
INSERT INTO `ob_region` VALUES ('445202', '榕城区', '3', '445200', '1');
INSERT INTO `ob_region` VALUES ('445221', '揭东县', '3', '445200', '1');
INSERT INTO `ob_region` VALUES ('445222', '揭西县', '3', '445200', '1');
INSERT INTO `ob_region` VALUES ('445224', '惠来县', '3', '445200', '1');
INSERT INTO `ob_region` VALUES ('445281', '普宁市', '3', '445200', '1');
INSERT INTO `ob_region` VALUES ('445300', '云浮市', '2', '440000', '1');
INSERT INTO `ob_region` VALUES ('445301', '市辖区', '3', '445300', '1');
INSERT INTO `ob_region` VALUES ('445302', '云城区', '3', '445300', '1');
INSERT INTO `ob_region` VALUES ('445321', '新兴县', '3', '445300', '1');
INSERT INTO `ob_region` VALUES ('445322', '郁南县', '3', '445300', '1');
INSERT INTO `ob_region` VALUES ('445323', '云安县', '3', '445300', '1');
INSERT INTO `ob_region` VALUES ('445381', '罗定市', '3', '445300', '1');
INSERT INTO `ob_region` VALUES ('450000', '广西省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('450100', '南宁市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450101', '市辖区', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450102', '兴宁区', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450103', '青秀区', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450105', '江南区', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450107', '西乡塘区', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450108', '良庆区', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450109', '邕宁区', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450122', '武鸣县', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450123', '隆安县', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450124', '马山县', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450125', '上林县', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450126', '宾阳县', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450127', '横　县', '3', '450100', '1');
INSERT INTO `ob_region` VALUES ('450200', '柳州市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450201', '市辖区', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450202', '城中区', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450203', '鱼峰区', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450204', '柳南区', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450205', '柳北区', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450221', '柳江县', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450222', '柳城县', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450223', '鹿寨县', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450224', '融安县', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450225', '融水苗族自治县', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450226', '三江侗族自治县', '3', '450200', '1');
INSERT INTO `ob_region` VALUES ('450300', '桂林市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450301', '市辖区', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450302', '秀峰区', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450303', '叠彩区', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450304', '象山区', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450305', '七星区', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450311', '雁山区', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450321', '阳朔县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450322', '临桂县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450323', '灵川县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450324', '全州县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450325', '兴安县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450326', '永福县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450327', '灌阳县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450328', '龙胜各族自治县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450329', '资源县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450330', '平乐县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450331', '荔蒲县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450332', '恭城瑶族自治县', '3', '450300', '1');
INSERT INTO `ob_region` VALUES ('450400', '梧州市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450401', '市辖区', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450403', '万秀区', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450404', '蝶山区', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450405', '长洲区', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450421', '苍梧县', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450422', '藤　县', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450423', '蒙山县', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450481', '岑溪市', '3', '450400', '1');
INSERT INTO `ob_region` VALUES ('450500', '北海市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450501', '市辖区', '3', '450500', '1');
INSERT INTO `ob_region` VALUES ('450502', '海城区', '3', '450500', '1');
INSERT INTO `ob_region` VALUES ('450503', '银海区', '3', '450500', '1');
INSERT INTO `ob_region` VALUES ('450512', '铁山港区', '3', '450500', '1');
INSERT INTO `ob_region` VALUES ('450521', '合浦县', '3', '450500', '1');
INSERT INTO `ob_region` VALUES ('450600', '防城港市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450601', '市辖区', '3', '450600', '1');
INSERT INTO `ob_region` VALUES ('450602', '港口区', '3', '450600', '1');
INSERT INTO `ob_region` VALUES ('450603', '防城区', '3', '450600', '1');
INSERT INTO `ob_region` VALUES ('450621', '上思县', '3', '450600', '1');
INSERT INTO `ob_region` VALUES ('450681', '东兴市', '3', '450600', '1');
INSERT INTO `ob_region` VALUES ('450700', '钦州市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450701', '市辖区', '3', '450700', '1');
INSERT INTO `ob_region` VALUES ('450702', '钦南区', '3', '450700', '1');
INSERT INTO `ob_region` VALUES ('450703', '钦北区', '3', '450700', '1');
INSERT INTO `ob_region` VALUES ('450721', '灵山县', '3', '450700', '1');
INSERT INTO `ob_region` VALUES ('450722', '浦北县', '3', '450700', '1');
INSERT INTO `ob_region` VALUES ('450800', '贵港市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450801', '市辖区', '3', '450800', '1');
INSERT INTO `ob_region` VALUES ('450802', '港北区', '3', '450800', '1');
INSERT INTO `ob_region` VALUES ('450803', '港南区', '3', '450800', '1');
INSERT INTO `ob_region` VALUES ('450804', '覃塘区', '3', '450800', '1');
INSERT INTO `ob_region` VALUES ('450821', '平南县', '3', '450800', '1');
INSERT INTO `ob_region` VALUES ('450881', '桂平市', '3', '450800', '1');
INSERT INTO `ob_region` VALUES ('450900', '玉林市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('450901', '市辖区', '3', '450900', '1');
INSERT INTO `ob_region` VALUES ('450902', '玉州区', '3', '450900', '1');
INSERT INTO `ob_region` VALUES ('450921', '容　县', '3', '450900', '1');
INSERT INTO `ob_region` VALUES ('450922', '陆川县', '3', '450900', '1');
INSERT INTO `ob_region` VALUES ('450923', '博白县', '3', '450900', '1');
INSERT INTO `ob_region` VALUES ('450924', '兴业县', '3', '450900', '1');
INSERT INTO `ob_region` VALUES ('450981', '北流市', '3', '450900', '1');
INSERT INTO `ob_region` VALUES ('451000', '百色市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('451001', '市辖区', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451002', '右江区', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451021', '田阳县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451022', '田东县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451023', '平果县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451024', '德保县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451025', '靖西县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451026', '那坡县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451027', '凌云县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451028', '乐业县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451029', '田林县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451030', '西林县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451031', '隆林各族自治县', '3', '451000', '1');
INSERT INTO `ob_region` VALUES ('451100', '贺州市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('451101', '市辖区', '3', '451100', '1');
INSERT INTO `ob_region` VALUES ('451102', '八步区', '3', '451100', '1');
INSERT INTO `ob_region` VALUES ('451121', '昭平县', '3', '451100', '1');
INSERT INTO `ob_region` VALUES ('451122', '钟山县', '3', '451100', '1');
INSERT INTO `ob_region` VALUES ('451123', '富川瑶族自治县', '3', '451100', '1');
INSERT INTO `ob_region` VALUES ('451200', '河池市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('451201', '市辖区', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451202', '金城江区', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451221', '南丹县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451222', '天峨县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451223', '凤山县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451224', '东兰县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451225', '罗城仫佬族自治县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451226', '环江毛南族自治县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451227', '巴马瑶族自治县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451228', '都安瑶族自治县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451229', '大化瑶族自治县', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451281', '宜州市', '3', '451200', '1');
INSERT INTO `ob_region` VALUES ('451300', '来宾市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('451301', '市辖区', '3', '451300', '1');
INSERT INTO `ob_region` VALUES ('451302', '兴宾区', '3', '451300', '1');
INSERT INTO `ob_region` VALUES ('451321', '忻城县', '3', '451300', '1');
INSERT INTO `ob_region` VALUES ('451322', '象州县', '3', '451300', '1');
INSERT INTO `ob_region` VALUES ('451323', '武宣县', '3', '451300', '1');
INSERT INTO `ob_region` VALUES ('451324', '金秀瑶族自治县', '3', '451300', '1');
INSERT INTO `ob_region` VALUES ('451381', '合山市', '3', '451300', '1');
INSERT INTO `ob_region` VALUES ('451400', '崇左市', '2', '450000', '1');
INSERT INTO `ob_region` VALUES ('451401', '市辖区', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('451402', '江洲区', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('451421', '扶绥县', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('451422', '宁明县', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('451423', '龙州县', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('451424', '大新县', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('451425', '天等县', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('451481', '凭祥市', '3', '451400', '1');
INSERT INTO `ob_region` VALUES ('460000', '海南省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('460100', '海口市', '2', '460000', '1');
INSERT INTO `ob_region` VALUES ('460101', '市辖区', '3', '460100', '1');
INSERT INTO `ob_region` VALUES ('460105', '秀英区', '3', '460100', '1');
INSERT INTO `ob_region` VALUES ('460106', '龙华区', '3', '460100', '1');
INSERT INTO `ob_region` VALUES ('460107', '琼山区', '3', '460100', '1');
INSERT INTO `ob_region` VALUES ('460108', '美兰区', '3', '460100', '1');
INSERT INTO `ob_region` VALUES ('460200', '三亚市', '2', '460000', '1');
INSERT INTO `ob_region` VALUES ('460201', '市辖区', '3', '460200', '1');
INSERT INTO `ob_region` VALUES ('469000', '省直辖县级行政单位', '2', '460000', '1');
INSERT INTO `ob_region` VALUES ('469001', '五指山市', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469002', '琼海市', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469003', '儋州市', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469005', '文昌市', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469006', '万宁市', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469007', '东方市', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469025', '定安县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469026', '屯昌县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469027', '澄迈县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469028', '临高县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469030', '白沙黎族自治县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469031', '昌江黎族自治县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469033', '乐东黎族自治县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469034', '陵水黎族自治县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469035', '保亭黎族苗族自治县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469036', '琼中黎族苗族自治县', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469037', '西沙群岛', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469038', '南沙群岛', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('469039', '中沙群岛的岛礁及其海域', '3', '469000', '1');
INSERT INTO `ob_region` VALUES ('500000', '重庆市', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('500100', '市辖区', '2', '500000', '1');
INSERT INTO `ob_region` VALUES ('500101', '万州区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500102', '涪陵区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500103', '渝中区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500104', '大渡口区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500105', '江北区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500106', '沙坪坝区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500107', '九龙坡区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500108', '南岸区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500109', '北碚区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500110', '万盛区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500111', '双桥区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500112', '渝北区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500113', '巴南区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500114', '黔江区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500115', '长寿区', '3', '500100', '1');
INSERT INTO `ob_region` VALUES ('500200', '县', '2', '500000', '1');
INSERT INTO `ob_region` VALUES ('500222', '綦江县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500223', '潼南县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500224', '铜梁县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500225', '大足县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500226', '荣昌县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500227', '璧山县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500228', '梁平县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500229', '城口县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500230', '丰都县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500231', '垫江县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500232', '武隆县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500233', '忠　县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500234', '开　县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500235', '云阳县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500236', '奉节县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500237', '巫山县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500238', '巫溪县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500240', '石柱土家族自治县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500241', '秀山土家族苗族自治县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500242', '酉阳土家族苗族自治县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500243', '彭水苗族土家族自治县', '3', '500200', '1');
INSERT INTO `ob_region` VALUES ('500300', '市', '2', '500000', '1');
INSERT INTO `ob_region` VALUES ('500381', '江津市', '3', '500300', '1');
INSERT INTO `ob_region` VALUES ('500382', '合川市', '3', '500300', '1');
INSERT INTO `ob_region` VALUES ('500383', '永川市', '3', '500300', '1');
INSERT INTO `ob_region` VALUES ('500384', '南川市', '3', '500300', '1');
INSERT INTO `ob_region` VALUES ('510000', '四川省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('510100', '成都市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510101', '市辖区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510104', '锦江区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510105', '青羊区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510106', '金牛区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510107', '武侯区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510108', '成华区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510112', '龙泉驿区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510113', '青白江区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510114', '新都区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510115', '温江区', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510121', '金堂县', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510122', '双流县', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510124', '郫　县', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510129', '大邑县', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510131', '蒲江县', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510132', '新津县', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510181', '都江堰市', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510182', '彭州市', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510183', '邛崃市', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510184', '崇州市', '3', '510100', '1');
INSERT INTO `ob_region` VALUES ('510300', '自贡市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510301', '市辖区', '3', '510300', '1');
INSERT INTO `ob_region` VALUES ('510302', '自流井区', '3', '510300', '1');
INSERT INTO `ob_region` VALUES ('510303', '贡井区', '3', '510300', '1');
INSERT INTO `ob_region` VALUES ('510304', '大安区', '3', '510300', '1');
INSERT INTO `ob_region` VALUES ('510311', '沿滩区', '3', '510300', '1');
INSERT INTO `ob_region` VALUES ('510321', '荣　县', '3', '510300', '1');
INSERT INTO `ob_region` VALUES ('510322', '富顺县', '3', '510300', '1');
INSERT INTO `ob_region` VALUES ('510400', '攀枝花市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510401', '市辖区', '3', '510400', '1');
INSERT INTO `ob_region` VALUES ('510402', '东　区', '3', '510400', '1');
INSERT INTO `ob_region` VALUES ('510403', '西　区', '3', '510400', '1');
INSERT INTO `ob_region` VALUES ('510411', '仁和区', '3', '510400', '1');
INSERT INTO `ob_region` VALUES ('510421', '米易县', '3', '510400', '1');
INSERT INTO `ob_region` VALUES ('510422', '盐边县', '3', '510400', '1');
INSERT INTO `ob_region` VALUES ('510500', '泸州市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510501', '市辖区', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510502', '江阳区', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510503', '纳溪区', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510504', '龙马潭区', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510521', '泸　县', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510522', '合江县', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510524', '叙永县', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510525', '古蔺县', '3', '510500', '1');
INSERT INTO `ob_region` VALUES ('510600', '德阳市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510601', '市辖区', '3', '510600', '1');
INSERT INTO `ob_region` VALUES ('510603', '旌阳区', '3', '510600', '1');
INSERT INTO `ob_region` VALUES ('510623', '中江县', '3', '510600', '1');
INSERT INTO `ob_region` VALUES ('510626', '罗江县', '3', '510600', '1');
INSERT INTO `ob_region` VALUES ('510681', '广汉市', '3', '510600', '1');
INSERT INTO `ob_region` VALUES ('510682', '什邡市', '3', '510600', '1');
INSERT INTO `ob_region` VALUES ('510683', '绵竹市', '3', '510600', '1');
INSERT INTO `ob_region` VALUES ('510700', '绵阳市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510701', '市辖区', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510703', '涪城区', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510704', '游仙区', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510722', '三台县', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510723', '盐亭县', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510724', '安　县', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510725', '梓潼县', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510726', '北川羌族自治县', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510727', '平武县', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510781', '江油市', '3', '510700', '1');
INSERT INTO `ob_region` VALUES ('510800', '广元市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510801', '市辖区', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510802', '市中区', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510811', '元坝区', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510812', '朝天区', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510821', '旺苍县', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510822', '青川县', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510823', '剑阁县', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510824', '苍溪县', '3', '510800', '1');
INSERT INTO `ob_region` VALUES ('510900', '遂宁市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('510901', '市辖区', '3', '510900', '1');
INSERT INTO `ob_region` VALUES ('510903', '船山区', '3', '510900', '1');
INSERT INTO `ob_region` VALUES ('510904', '安居区', '3', '510900', '1');
INSERT INTO `ob_region` VALUES ('510921', '蓬溪县', '3', '510900', '1');
INSERT INTO `ob_region` VALUES ('510922', '射洪县', '3', '510900', '1');
INSERT INTO `ob_region` VALUES ('510923', '大英县', '3', '510900', '1');
INSERT INTO `ob_region` VALUES ('511000', '内江市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511001', '市辖区', '3', '511000', '1');
INSERT INTO `ob_region` VALUES ('511002', '市中区', '3', '511000', '1');
INSERT INTO `ob_region` VALUES ('511011', '东兴区', '3', '511000', '1');
INSERT INTO `ob_region` VALUES ('511024', '威远县', '3', '511000', '1');
INSERT INTO `ob_region` VALUES ('511025', '资中县', '3', '511000', '1');
INSERT INTO `ob_region` VALUES ('511028', '隆昌县', '3', '511000', '1');
INSERT INTO `ob_region` VALUES ('511100', '乐山市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511101', '市辖区', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511102', '市中区', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511111', '沙湾区', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511112', '五通桥区', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511113', '金口河区', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511123', '犍为县', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511124', '井研县', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511126', '夹江县', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511129', '沐川县', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511132', '峨边彝族自治县', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511133', '马边彝族自治县', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511181', '峨眉山市', '3', '511100', '1');
INSERT INTO `ob_region` VALUES ('511300', '南充市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511301', '市辖区', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511302', '顺庆区', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511303', '高坪区', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511304', '嘉陵区', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511321', '南部县', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511322', '营山县', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511323', '蓬安县', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511324', '仪陇县', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511325', '西充县', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511381', '阆中市', '3', '511300', '1');
INSERT INTO `ob_region` VALUES ('511400', '眉山市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511401', '市辖区', '3', '511400', '1');
INSERT INTO `ob_region` VALUES ('511402', '东坡区', '3', '511400', '1');
INSERT INTO `ob_region` VALUES ('511421', '仁寿县', '3', '511400', '1');
INSERT INTO `ob_region` VALUES ('511422', '彭山县', '3', '511400', '1');
INSERT INTO `ob_region` VALUES ('511423', '洪雅县', '3', '511400', '1');
INSERT INTO `ob_region` VALUES ('511424', '丹棱县', '3', '511400', '1');
INSERT INTO `ob_region` VALUES ('511425', '青神县', '3', '511400', '1');
INSERT INTO `ob_region` VALUES ('511500', '宜宾市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511501', '市辖区', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511502', '翠屏区', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511521', '宜宾县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511522', '南溪县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511523', '江安县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511524', '长宁县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511525', '高　县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511526', '珙　县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511527', '筠连县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511528', '兴文县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511529', '屏山县', '3', '511500', '1');
INSERT INTO `ob_region` VALUES ('511600', '广安市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511601', '市辖区', '3', '511600', '1');
INSERT INTO `ob_region` VALUES ('511602', '广安区', '3', '511600', '1');
INSERT INTO `ob_region` VALUES ('511621', '岳池县', '3', '511600', '1');
INSERT INTO `ob_region` VALUES ('511622', '武胜县', '3', '511600', '1');
INSERT INTO `ob_region` VALUES ('511623', '邻水县', '3', '511600', '1');
INSERT INTO `ob_region` VALUES ('511681', '华莹市', '3', '511600', '1');
INSERT INTO `ob_region` VALUES ('511700', '达州市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511701', '市辖区', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511702', '通川区', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511721', '达　县', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511722', '宣汉县', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511723', '开江县', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511724', '大竹县', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511725', '渠　县', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511781', '万源市', '3', '511700', '1');
INSERT INTO `ob_region` VALUES ('511800', '雅安市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511801', '市辖区', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511802', '雨城区', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511821', '名山县', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511822', '荥经县', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511823', '汉源县', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511824', '石棉县', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511825', '天全县', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511826', '芦山县', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511827', '宝兴县', '3', '511800', '1');
INSERT INTO `ob_region` VALUES ('511900', '巴中市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('511901', '市辖区', '3', '511900', '1');
INSERT INTO `ob_region` VALUES ('511902', '巴州区', '3', '511900', '1');
INSERT INTO `ob_region` VALUES ('511921', '通江县', '3', '511900', '1');
INSERT INTO `ob_region` VALUES ('511922', '南江县', '3', '511900', '1');
INSERT INTO `ob_region` VALUES ('511923', '平昌县', '3', '511900', '1');
INSERT INTO `ob_region` VALUES ('512000', '资阳市', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('512001', '市辖区', '3', '512000', '1');
INSERT INTO `ob_region` VALUES ('512002', '雁江区', '3', '512000', '1');
INSERT INTO `ob_region` VALUES ('512021', '安岳县', '3', '512000', '1');
INSERT INTO `ob_region` VALUES ('512022', '乐至县', '3', '512000', '1');
INSERT INTO `ob_region` VALUES ('512081', '简阳市', '3', '512000', '1');
INSERT INTO `ob_region` VALUES ('513200', '阿坝藏族羌族自治州', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('513221', '汶川县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513222', '理　县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513223', '茂　县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513224', '松潘县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513225', '九寨沟县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513226', '金川县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513227', '小金县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513228', '黑水县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513229', '马尔康县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513230', '壤塘县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513231', '阿坝县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513232', '若尔盖县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513233', '红原县', '3', '513200', '1');
INSERT INTO `ob_region` VALUES ('513300', '甘孜藏族自治州', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('513321', '康定县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513322', '泸定县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513323', '丹巴县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513324', '九龙县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513325', '雅江县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513326', '道孚县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513327', '炉霍县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513328', '甘孜县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513329', '新龙县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513330', '德格县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513331', '白玉县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513332', '石渠县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513333', '色达县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513334', '理塘县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513335', '巴塘县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513336', '乡城县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513337', '稻城县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513338', '得荣县', '3', '513300', '1');
INSERT INTO `ob_region` VALUES ('513400', '凉山彝族自治州', '2', '510000', '1');
INSERT INTO `ob_region` VALUES ('513401', '西昌市', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513422', '木里藏族自治县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513423', '盐源县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513424', '德昌县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513425', '会理县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513426', '会东县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513427', '宁南县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513428', '普格县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513429', '布拖县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513430', '金阳县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513431', '昭觉县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513432', '喜德县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513433', '冕宁县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513434', '越西县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513435', '甘洛县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513436', '美姑县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('513437', '雷波县', '3', '513400', '1');
INSERT INTO `ob_region` VALUES ('520000', '贵州省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('520100', '贵阳市', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('520101', '市辖区', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520102', '南明区', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520103', '云岩区', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520111', '花溪区', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520112', '乌当区', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520113', '白云区', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520114', '小河区', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520121', '开阳县', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520122', '息烽县', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520123', '修文县', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520181', '清镇市', '3', '520100', '1');
INSERT INTO `ob_region` VALUES ('520200', '六盘水市', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('520201', '钟山区', '3', '520200', '1');
INSERT INTO `ob_region` VALUES ('520203', '六枝特区', '3', '520200', '1');
INSERT INTO `ob_region` VALUES ('520221', '水城县', '3', '520200', '1');
INSERT INTO `ob_region` VALUES ('520222', '盘　县', '3', '520200', '1');
INSERT INTO `ob_region` VALUES ('520300', '遵义市', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('520301', '市辖区', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520302', '红花岗区', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520303', '汇川区', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520321', '遵义县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520322', '桐梓县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520323', '绥阳县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520324', '正安县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520325', '道真仡佬族苗族自治县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520326', '务川仡佬族苗族自治县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520327', '凤冈县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520328', '湄潭县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520329', '余庆县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520330', '习水县', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520381', '赤水市', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520382', '仁怀市', '3', '520300', '1');
INSERT INTO `ob_region` VALUES ('520400', '安顺市', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('520401', '市辖区', '3', '520400', '1');
INSERT INTO `ob_region` VALUES ('520402', '西秀区', '3', '520400', '1');
INSERT INTO `ob_region` VALUES ('520421', '平坝县', '3', '520400', '1');
INSERT INTO `ob_region` VALUES ('520422', '普定县', '3', '520400', '1');
INSERT INTO `ob_region` VALUES ('520423', '镇宁布依族苗族自治县', '3', '520400', '1');
INSERT INTO `ob_region` VALUES ('520424', '关岭布依族苗族自治县', '3', '520400', '1');
INSERT INTO `ob_region` VALUES ('520425', '紫云苗族布依族自治县', '3', '520400', '1');
INSERT INTO `ob_region` VALUES ('522200', '铜仁地区', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('522201', '铜仁市', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522222', '江口县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522223', '玉屏侗族自治县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522224', '石阡县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522225', '思南县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522226', '印江土家族苗族自治县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522227', '德江县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522228', '沿河土家族自治县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522229', '松桃苗族自治县', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522230', '万山特区', '3', '522200', '1');
INSERT INTO `ob_region` VALUES ('522300', '黔西南布依族苗族自治州', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('522301', '兴义市', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522322', '兴仁县', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522323', '普安县', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522324', '晴隆县', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522325', '贞丰县', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522326', '望谟县', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522327', '册亨县', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522328', '安龙县', '3', '522300', '1');
INSERT INTO `ob_region` VALUES ('522400', '毕节地区', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('522401', '毕节市', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522422', '大方县', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522423', '黔西县', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522424', '金沙县', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522425', '织金县', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522426', '纳雍县', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522427', '威宁彝族回族苗族自治县', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522428', '赫章县', '3', '522400', '1');
INSERT INTO `ob_region` VALUES ('522600', '黔东南苗族侗族自治州', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('522601', '凯里市', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522622', '黄平县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522623', '施秉县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522624', '三穗县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522625', '镇远县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522626', '岑巩县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522627', '天柱县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522628', '锦屏县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522629', '剑河县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522630', '台江县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522631', '黎平县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522632', '榕江县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522633', '从江县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522634', '雷山县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522635', '麻江县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522636', '丹寨县', '3', '522600', '1');
INSERT INTO `ob_region` VALUES ('522700', '黔南布依族苗族自治州', '2', '520000', '1');
INSERT INTO `ob_region` VALUES ('522701', '都匀市', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522702', '福泉市', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522722', '荔波县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522723', '贵定县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522725', '瓮安县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522726', '独山县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522727', '平塘县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522728', '罗甸县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522729', '长顺县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522730', '龙里县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522731', '惠水县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('522732', '三都水族自治县', '3', '522700', '1');
INSERT INTO `ob_region` VALUES ('530000', '云南省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('530100', '昆明市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530101', '市辖区', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530102', '五华区', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530103', '盘龙区', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530111', '官渡区', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530112', '西山区', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530113', '东川区', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530121', '呈贡县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530122', '晋宁县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530124', '富民县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530125', '宜良县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530126', '石林彝族自治县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530127', '嵩明县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530128', '禄劝彝族苗族自治县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530129', '寻甸回族彝族自治县', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530181', '安宁市', '3', '530100', '1');
INSERT INTO `ob_region` VALUES ('530300', '曲靖市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530301', '市辖区', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530302', '麒麟区', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530321', '马龙县', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530322', '陆良县', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530323', '师宗县', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530324', '罗平县', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530325', '富源县', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530326', '会泽县', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530328', '沾益县', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530381', '宣威市', '3', '530300', '1');
INSERT INTO `ob_region` VALUES ('530400', '玉溪市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530401', '市辖区', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530402', '红塔区', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530421', '江川县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530422', '澄江县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530423', '通海县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530424', '华宁县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530425', '易门县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530426', '峨山彝族自治县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530427', '新平彝族傣族自治县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530428', '元江哈尼族彝族傣族自治县', '3', '530400', '1');
INSERT INTO `ob_region` VALUES ('530500', '保山市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530501', '市辖区', '3', '530500', '1');
INSERT INTO `ob_region` VALUES ('530502', '隆阳区', '3', '530500', '1');
INSERT INTO `ob_region` VALUES ('530521', '施甸县', '3', '530500', '1');
INSERT INTO `ob_region` VALUES ('530522', '腾冲县', '3', '530500', '1');
INSERT INTO `ob_region` VALUES ('530523', '龙陵县', '3', '530500', '1');
INSERT INTO `ob_region` VALUES ('530524', '昌宁县', '3', '530500', '1');
INSERT INTO `ob_region` VALUES ('530600', '昭通市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530601', '市辖区', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530602', '昭阳区', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530621', '鲁甸县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530622', '巧家县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530623', '盐津县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530624', '大关县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530625', '永善县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530626', '绥江县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530627', '镇雄县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530628', '彝良县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530629', '威信县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530630', '水富县', '3', '530600', '1');
INSERT INTO `ob_region` VALUES ('530700', '丽江市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530701', '市辖区', '3', '530700', '1');
INSERT INTO `ob_region` VALUES ('530702', '古城区', '3', '530700', '1');
INSERT INTO `ob_region` VALUES ('530721', '玉龙纳西族自治县', '3', '530700', '1');
INSERT INTO `ob_region` VALUES ('530722', '永胜县', '3', '530700', '1');
INSERT INTO `ob_region` VALUES ('530723', '华坪县', '3', '530700', '1');
INSERT INTO `ob_region` VALUES ('530724', '宁蒗彝族自治县', '3', '530700', '1');
INSERT INTO `ob_region` VALUES ('530800', '思茅市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530801', '市辖区', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530802', '翠云区', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530821', '普洱哈尼族彝族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530822', '墨江哈尼族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530823', '景东彝族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530824', '景谷傣族彝族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530826', '江城哈尼族彝族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530828', '澜沧拉祜族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530829', '西盟佤族自治县', '3', '530800', '1');
INSERT INTO `ob_region` VALUES ('530900', '临沧市', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('530901', '市辖区', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530902', '临翔区', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530921', '凤庆县', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530922', '云　县', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530923', '永德县', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530924', '镇康县', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530926', '耿马傣族佤族自治县', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('530927', '沧源佤族自治县', '3', '530900', '1');
INSERT INTO `ob_region` VALUES ('532300', '楚雄彝族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('532301', '楚雄市', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532322', '双柏县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532323', '牟定县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532324', '南华县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532325', '姚安县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532326', '大姚县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532327', '永仁县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532328', '元谋县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532329', '武定县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532331', '禄丰县', '3', '532300', '1');
INSERT INTO `ob_region` VALUES ('532500', '红河哈尼族彝族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('532501', '个旧市', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532502', '开远市', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532522', '蒙自县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532523', '屏边苗族自治县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532524', '建水县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532525', '石屏县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532526', '弥勒县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532527', '泸西县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532528', '元阳县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532529', '红河县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532530', '金平苗族瑶族傣族自治县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532531', '绿春县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532532', '河口瑶族自治县', '3', '532500', '1');
INSERT INTO `ob_region` VALUES ('532600', '文山壮族苗族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('532621', '文山县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532622', '砚山县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532623', '西畴县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532624', '麻栗坡县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532625', '马关县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532626', '丘北县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532627', '广南县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532628', '富宁县', '3', '532600', '1');
INSERT INTO `ob_region` VALUES ('532800', '西双版纳傣族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('532801', '景洪市', '3', '532800', '1');
INSERT INTO `ob_region` VALUES ('532822', '勐海县', '3', '532800', '1');
INSERT INTO `ob_region` VALUES ('532823', '勐腊县', '3', '532800', '1');
INSERT INTO `ob_region` VALUES ('532900', '大理白族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('532901', '大理市', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532922', '漾濞彝族自治县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532923', '祥云县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532924', '宾川县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532925', '弥渡县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532926', '南涧彝族自治县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532927', '巍山彝族回族自治县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532928', '永平县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532929', '云龙县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532930', '洱源县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532931', '剑川县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('532932', '鹤庆县', '3', '532900', '1');
INSERT INTO `ob_region` VALUES ('533100', '德宏傣族景颇族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('533102', '瑞丽市', '3', '533100', '1');
INSERT INTO `ob_region` VALUES ('533103', '潞西市', '3', '533100', '1');
INSERT INTO `ob_region` VALUES ('533122', '梁河县', '3', '533100', '1');
INSERT INTO `ob_region` VALUES ('533123', '盈江县', '3', '533100', '1');
INSERT INTO `ob_region` VALUES ('533124', '陇川县', '3', '533100', '1');
INSERT INTO `ob_region` VALUES ('533300', '怒江傈僳族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('533321', '泸水县', '3', '533300', '1');
INSERT INTO `ob_region` VALUES ('533323', '福贡县', '3', '533300', '1');
INSERT INTO `ob_region` VALUES ('533324', '贡山独龙族怒族自治县', '3', '533300', '1');
INSERT INTO `ob_region` VALUES ('533325', '兰坪白族普米族自治县', '3', '533300', '1');
INSERT INTO `ob_region` VALUES ('533400', '迪庆藏族自治州', '2', '530000', '1');
INSERT INTO `ob_region` VALUES ('533421', '香格里拉县', '3', '533400', '1');
INSERT INTO `ob_region` VALUES ('533422', '德钦县', '3', '533400', '1');
INSERT INTO `ob_region` VALUES ('533423', '维西傈僳族自治县', '3', '533400', '1');
INSERT INTO `ob_region` VALUES ('540000', '西　藏', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('540100', '拉萨市', '2', '540000', '1');
INSERT INTO `ob_region` VALUES ('540101', '市辖区', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540102', '城关区', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540121', '林周县', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540122', '当雄县', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540123', '尼木县', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540124', '曲水县', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540125', '堆龙德庆县', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540126', '达孜县', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('540127', '墨竹工卡县', '3', '540100', '1');
INSERT INTO `ob_region` VALUES ('542100', '昌都地区', '2', '540000', '1');
INSERT INTO `ob_region` VALUES ('542121', '昌都县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542122', '江达县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542123', '贡觉县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542124', '类乌齐县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542125', '丁青县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542126', '察雅县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542127', '八宿县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542128', '左贡县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542129', '芒康县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542132', '洛隆县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542133', '边坝县', '3', '542100', '1');
INSERT INTO `ob_region` VALUES ('542200', '山南地区', '2', '540000', '1');
INSERT INTO `ob_region` VALUES ('542221', '乃东县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542222', '扎囊县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542223', '贡嘎县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542224', '桑日县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542225', '琼结县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542226', '曲松县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542227', '措美县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542228', '洛扎县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542229', '加查县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542231', '隆子县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542232', '错那县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542233', '浪卡子县', '3', '542200', '1');
INSERT INTO `ob_region` VALUES ('542300', '日喀则地区', '2', '540000', '1');
INSERT INTO `ob_region` VALUES ('542301', '日喀则市', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542322', '南木林县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542323', '江孜县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542324', '定日县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542325', '萨迦县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542326', '拉孜县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542327', '昂仁县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542328', '谢通门县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542329', '白朗县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542330', '仁布县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542331', '康马县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542332', '定结县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542333', '仲巴县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542334', '亚东县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542335', '吉隆县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542336', '聂拉木县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542337', '萨嘎县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542338', '岗巴县', '3', '542300', '1');
INSERT INTO `ob_region` VALUES ('542400', '那曲地区', '2', '540000', '1');
INSERT INTO `ob_region` VALUES ('542421', '那曲县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542422', '嘉黎县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542423', '比如县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542424', '聂荣县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542425', '安多县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542426', '申扎县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542427', '索　县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542428', '班戈县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542429', '巴青县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542430', '尼玛县', '3', '542400', '1');
INSERT INTO `ob_region` VALUES ('542500', '阿里地区', '2', '540000', '1');
INSERT INTO `ob_region` VALUES ('542521', '普兰县', '3', '542500', '1');
INSERT INTO `ob_region` VALUES ('542522', '札达县', '3', '542500', '1');
INSERT INTO `ob_region` VALUES ('542523', '噶尔县', '3', '542500', '1');
INSERT INTO `ob_region` VALUES ('542524', '日土县', '3', '542500', '1');
INSERT INTO `ob_region` VALUES ('542525', '革吉县', '3', '542500', '1');
INSERT INTO `ob_region` VALUES ('542526', '改则县', '3', '542500', '1');
INSERT INTO `ob_region` VALUES ('542527', '措勤县', '3', '542500', '1');
INSERT INTO `ob_region` VALUES ('542600', '林芝地区', '2', '540000', '1');
INSERT INTO `ob_region` VALUES ('542621', '林芝县', '3', '542600', '1');
INSERT INTO `ob_region` VALUES ('542622', '工布江达县', '3', '542600', '1');
INSERT INTO `ob_region` VALUES ('542623', '米林县', '3', '542600', '1');
INSERT INTO `ob_region` VALUES ('542624', '墨脱县', '3', '542600', '1');
INSERT INTO `ob_region` VALUES ('542625', '波密县', '3', '542600', '1');
INSERT INTO `ob_region` VALUES ('542626', '察隅县', '3', '542600', '1');
INSERT INTO `ob_region` VALUES ('542627', '朗　县', '3', '542600', '1');
INSERT INTO `ob_region` VALUES ('610000', '陕西省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('610100', '西安市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610101', '市辖区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610102', '新城区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610103', '碑林区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610104', '莲湖区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610111', '灞桥区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610112', '未央区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610113', '雁塔区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610114', '阎良区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610115', '临潼区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610116', '长安区', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610122', '蓝田县', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610124', '周至县', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610125', '户　县', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610126', '高陵县', '3', '610100', '1');
INSERT INTO `ob_region` VALUES ('610200', '铜川市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610201', '市辖区', '3', '610200', '1');
INSERT INTO `ob_region` VALUES ('610202', '王益区', '3', '610200', '1');
INSERT INTO `ob_region` VALUES ('610203', '印台区', '3', '610200', '1');
INSERT INTO `ob_region` VALUES ('610204', '耀州区', '3', '610200', '1');
INSERT INTO `ob_region` VALUES ('610222', '宜君县', '3', '610200', '1');
INSERT INTO `ob_region` VALUES ('610300', '宝鸡市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610301', '市辖区', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610302', '渭滨区', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610303', '金台区', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610304', '陈仓区', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610322', '凤翔县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610323', '岐山县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610324', '扶风县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610326', '眉　县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610327', '陇　县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610328', '千阳县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610329', '麟游县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610330', '凤　县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610331', '太白县', '3', '610300', '1');
INSERT INTO `ob_region` VALUES ('610400', '咸阳市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610401', '市辖区', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610402', '秦都区', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610403', '杨凌区', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610404', '渭城区', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610422', '三原县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610423', '泾阳县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610424', '乾　县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610425', '礼泉县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610426', '永寿县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610427', '彬　县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610428', '长武县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610429', '旬邑县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610430', '淳化县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610431', '武功县', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610481', '兴平市', '3', '610400', '1');
INSERT INTO `ob_region` VALUES ('610500', '渭南市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610501', '市辖区', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610502', '临渭区', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610521', '华　县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610522', '潼关县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610523', '大荔县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610524', '合阳县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610525', '澄城县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610526', '蒲城县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610527', '白水县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610528', '富平县', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610581', '韩城市', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610582', '华阴市', '3', '610500', '1');
INSERT INTO `ob_region` VALUES ('610600', '延安市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610601', '市辖区', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610602', '宝塔区', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610621', '延长县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610622', '延川县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610623', '子长县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610624', '安塞县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610625', '志丹县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610626', '吴旗县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610627', '甘泉县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610628', '富　县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610629', '洛川县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610630', '宜川县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610631', '黄龙县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610632', '黄陵县', '3', '610600', '1');
INSERT INTO `ob_region` VALUES ('610700', '汉中市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610701', '市辖区', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610702', '汉台区', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610721', '南郑县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610722', '城固县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610723', '洋　县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610724', '西乡县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610725', '勉　县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610726', '宁强县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610727', '略阳县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610728', '镇巴县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610729', '留坝县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610730', '佛坪县', '3', '610700', '1');
INSERT INTO `ob_region` VALUES ('610800', '榆林市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610801', '市辖区', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610802', '榆阳区', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610821', '神木县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610822', '府谷县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610823', '横山县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610824', '靖边县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610825', '定边县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610826', '绥德县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610827', '米脂县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610828', '佳　县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610829', '吴堡县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610830', '清涧县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610831', '子洲县', '3', '610800', '1');
INSERT INTO `ob_region` VALUES ('610900', '安康市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('610901', '市辖区', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610902', '汉滨区', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610921', '汉阴县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610922', '石泉县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610923', '宁陕县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610924', '紫阳县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610925', '岚皋县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610926', '平利县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610927', '镇坪县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610928', '旬阳县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('610929', '白河县', '3', '610900', '1');
INSERT INTO `ob_region` VALUES ('611000', '商洛市', '2', '610000', '1');
INSERT INTO `ob_region` VALUES ('611001', '市辖区', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('611002', '商州区', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('611021', '洛南县', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('611022', '丹凤县', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('611023', '商南县', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('611024', '山阳县', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('611025', '镇安县', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('611026', '柞水县', '3', '611000', '1');
INSERT INTO `ob_region` VALUES ('620000', '甘肃省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('620100', '兰州市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620101', '市辖区', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620102', '城关区', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620103', '七里河区', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620104', '西固区', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620105', '安宁区', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620111', '红古区', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620121', '永登县', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620122', '皋兰县', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620123', '榆中县', '3', '620100', '1');
INSERT INTO `ob_region` VALUES ('620200', '嘉峪关市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620201', '市辖区', '3', '620200', '1');
INSERT INTO `ob_region` VALUES ('620300', '金昌市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620301', '市辖区', '3', '620300', '1');
INSERT INTO `ob_region` VALUES ('620302', '金川区', '3', '620300', '1');
INSERT INTO `ob_region` VALUES ('620321', '永昌县', '3', '620300', '1');
INSERT INTO `ob_region` VALUES ('620400', '白银市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620401', '市辖区', '3', '620400', '1');
INSERT INTO `ob_region` VALUES ('620402', '白银区', '3', '620400', '1');
INSERT INTO `ob_region` VALUES ('620403', '平川区', '3', '620400', '1');
INSERT INTO `ob_region` VALUES ('620421', '靖远县', '3', '620400', '1');
INSERT INTO `ob_region` VALUES ('620422', '会宁县', '3', '620400', '1');
INSERT INTO `ob_region` VALUES ('620423', '景泰县', '3', '620400', '1');
INSERT INTO `ob_region` VALUES ('620500', '天水市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620501', '市辖区', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620502', '秦城区', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620503', '北道区', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620521', '清水县', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620522', '秦安县', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620523', '甘谷县', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620524', '武山县', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620525', '张家川回族自治县', '3', '620500', '1');
INSERT INTO `ob_region` VALUES ('620600', '武威市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620601', '市辖区', '3', '620600', '1');
INSERT INTO `ob_region` VALUES ('620602', '凉州区', '3', '620600', '1');
INSERT INTO `ob_region` VALUES ('620621', '民勤县', '3', '620600', '1');
INSERT INTO `ob_region` VALUES ('620622', '古浪县', '3', '620600', '1');
INSERT INTO `ob_region` VALUES ('620623', '天祝藏族自治县', '3', '620600', '1');
INSERT INTO `ob_region` VALUES ('620700', '张掖市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620701', '市辖区', '3', '620700', '1');
INSERT INTO `ob_region` VALUES ('620702', '甘州区', '3', '620700', '1');
INSERT INTO `ob_region` VALUES ('620721', '肃南裕固族自治县', '3', '620700', '1');
INSERT INTO `ob_region` VALUES ('620722', '民乐县', '3', '620700', '1');
INSERT INTO `ob_region` VALUES ('620723', '临泽县', '3', '620700', '1');
INSERT INTO `ob_region` VALUES ('620724', '高台县', '3', '620700', '1');
INSERT INTO `ob_region` VALUES ('620725', '山丹县', '3', '620700', '1');
INSERT INTO `ob_region` VALUES ('620800', '平凉市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620801', '市辖区', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620802', '崆峒区', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620821', '泾川县', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620822', '灵台县', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620823', '崇信县', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620824', '华亭县', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620825', '庄浪县', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620826', '静宁县', '3', '620800', '1');
INSERT INTO `ob_region` VALUES ('620900', '酒泉市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('620901', '市辖区', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('620902', '肃州区', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('620921', '金塔县', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('620922', '安西县', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('620923', '肃北蒙古族自治县', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('620924', '阿克塞哈萨克族自治县', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('620981', '玉门市', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('620982', '敦煌市', '3', '620900', '1');
INSERT INTO `ob_region` VALUES ('621000', '庆阳市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('621001', '市辖区', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621002', '西峰区', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621021', '庆城县', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621022', '环　县', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621023', '华池县', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621024', '合水县', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621025', '正宁县', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621026', '宁　县', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621027', '镇原县', '3', '621000', '1');
INSERT INTO `ob_region` VALUES ('621100', '定西市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('621101', '市辖区', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621102', '安定区', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621121', '通渭县', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621122', '陇西县', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621123', '渭源县', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621124', '临洮县', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621125', '漳　县', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621126', '岷　县', '3', '621100', '1');
INSERT INTO `ob_region` VALUES ('621200', '陇南市', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('621201', '市辖区', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621202', '武都区', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621221', '成　县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621222', '文　县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621223', '宕昌县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621224', '康　县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621225', '西和县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621226', '礼　县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621227', '徽　县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('621228', '两当县', '3', '621200', '1');
INSERT INTO `ob_region` VALUES ('622900', '临夏回族自治州', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('622901', '临夏市', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('622921', '临夏县', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('622922', '康乐县', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('622923', '永靖县', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('622924', '广河县', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('622925', '和政县', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('622926', '东乡族自治县', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '3', '622900', '1');
INSERT INTO `ob_region` VALUES ('623000', '甘南藏族自治州', '2', '620000', '1');
INSERT INTO `ob_region` VALUES ('623001', '合作市', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('623021', '临潭县', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('623022', '卓尼县', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('623023', '舟曲县', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('623024', '迭部县', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('623025', '玛曲县', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('623026', '碌曲县', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('623027', '夏河县', '3', '623000', '1');
INSERT INTO `ob_region` VALUES ('630000', '青海省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('630100', '西宁市', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('630101', '市辖区', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('630102', '城东区', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('630103', '城中区', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('630104', '城西区', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('630105', '城北区', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('630121', '大通回族土族自治县', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('630122', '湟中县', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('630123', '湟源县', '3', '630100', '1');
INSERT INTO `ob_region` VALUES ('632100', '海东地区', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('632121', '平安县', '3', '632100', '1');
INSERT INTO `ob_region` VALUES ('632122', '民和回族土族自治县', '3', '632100', '1');
INSERT INTO `ob_region` VALUES ('632123', '乐都县', '3', '632100', '1');
INSERT INTO `ob_region` VALUES ('632126', '互助土族自治县', '3', '632100', '1');
INSERT INTO `ob_region` VALUES ('632127', '化隆回族自治县', '3', '632100', '1');
INSERT INTO `ob_region` VALUES ('632128', '循化撒拉族自治县', '3', '632100', '1');
INSERT INTO `ob_region` VALUES ('632200', '海北藏族自治州', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('632221', '门源回族自治县', '3', '632200', '1');
INSERT INTO `ob_region` VALUES ('632222', '祁连县', '3', '632200', '1');
INSERT INTO `ob_region` VALUES ('632223', '海晏县', '3', '632200', '1');
INSERT INTO `ob_region` VALUES ('632224', '刚察县', '3', '632200', '1');
INSERT INTO `ob_region` VALUES ('632300', '黄南藏族自治州', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('632321', '同仁县', '3', '632300', '1');
INSERT INTO `ob_region` VALUES ('632322', '尖扎县', '3', '632300', '1');
INSERT INTO `ob_region` VALUES ('632323', '泽库县', '3', '632300', '1');
INSERT INTO `ob_region` VALUES ('632324', '河南蒙古族自治县', '3', '632300', '1');
INSERT INTO `ob_region` VALUES ('632500', '海南藏族自治州', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('632521', '共和县', '3', '632500', '1');
INSERT INTO `ob_region` VALUES ('632522', '同德县', '3', '632500', '1');
INSERT INTO `ob_region` VALUES ('632523', '贵德县', '3', '632500', '1');
INSERT INTO `ob_region` VALUES ('632524', '兴海县', '3', '632500', '1');
INSERT INTO `ob_region` VALUES ('632525', '贵南县', '3', '632500', '1');
INSERT INTO `ob_region` VALUES ('632600', '果洛藏族自治州', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('632621', '玛沁县', '3', '632600', '1');
INSERT INTO `ob_region` VALUES ('632622', '班玛县', '3', '632600', '1');
INSERT INTO `ob_region` VALUES ('632623', '甘德县', '3', '632600', '1');
INSERT INTO `ob_region` VALUES ('632624', '达日县', '3', '632600', '1');
INSERT INTO `ob_region` VALUES ('632625', '久治县', '3', '632600', '1');
INSERT INTO `ob_region` VALUES ('632626', '玛多县', '3', '632600', '1');
INSERT INTO `ob_region` VALUES ('632700', '玉树藏族自治州', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('632721', '玉树县', '3', '632700', '1');
INSERT INTO `ob_region` VALUES ('632722', '杂多县', '3', '632700', '1');
INSERT INTO `ob_region` VALUES ('632723', '称多县', '3', '632700', '1');
INSERT INTO `ob_region` VALUES ('632724', '治多县', '3', '632700', '1');
INSERT INTO `ob_region` VALUES ('632725', '囊谦县', '3', '632700', '1');
INSERT INTO `ob_region` VALUES ('632726', '曲麻莱县', '3', '632700', '1');
INSERT INTO `ob_region` VALUES ('632800', '海西蒙古族藏族自治州', '2', '630000', '1');
INSERT INTO `ob_region` VALUES ('632801', '格尔木市', '3', '632800', '1');
INSERT INTO `ob_region` VALUES ('632802', '德令哈市', '3', '632800', '1');
INSERT INTO `ob_region` VALUES ('632821', '乌兰县', '3', '632800', '1');
INSERT INTO `ob_region` VALUES ('632822', '都兰县', '3', '632800', '1');
INSERT INTO `ob_region` VALUES ('632823', '天峻县', '3', '632800', '1');
INSERT INTO `ob_region` VALUES ('640000', '宁　夏', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('640100', '银川市', '2', '640000', '1');
INSERT INTO `ob_region` VALUES ('640101', '市辖区', '3', '640100', '1');
INSERT INTO `ob_region` VALUES ('640104', '兴庆区', '3', '640100', '1');
INSERT INTO `ob_region` VALUES ('640105', '西夏区', '3', '640100', '1');
INSERT INTO `ob_region` VALUES ('640106', '金凤区', '3', '640100', '1');
INSERT INTO `ob_region` VALUES ('640121', '永宁县', '3', '640100', '1');
INSERT INTO `ob_region` VALUES ('640122', '贺兰县', '3', '640100', '1');
INSERT INTO `ob_region` VALUES ('640181', '灵武市', '3', '640100', '1');
INSERT INTO `ob_region` VALUES ('640200', '石嘴山市', '2', '640000', '1');
INSERT INTO `ob_region` VALUES ('640201', '市辖区', '3', '640200', '1');
INSERT INTO `ob_region` VALUES ('640202', '大武口区', '3', '640200', '1');
INSERT INTO `ob_region` VALUES ('640205', '惠农区', '3', '640200', '1');
INSERT INTO `ob_region` VALUES ('640221', '平罗县', '3', '640200', '1');
INSERT INTO `ob_region` VALUES ('640300', '吴忠市', '2', '640000', '1');
INSERT INTO `ob_region` VALUES ('640301', '市辖区', '3', '640300', '1');
INSERT INTO `ob_region` VALUES ('640302', '利通区', '3', '640300', '1');
INSERT INTO `ob_region` VALUES ('640323', '盐池县', '3', '640300', '1');
INSERT INTO `ob_region` VALUES ('640324', '同心县', '3', '640300', '1');
INSERT INTO `ob_region` VALUES ('640381', '青铜峡市', '3', '640300', '1');
INSERT INTO `ob_region` VALUES ('640400', '固原市', '2', '640000', '1');
INSERT INTO `ob_region` VALUES ('640401', '市辖区', '3', '640400', '1');
INSERT INTO `ob_region` VALUES ('640402', '原州区', '3', '640400', '1');
INSERT INTO `ob_region` VALUES ('640422', '西吉县', '3', '640400', '1');
INSERT INTO `ob_region` VALUES ('640423', '隆德县', '3', '640400', '1');
INSERT INTO `ob_region` VALUES ('640424', '泾源县', '3', '640400', '1');
INSERT INTO `ob_region` VALUES ('640425', '彭阳县', '3', '640400', '1');
INSERT INTO `ob_region` VALUES ('640500', '中卫市', '2', '640000', '1');
INSERT INTO `ob_region` VALUES ('640501', '市辖区', '3', '640500', '1');
INSERT INTO `ob_region` VALUES ('640502', '沙坡头区', '3', '640500', '1');
INSERT INTO `ob_region` VALUES ('640521', '中宁县', '3', '640500', '1');
INSERT INTO `ob_region` VALUES ('640522', '海原县', '3', '640500', '1');
INSERT INTO `ob_region` VALUES ('650000', '新　疆', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('650100', '乌鲁木齐市', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('650101', '市辖区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650102', '天山区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650103', '沙依巴克区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650104', '新市区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650105', '水磨沟区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650106', '头屯河区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650107', '达坂城区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650108', '东山区', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650121', '乌鲁木齐县', '3', '650100', '1');
INSERT INTO `ob_region` VALUES ('650200', '克拉玛依市', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('650201', '市辖区', '3', '650200', '1');
INSERT INTO `ob_region` VALUES ('650202', '独山子区', '3', '650200', '1');
INSERT INTO `ob_region` VALUES ('650203', '克拉玛依区', '3', '650200', '1');
INSERT INTO `ob_region` VALUES ('650204', '白碱滩区', '3', '650200', '1');
INSERT INTO `ob_region` VALUES ('650205', '乌尔禾区', '3', '650200', '1');
INSERT INTO `ob_region` VALUES ('652100', '吐鲁番地区', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('652101', '吐鲁番市', '3', '652100', '1');
INSERT INTO `ob_region` VALUES ('652122', '鄯善县', '3', '652100', '1');
INSERT INTO `ob_region` VALUES ('652123', '托克逊县', '3', '652100', '1');
INSERT INTO `ob_region` VALUES ('652200', '哈密地区', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('652201', '哈密市', '3', '652200', '1');
INSERT INTO `ob_region` VALUES ('652222', '巴里坤哈萨克自治县', '3', '652200', '1');
INSERT INTO `ob_region` VALUES ('652223', '伊吾县', '3', '652200', '1');
INSERT INTO `ob_region` VALUES ('652300', '昌吉回族自治州', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('652301', '昌吉市', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652302', '阜康市', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652303', '米泉市', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652323', '呼图壁县', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652324', '玛纳斯县', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652325', '奇台县', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652327', '吉木萨尔县', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652328', '木垒哈萨克自治县', '3', '652300', '1');
INSERT INTO `ob_region` VALUES ('652700', '博尔塔拉蒙古自治州', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('652701', '博乐市', '3', '652700', '1');
INSERT INTO `ob_region` VALUES ('652722', '精河县', '3', '652700', '1');
INSERT INTO `ob_region` VALUES ('652723', '温泉县', '3', '652700', '1');
INSERT INTO `ob_region` VALUES ('652800', '巴音郭楞蒙古自治州', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('652801', '库尔勒市', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652822', '轮台县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652823', '尉犁县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652824', '若羌县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652825', '且末县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652826', '焉耆回族自治县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652827', '和静县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652828', '和硕县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652829', '博湖县', '3', '652800', '1');
INSERT INTO `ob_region` VALUES ('652900', '阿克苏地区', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('652901', '阿克苏市', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652922', '温宿县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652923', '库车县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652924', '沙雅县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652925', '新和县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652926', '拜城县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652927', '乌什县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652928', '阿瓦提县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('652929', '柯坪县', '3', '652900', '1');
INSERT INTO `ob_region` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('653001', '阿图什市', '3', '653000', '1');
INSERT INTO `ob_region` VALUES ('653022', '阿克陶县', '3', '653000', '1');
INSERT INTO `ob_region` VALUES ('653023', '阿合奇县', '3', '653000', '1');
INSERT INTO `ob_region` VALUES ('653024', '乌恰县', '3', '653000', '1');
INSERT INTO `ob_region` VALUES ('653100', '喀什地区', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('653101', '喀什市', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653121', '疏附县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653122', '疏勒县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653123', '英吉沙县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653124', '泽普县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653125', '莎车县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653126', '叶城县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653127', '麦盖提县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653128', '岳普湖县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653129', '伽师县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653130', '巴楚县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653131', '塔什库尔干塔吉克自治县', '3', '653100', '1');
INSERT INTO `ob_region` VALUES ('653200', '和田地区', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('653201', '和田市', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('653221', '和田县', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('653222', '墨玉县', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('653223', '皮山县', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('653224', '洛浦县', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('653225', '策勒县', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('653226', '于田县', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('653227', '民丰县', '3', '653200', '1');
INSERT INTO `ob_region` VALUES ('654000', '伊犁哈萨克自治州', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('654002', '伊宁市', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654003', '奎屯市', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654021', '伊宁县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654022', '察布查尔锡伯自治县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654023', '霍城县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654024', '巩留县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654025', '新源县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654026', '昭苏县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654027', '特克斯县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654028', '尼勒克县', '3', '654000', '1');
INSERT INTO `ob_region` VALUES ('654200', '塔城地区', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('654201', '塔城市', '3', '654200', '1');
INSERT INTO `ob_region` VALUES ('654202', '乌苏市', '3', '654200', '1');
INSERT INTO `ob_region` VALUES ('654221', '额敏县', '3', '654200', '1');
INSERT INTO `ob_region` VALUES ('654223', '沙湾县', '3', '654200', '1');
INSERT INTO `ob_region` VALUES ('654224', '托里县', '3', '654200', '1');
INSERT INTO `ob_region` VALUES ('654225', '裕民县', '3', '654200', '1');
INSERT INTO `ob_region` VALUES ('654226', '和布克赛尔蒙古自治县', '3', '654200', '1');
INSERT INTO `ob_region` VALUES ('654300', '阿勒泰地区', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('654301', '阿勒泰市', '3', '654300', '1');
INSERT INTO `ob_region` VALUES ('654321', '布尔津县', '3', '654300', '1');
INSERT INTO `ob_region` VALUES ('654322', '富蕴县', '3', '654300', '1');
INSERT INTO `ob_region` VALUES ('654323', '福海县', '3', '654300', '1');
INSERT INTO `ob_region` VALUES ('654324', '哈巴河县', '3', '654300', '1');
INSERT INTO `ob_region` VALUES ('654325', '青河县', '3', '654300', '1');
INSERT INTO `ob_region` VALUES ('654326', '吉木乃县', '3', '654300', '1');
INSERT INTO `ob_region` VALUES ('659000', '省直辖行政单位', '2', '650000', '1');
INSERT INTO `ob_region` VALUES ('659001', '石河子市', '3', '659000', '1');
INSERT INTO `ob_region` VALUES ('659002', '阿拉尔市', '3', '659000', '1');
INSERT INTO `ob_region` VALUES ('659003', '图木舒克市', '3', '659000', '1');
INSERT INTO `ob_region` VALUES ('659004', '五家渠市', '3', '659000', '1');
INSERT INTO `ob_region` VALUES ('710000', '台湾省', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('710001', '台北市', '2', '710000', '1');
INSERT INTO `ob_region` VALUES ('710002', '台北县', '3', '710001', '1');
INSERT INTO `ob_region` VALUES ('710003', '基隆市', '2', '710000', '1');
INSERT INTO `ob_region` VALUES ('710004', '花莲县', '3', '710003', '1');
INSERT INTO `ob_region` VALUES ('810000', '香　港', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('810001', '香港', '2', '810000', '1');
INSERT INTO `ob_region` VALUES ('810002', '中西区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810003', '九龙城区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810004', '南区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810005', '黄大仙区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810006', '油尖旺区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810007', '葵青区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810008', '西贡区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810009', '屯门区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810010', '荃湾区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810011', '东区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810012', '观塘区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810013', '深水步区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810014', '湾仔区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810015', '离岛区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810016', '北区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810017', '沙田区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810018', '大埔区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('810019', '元朗区', '3', '810001', '1');
INSERT INTO `ob_region` VALUES ('820000', '澳　门', '1', '0', '1');
INSERT INTO `ob_region` VALUES ('820001', '澳门', '2', '820000', '1');
INSERT INTO `ob_region` VALUES ('820002', '澳门', '3', '820001', '1');
INSERT INTO `ob_region` VALUES ('910005', '中山市', '3', '442000', '1');
INSERT INTO `ob_region` VALUES ('910006', '东莞市', '3', '441900', '1');
