/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.7.12-log : Database - xiaoyaun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyaun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyaun`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员表id',
  `a_pid` int(11) DEFAULT NULL COMMENT '管理的地方id 超级管理员此处为空',
  `a_username` varchar(12) DEFAULT NULL COMMENT '登陆账号',
  `a_password` varchar(64) DEFAULT NULL COMMENT '登陆密码',
  `a_real_name` varchar(10) DEFAULT NULL COMMENT '管理员姓名',
  `a_phone` varchar(13) DEFAULT NULL COMMENT '管理员电话',
  `a_role` varchar(20) DEFAULT NULL COMMENT '普通管理员,超级管理员',
  `a_icon` varchar(64) DEFAULT NULL COMMENT '管理员头像',
  `a_login_time` datetime DEFAULT NULL COMMENT '登陆时间',
  `a_create_time` datetime DEFAULT NULL COMMENT '该列创建时间',
  `a_update_time` datetime DEFAULT NULL COMMENT '该列更新时间',
  `a_comment` varchar(300) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `a_username` (`a_username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`aid`,`a_pid`,`a_username`,`a_password`,`a_real_name`,`a_phone`,`a_role`,`a_icon`,`a_login_time`,`a_create_time`,`a_update_time`,`a_comment`) values (1,2,'xiao','08373931bedde3e6492c93e8fdbd75fe','筱筱','123123','普通管理员','images/adminIcon/15185929940555370.jpg','2020-12-23 10:54:30','2018-02-09 13:53:01','2020-12-23 10:54:30',NULL),(2,NULL,'admin','08373931bedde3e6492c93e8fdbd75fe','哒哒',NULL,'超级管理员','images/adminIcon/管理员.png','2020-12-21 16:53:14','2018-02-12 15:56:55','2020-12-21 16:53:14',NULL),(3,4,'123','08373931bedde3e6492c93e8fdbd75fe','埃莱布','123','普通管理员','images/adminIcon/15186746679804600.jpg',NULL,'2018-02-15 14:04:27','2018-02-15 14:04:27',NULL);

/*Table structure for table `bike` */

DROP TABLE IF EXISTS `bike`;

