/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50715
 Source Host           : localhost
 Source Database       : silvtravel

 Target Server Type    : MySQL
 Target Server Version : 50715
 File Encoding         : utf-8

 Date: 04/23/2018 23:17:29 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `channel_cn_city`
-- ----------------------------
DROP TABLE IF EXISTS `channel_cn_city`;
CREATE TABLE `channel_cn_city` (
  `id` varchar(20) NOT NULL COMMENT '城市ID',
  `name` varchar(100) NOT NULL COMMENT '城市名称',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `provinceid` varchar(20) NOT NULL COMMENT '省份ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 不使用 1使用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_cn_country`
-- ----------------------------
DROP TABLE IF EXISTS `channel_cn_country`;
CREATE TABLE `channel_cn_country` (
  `id` varchar(20) NOT NULL COMMENT '龙腾捷旅-国家ID',
  `name` varchar(100) NOT NULL COMMENT '国家名称（中文）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号，默认值为当前时间',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_cn_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `channel_cn_hotel`;
CREATE TABLE `channel_cn_hotel` (
  `id` varchar(20) NOT NULL COMMENT '酒店 ID',
  `name` varchar(100) NOT NULL COMMENT '酒店 名称 ',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `provinceid` varchar(20) NOT NULL COMMENT '省份ID',
  `cityid` varchar(20) NOT NULL COMMENT '城市ID',
  `regionid` varchar(20) DEFAULT NULL COMMENT '区域ID',
  `address` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `postcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `star` varchar(1) DEFAULT NULL COMMENT '星级',
  `starbusinessdate` varchar(20) DEFAULT NULL COMMENT '开业时间',
  `recommendlevel` varchar(255) DEFAULT NULL COMMENT '推荐等级',
  `longitude` varchar(20) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(20) DEFAULT NULL COMMENT '纬度',
  `introduce` varchar(1000) DEFAULT NULL COMMENT '酒店简介',
  `allowwebsale` tinyint(1) DEFAULT NULL COMMENT '是否允许互联网销售',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '使用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_cn_province`
-- ----------------------------
DROP TABLE IF EXISTS `channel_cn_province`;
CREATE TABLE `channel_cn_province` (
  `id` varchar(20) NOT NULL COMMENT '省份ID',
  `name` varchar(100) NOT NULL COMMENT '省份名称',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 不使用 1使用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_cn_region`
-- ----------------------------
DROP TABLE IF EXISTS `channel_cn_region`;
CREATE TABLE `channel_cn_region` (
  `id` varchar(20) NOT NULL COMMENT '省份ID',
  `name` varchar(100) NOT NULL COMMENT '省份名称',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `provinceid` varchar(20) NOT NULL COMMENT '省份ID',
  `cityid` varchar(20) NOT NULL COMMENT '城市ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 不使用 1使用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_cn_room`
-- ----------------------------
DROP TABLE IF EXISTS `channel_cn_room`;
CREATE TABLE `channel_cn_room` (
  `id` varchar(20) DEFAULT NULL COMMENT '房型ID',
  `name` varchar(100) DEFAULT NULL COMMENT '房型名称',
  `roomtypeid` varchar(20) DEFAULT NULL COMMENT '房间类型ID',
  `roomtypename` varchar(100) DEFAULT NULL COMMENT '房间类型名称',
  `bedtypeid` varchar(20) DEFAULT NULL COMMENT '床型ID',
  `bedtypename` varchar(100) DEFAULT NULL COMMENT '床型类型名称',
  `acreage` varchar(30) DEFAULT NULL COMMENT '面积',
  `floor` varchar(10) DEFAULT NULL COMMENT '楼层',
  `roomaccount` tinyint(10) DEFAULT NULL COMMENT '房间数量',
  `maxadult` tinyint(10) DEFAULT NULL COMMENT '最大可入住成人数',
  `maxchild` tinyint(10) DEFAULT NULL COMMENT '最大可入住小孩数',
  `haswindow` tinyint(1) DEFAULT NULL COMMENT '是否有窗',
  `allowaddbed` tinyint(1) DEFAULT NULL COMMENT '是否允许加床',
  `allowaddbedcount` tinyint(5) DEFAULT NULL COMMENT '可允许加床数',
  `allowsmoke` tinyint(1) DEFAULT NULL COMMENT '是否允许吸烟',
  `hasnet` tinyint(1) DEFAULT NULL COMMENT '是否有网络',
  `isnetfree` tinyint(1) DEFAULT NULL COMMENT '网络是否免费',
  `netfree` varchar(10) DEFAULT NULL COMMENT '网络回收情况',
  `introduce` varchar(1000) DEFAULT NULL COMMENT '房型介绍',
  `guide` varchar(1000) DEFAULT NULL COMMENT '客户指引',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态 0 未启用 1启用',
  `orderno` int(20) DEFAULT NULL COMMENT '排序编号 ',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_ct_city`
-- ----------------------------
DROP TABLE IF EXISTS `channel_ct_city`;
CREATE TABLE `channel_ct_city` (
  `id` varchar(20) NOT NULL COMMENT '城市ID',
  `name` varchar(100) NOT NULL COMMENT '城市名称',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `provinceid` varchar(20) NOT NULL COMMENT '省份ID',
  `citycode` varchar(20) DEFAULT NULL COMMENT '城市编码',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 不使用 1使用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_ct_country`
-- ----------------------------
DROP TABLE IF EXISTS `channel_ct_country`;
CREATE TABLE `channel_ct_country` (
  `id` varchar(20) NOT NULL COMMENT '携程-国家ID',
  `name` varchar(100) NOT NULL COMMENT '国家名称（中文）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号，默认值为当前时间',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_ct_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `channel_ct_hotel`;
CREATE TABLE `channel_ct_hotel` (
  `id` varchar(20) NOT NULL COMMENT '酒店ID',
  `name` varchar(100) NOT NULL COMMENT '酒店名称 ',
  `cityid` varchar(20) NOT NULL COMMENT '城市ID',
  `cityname` varchar(100) NOT NULL COMMENT '城市名称',
  `star` tinyint(1) DEFAULT '0' COMMENT '酒店星级',
  `starlicence` char(1) DEFAULT NULL COMMENT '是否挂牌星级酒店，T-挂牌星级，F-不挂牌星级',
  `address` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `address_en` varchar(200) DEFAULT NULL COMMENT '酒店地址（英文）',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `canaddhotel` char(1) NOT NULL COMMENT '是否可添加子酒店  T-可以添加子酒店，F-不可添加子酒店',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号 ',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_ct_province`
-- ----------------------------
DROP TABLE IF EXISTS `channel_ct_province`;
CREATE TABLE `channel_ct_province` (
  `id` varchar(20) NOT NULL COMMENT '省份ID',
  `name` varchar(100) NOT NULL COMMENT '省份名称',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 不使用 1使用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_dl_bedtype`
-- ----------------------------
DROP TABLE IF EXISTS `channel_dl_bedtype`;
CREATE TABLE `channel_dl_bedtype` (
  `id` varchar(20) NOT NULL COMMENT '床型ID',
  `name` varchar(100) NOT NULL COMMENT '床型名称',
  `name_en` varchar(100) DEFAULT NULL COMMENT '床型名称（英文）',
  `defaultoccupancy` tinyint(5) DEFAULT NULL COMMENT '默认最大可入住人数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_dl_city`
-- ----------------------------
DROP TABLE IF EXISTS `channel_dl_city`;
CREATE TABLE `channel_dl_city` (
  `id` varchar(20) NOT NULL COMMENT '城市ID',
  `name` varchar(100) NOT NULL COMMENT '城市名称',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `longname` varchar(200) DEFAULT NULL COMMENT '城市长名称',
  `longname_en` varchar(200) DEFAULT NULL COMMENT '城市长名称（英文）',
  `parentcityid` varchar(20) DEFAULT NULL COMMENT '父级城市ID',
  `type` varchar(20) DEFAULT NULL COMMENT 'Destination: 大区域， City: 子区域',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 不使用 1使用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_dl_country`
-- ----------------------------
DROP TABLE IF EXISTS `channel_dl_country`;
CREATE TABLE `channel_dl_country` (
  `id` varchar(20) NOT NULL COMMENT '道旅-国家ID',
  `name` varchar(100) NOT NULL COMMENT '国家名称（中文）',
  `name_en` varchar(100) DEFAULT NULL COMMENT '国家名称（英文）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号，默认值为当前时间',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_dl_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `channel_dl_hotel`;
CREATE TABLE `channel_dl_hotel` (
  `id` varchar(20) NOT NULL COMMENT '酒店ID',
  `name` varchar(100) NOT NULL COMMENT '酒店名称',
  `name_en` varchar(100) DEFAULT NULL COMMENT '酒店名称（英文）',
  `countryid` varchar(20) NOT NULL COMMENT '国家ID',
  `cityid` varchar(20) NOT NULL COMMENT '城市ID',
  `address` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `latitude` varchar(20) DEFAULT NULL COMMENT '纬度',
  `longitude` varchar(20) DEFAULT NULL COMMENT '经度',
  `star` tinyint(1) DEFAULT '0' COMMENT '星级',
  `telephone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号 ',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_pt_city`
-- ----------------------------
DROP TABLE IF EXISTS `channel_pt_city`;
CREATE TABLE `channel_pt_city` (
  `id` varchar(35) NOT NULL COMMENT '城市ID（盈利）',
  `name` varchar(100) NOT NULL COMMENT '城市名称（中文）',
  `name_en` varchar(100) DEFAULT NULL COMMENT '城市名称（英文）',
  `countryid` varchar(35) NOT NULL COMMENT '国家ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 不使用 1使用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_pt_country`
-- ----------------------------
DROP TABLE IF EXISTS `channel_pt_country`;
CREATE TABLE `channel_pt_country` (
  `id` varchar(35) NOT NULL COMMENT '盈利-国家ID',
  `name` varchar(100) NOT NULL COMMENT '国家名称（中文）',
  `name_en` varchar(100) DEFAULT NULL COMMENT '国家名称（英文）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号，默认值为当前时间',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_pt_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `channel_pt_hotel`;
CREATE TABLE `channel_pt_hotel` (
  `id` varchar(35) NOT NULL COMMENT '酒店 ID',
  `name` varchar(100) NOT NULL COMMENT '酒店名称（中文）',
  `name_en` varchar(100) DEFAULT NULL COMMENT '酒店名称（英文）',
  `countryid` varchar(35) NOT NULL COMMENT '国家ID',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `cityid` varchar(35) NOT NULL COMMENT '城市ID',
  `regionid` varchar(35) DEFAULT NULL COMMENT '区域ID',
  `address` varchar(100) DEFAULT NULL COMMENT '酒店地址（中文）',
  `address_en` varchar(100) DEFAULT NULL COMMENT '酒店地址（英文）',
  `star` tinyint(1) DEFAULT '0' COMMENT '星级',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `website` varchar(100) DEFAULT NULL COMMENT '官网',
  `remark` varchar(1000) DEFAULT NULL COMMENT '酒店备注',
  `introduce` varchar(2000) DEFAULT NULL COMMENT '酒店简介（中文）',
  `introduce_en` varchar(2000) DEFAULT NULL COMMENT '酒店简介（英文）',
  `other` varchar(1000) DEFAULT NULL COMMENT '酒店其他信息',
  `priceture` varchar(5) DEFAULT NULL COMMENT '价格准确率',
  `amenity` varchar(1000) DEFAULT NULL COMMENT '酒店设施',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 未启用 1启用',
  `orderno` int(20) NOT NULL COMMENT '排序编号 ',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_pt_market`
-- ----------------------------
DROP TABLE IF EXISTS `channel_pt_market`;
CREATE TABLE `channel_pt_market` (
  `id` varchar(35) NOT NULL COMMENT '市场ID',
  `name` varchar(100) NOT NULL COMMENT '市场名称（中文）',
  `name_en` varchar(100) DEFAULT NULL COMMENT '市场名称（英文）',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  0 未启用 1启用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_pt_region`
-- ----------------------------
DROP TABLE IF EXISTS `channel_pt_region`;
CREATE TABLE `channel_pt_region` (
  `id` varchar(35) NOT NULL COMMENT '区域ID(盈利)',
  `name` varchar(100) NOT NULL COMMENT '区域名称 （中文）',
  `name_en` varchar(100) DEFAULT NULL COMMENT '区域名称（英文）',
  `countryid` varchar(35) NOT NULL COMMENT '所属国家ID',
  `cityid` varchar(35) NOT NULL COMMENT '所属城市ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态 0 未启用 1启用',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `channel_pt_room`
-- ----------------------------
DROP TABLE IF EXISTS `channel_pt_room`;
CREATE TABLE `channel_pt_room` (
  `id` varchar(35) NOT NULL COMMENT '房型ID',
  `name` varchar(100) NOT NULL COMMENT '房型名称（中文）',
  `name_en` varchar(100) DEFAULT NULL COMMENT '房型名称（英文）',
  `size` varchar(20) DEFAULT NULL COMMENT '房间面积',
  `breakfast` tinyint(1) DEFAULT '0' COMMENT '早餐  0 无早 1单早 2 双早',
  `breakfasttype` varchar(20) DEFAULT NULL COMMENT '早餐类型 参数盈利文档 ',
  `bedsize` varchar(20) DEFAULT NULL COMMENT '床型大小',
  `amenity` varchar(1000) DEFAULT NULL COMMENT '房间设施',
  `onnet` tinyint(1) DEFAULT '0' COMMENT '是否有网络  0 没有 1有',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态  ',
  `orderno` int(20) NOT NULL COMMENT '排序编号 ',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `silv_admin_basic_user`
-- ----------------------------
DROP TABLE IF EXISTS `silv_admin_basic_user`;
CREATE TABLE `silv_admin_basic_user` (
  `id` int(20) NOT NULL COMMENT '用户ID',
  `name` varchar(20) NOT NULL COMMENT '用户姓名',
  `password` varchar(16) NOT NULL COMMENT '用户登录密码 md5 16位小写',
  `account` varchar(10) NOT NULL COMMENT '登录账号',
  `phone` varchar(11) NOT NULL COMMENT '手机号码 ',
  `sex` tinyint(1) DEFAULT '0' COMMENT '用户性别 0保密  1男 2 女',
  `usertype` tinyint(4) NOT NULL COMMENT '用户类型  ',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `platformid` int(20) NOT NULL COMMENT '所属平台 ID',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `silv_admin_platform`
-- ----------------------------
DROP TABLE IF EXISTS `silv_admin_platform`;
CREATE TABLE `silv_admin_platform` (
  `id` int(20) NOT NULL COMMENT '平台ID',
  `name` varchar(100) NOT NULL COMMENT '平台名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `silv_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `silv_admin_role`;
CREATE TABLE `silv_admin_role` (
  `id` int(20) NOT NULL COMMENT '角色ID',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `rolecode` varchar(20) NOT NULL COMMENT '角色编码',
  `platformid` int(20) NOT NULL COMMENT '所属平台ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '使用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `silv_service_ct_basicroom`
-- ----------------------------
DROP TABLE IF EXISTS `silv_service_ct_basicroom`;
CREATE TABLE `silv_service_ct_basicroom` (
  `id` varchar(20) NOT NULL COMMENT '基础房型ID',
  `name` varchar(100) NOT NULL COMMENT '基础房型名称',
  `masterroomid` varchar(20) NOT NULL COMMENT '房型ID',
  `name_en` varchar(100) DEFAULT NULL COMMENT '房型名称（英文）',
  `hotelid` varchar(20) NOT NULL COMMENT '母酒店ID',
  `childhotelid` varchar(20) NOT NULL COMMENT '子酒店ID',
  `isadd` char(1) NOT NULL COMMENT 'T-已经增加过子物理房型，不能再添加子物理房型。F-没有增加过子物理房型，可以添加子物理房型',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `silv_service_ct_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `silv_service_ct_hotel`;
CREATE TABLE `silv_service_ct_hotel` (
  `id` varchar(20) NOT NULL COMMENT '酒店ID',
  `name` varchar(100) NOT NULL COMMENT '酒店名称',
  `name_en` varchar(100) DEFAULT NULL COMMENT '酒店名称（英文）',
  `cityid` varchar(20) NOT NULL COMMENT '城市ID',
  `cityname` varchar(100) NOT NULL COMMENT '城市名称',
  `cbookable` tinyint(1) NOT NULL COMMENT '携程售卖状态',
  `qbookable` tinyint(1) NOT NULL COMMENT '去哪儿售卖状态',
  `channelabookable` tinyint(1) NOT NULL COMMENT '渠道A售卖状态',
  `b2bookable` tinyint(1) NOT NULL COMMENT 'B2B售卖状态',
  `pricechannel` varchar(100) DEFAULT NULL COMMENT '价格对接渠道',
  `reservetime` time NOT NULL COMMENT '最晚预订时间-用来自动关今天的房态',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '启用状态 ',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime DEFAULT NULL COMMENT '价格对接渠道名称（如：盈利，道旅）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `silv_service_ct_saleroom`
-- ----------------------------
DROP TABLE IF EXISTS `silv_service_ct_saleroom`;
CREATE TABLE `silv_service_ct_saleroom` (
  `id` varchar(20) NOT NULL COMMENT '售卖房型ID',
  `name` varchar(200) NOT NULL COMMENT '售卖房型名称',
  `relationroomid` varchar(20) DEFAULT NULL COMMENT '关联房型ID',
  `hotelid` varchar(20) NOT NULL COMMENT '子酒店ID',
  `basicroomid` varchar(20) NOT NULL COMMENT '基础房型ID',
  `channel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '对接渠道 0 自控  1盈利 2龙腾捷旅  3 道旅',
  `channel_hotelid` varchar(40) DEFAULT NULL COMMENT '对接酒店ID',
  `channel_hotelname` varchar(100) DEFAULT NULL COMMENT '对接酒店名称',
  `channel_roomid` varchar(40) DEFAULT NULL COMMENT '对接房型ID',
  `channel_roomname` varchar(100) DEFAULT NULL COMMENT '对接房型名称',
  `channel_marketid` varchar(40) DEFAULT NULL COMMENT '对接市场ID （盈利专用）',
  `channel_marketname` varchar(100) DEFAULT NULL COMMENT '对接市场名称（盈利专用）',
  `breakfastprice` int(10) DEFAULT NULL COMMENT '早餐价格',
  `profitprice` int(10) DEFAULT NULL COMMENT '利润价格',
  `minupdateprice` int(10) DEFAULT NULL COMMENT '最小更新价格',
  `closeroomrule` tinyint(1) DEFAULT NULL COMMENT '关房规则',
  `extraprofit` int(10) DEFAULT NULL COMMENT '额外利润价格',
  `status` tinyint(1) NOT NULL COMMENT '售卖状态 0 下线 1上线',
  `orderno` int(20) NOT NULL COMMENT '排序编号',
  `createtime` datetime NOT NULL COMMENT '创建时间',
  `updatetime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