CREATE TABLE `bike` (
  `bid` int(11) NOT NULL AUTO_INCREMENT COMMENT '单车表id 单车编号',
  `b_name` varchar(20) DEFAULT NULL COMMENT '单车名字',
  `b_icon` varchar(64) DEFAULT NULL COMMENT '单车图片',
  `b_cid` int(11) DEFAULT NULL COMMENT '单车属于的分类',
  `b_in_time` varchar(30) DEFAULT NULL COMMENT '入库时间',
  `b_state` varchar(10) DEFAULT NULL COMMENT '未借  已借 需维修 报废',
  `b_create_time` datetime DEFAULT NULL COMMENT '该列创建时间',
  `b_update_time` datetime DEFAULT NULL COMMENT '该列更新时间',
  `b_comment` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;

/*Data for the table `bike` */

insert  into `bike`(`bid`,`b_name`,`b_icon`,`b_cid`,`b_in_time`,`b_state`,`b_create_time`,`b_update_time`,`b_comment`) values (334,'嘻哈嘻哈','images/bikeIcon/16086915194528500.png',4,'2020-12-15','未借','2018-02-15 15:48:20','2020-12-23 11:07:36','有点问题'),(335,'皮皮虾一号','images/bikeIcon/16086916923424040.png',10,'2019-02-05','未借','2018-02-15 15:48:20','2020-12-23 10:48:12','好'),(336,'皮皮虾一号','images/bikeIcon/16086917050042000.png',10,'2018-02-15','未借','2018-02-15 15:48:20','2020-12-23 10:48:25','好'),(337,'皮皮虾一号','images/bikeIcon/16086917121421470.png',10,'2018-02-15','未借','2018-02-15 15:48:20','2020-12-23 10:48:32','好'),(338,'皮皮虾一号','images/bikeIcon/16086917254705915.png',10,'2018-02-15','未借','2018-02-15 15:48:20','2020-12-23 10:48:45','好'),(346,'皮皮虾一号','images/bikeIcon/16086916494522187.png',10,'2018-02-15','未借','2018-02-15 15:48:20','2020-12-23 10:47:29','好'),(347,'皮皮虾一号','images/bikeIcon/16086916206387708.png',10,'2020-02-06','未借','2018-02-15 15:48:20','2020-12-23 11:07:51','好'),(348,'飞驰小余','images/bikeIcon/16086916043168851.png',3,'2020-02-05','已借','2018-02-15 15:48:20','2020-12-23 10:46:44','性能不行'),(349,'皮皮虾一号','images/bikeIcon/16086916797520490.png',10,'2020-03-16','已借','2018-02-15 15:48:20','2020-12-23 10:47:59','好'),(351,'皮皮虾一号','images/bikeIcon/16086916614864504.png',10,'2018-02-15','未借','2018-02-15 15:48:20','2020-12-23 10:47:41','好'),(352,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(353,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(354,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(355,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(356,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(357,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(358,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(359,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(360,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(361,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(362,'dad','images/bikeIcon/16086918056259246.png',4,'2021-01-13','未借','2020-12-23 10:50:05','2020-12-23 10:50:05',''),(363,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(364,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','报废','2020-12-23 10:51:03','2020-12-23 11:08:51',''),(365,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 11:05:49',''),(366,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','已借','2020-12-23 10:51:03','2020-12-23 11:06:04',''),(367,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 11:08:41',''),(368,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(369,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(370,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 11:08:15',''),(371,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(372,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(373,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(374,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(375,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(376,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(377,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(378,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(379,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(380,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(381,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(382,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(383,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03',''),(384,'糊糊塔塔','images/bikeIcon/16086918633890417.png',3,'2020-12-23','未借','2020-12-23 10:51:03','2020-12-23 10:51:03','');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '单车分类表id',
  `c_name` varchar(20) DEFAULT NULL COMMENT '品牌名称',
  `c_remain` int(11) DEFAULT NULL COMMENT '剩余数量',
  `c_rent` float DEFAULT '0' COMMENT '租金,单位:元/小时',
  `c_cash` float DEFAULT '0' COMMENT '押金',
  `c_create_time` datetime DEFAULT NULL COMMENT '该列创建时间',
  `c_update_time` datetime DEFAULT NULL COMMENT '该列更新时间',
  `c_comment` varchar(200) DEFAULT NULL COMMENT '备注',
  `c_price` float DEFAULT '0' COMMENT '单车采购单价',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`cid`,`c_name`,`c_remain`,`c_rent`,`c_cash`,`c_create_time`,`c_update_time`,`c_comment`,`c_price`) values (3,'大蓝车',22,1,100,'2018-02-09 21:50:36','2020-12-23 11:09:26','大蓝车 真的大',250),(4,'魔拜',11,1,100,'2018-02-09 21:51:01','2020-12-23 10:50:05','魔拜魔拜 让你膜拜',250),(10,'webike',10,1,100,'2018-02-12 15:11:07','2020-12-23 10:49:19','应科院原创品牌！',300),(11,'大黄',0,1,100,'2020-12-23 11:00:34','2020-12-23 11:01:10','',280);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `o_sno` varchar(30) DEFAULT NULL COMMENT '学生号',
  `o_bid` int(11) DEFAULT NULL COMMENT '单车id',
  `o_borrow_time` varchar(64) DEFAULT NULL COMMENT '借车时间',
  `o_return_time` varchar(64) DEFAULT NULL COMMENT '还车时间',
  `o_real_rent` float DEFAULT '0' COMMENT '租金',
  `o_cash` float DEFAULT '0' COMMENT '押金',
  `o_state` varchar(10) DEFAULT NULL COMMENT '是否归还  未归还 归还',
  `o_create_time` datetime DEFAULT NULL COMMENT '该列创建时间',
  `o_update_time` datetime DEFAULT NULL COMMENT '该列更新时间',
  `o_comment` varchar(200) NOT NULL COMMENT '备注',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`oid`,`o_sno`,`o_bid`,`o_borrow_time`,`o_return_time`,`o_real_rent`,`o_cash`,`o_state`,`o_create_time`,`o_update_time`,`o_comment`) values (1,'003',365,'2020-12-23 10:55:40','2020-12-23 10:56:15',1,100,'归还,单车已报废',NULL,'2020-12-23 10:56:15',''),(2,'005',364,'2020-12-23 10:58:53','2020-12-23 11:01:39',1,0,'归还,单车完好',NULL,'2020-12-23 11:01:39',''),(3,'005',364,'2020-12-23 11:02:07','2020-12-23 11:08:51',1000,100,'归还,单车已报废',NULL,'2020-12-23 11:08:51',''),(4,'004',367,'2020-12-23 11:03:01','2020-12-23 11:08:41',1000,0,'归还,单车完好',NULL,'2020-12-23 11:08:41',''),(5,'003',370,'2020-12-23 11:07:03','2020-12-23 11:08:15',1000,0,'归还,单车完好',NULL,'2020-12-23 11:08:15','');

/*Table structure for table `place` */

DROP TABLE IF EXISTS `place`;

CREATE TABLE `place` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务地方id',
  `p_name` varchar(64) DEFAULT NULL COMMENT '站点名称',
  `p_address` varchar(200) DEFAULT NULL COMMENT '地址',
  `p_phone` varchar(13) DEFAULT NULL COMMENT '服务电话',
  `p_create_time` datetime DEFAULT NULL COMMENT '该列创建时间',
  `p_update_time` datetime DEFAULT NULL COMMENT '该列更新时间',
  `p_comment` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `place` */

insert  into `place`(`pid`,`p_name`,`p_address`,`p_phone`,`p_create_time`,`p_update_time`,`p_comment`) values (2,'webike2','大学生活动中心','654321','2018-02-09 21:33:48','2018-02-09 21:33:52','帅哥多'),(3,'webike3','三达楼','123','2018-02-09 21:34:32','2018-02-09 21:34:34','帅哥美女多'),(4,'webike1','9栋学生宿舍','123456','2018-02-09 21:33:46','2018-02-09 21:33:50','妹子多');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生表id',
  `sno` varchar(20) DEFAULT NULL COMMENT '学号',
  `s_name` varchar(20) DEFAULT NULL COMMENT '学生名',
  `s_sex` char(2) DEFAULT NULL COMMENT '学生性别',
  `s_id_card` varchar(20) DEFAULT NULL COMMENT '学生身份证',
  `s_email` varchar(64) DEFAULT NULL COMMENT '学生邮箱',
  `s_phone` varchar(13) DEFAULT NULL COMMENT '学生电话',
  `s_icon` varchar(64) DEFAULT NULL COMMENT '学生头像',
  `s_department` varchar(20) DEFAULT NULL COMMENT '院系',
  `s_major` varchar(20) DEFAULT NULL COMMENT '专业',
  `s_create_time` datetime DEFAULT NULL COMMENT '该列创建时间',
  `s_update_time` datetime DEFAULT NULL COMMENT '该列更新时间',
  `s_comment` varchar(300) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`sid`,`sno`,`s_name`,`s_sex`,`s_id_card`,`s_email`,`s_phone`,`s_icon`,`s_department`,`s_major`,`s_create_time`,`s_update_time`,`s_comment`) values (10,'004','ming','男','asdasdasdas','969130721@qq.comasdasdasdasdsadsa','123','images/studentIcon/15186044241889955.jpg','江西应科院','软件工程','2018-02-10 16:58:29','2018-02-14 18:33:44',''),(11,'003','xiaoxiao','男','1764823874278','2879053074@qq.com','15079023453','images/studentIcon/16086912769288974.png','软件工程','软件工程','2020-12-23 10:41:16','2020-12-23 10:41:16',''),(12,'005','筱筱','男','32626535125','2879053064@1qq.com','150790235447','images/studentIcon/16086922952390205.png','软件工程','软件工程','2020-12-23 10:58:15','2020-12-23 10:58:15','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
