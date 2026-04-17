/*
Navicat MySQL Data Transfer

Source Server         : localhost_3360
Source Server Version : 50644
Source Host           : localhost:3306
Source Database       : cookieshop

Target Server Type    : MYSQL
Target Server Version : 50644
File Encoding         : 65001

Date: 2025-01-03 22:18:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `image1` varchar(45) DEFAULT NULL,
  `image2` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `intro` varchar(300) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_id_idx` (`type_id`),
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('9', '杯子（橘色）', '/picture/1735881607427.jpg', '/picture/1735881607430.jpg', '/picture/1735881607431.jpg', '29', '杯子上印有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。整体设计将传统与现代元素相结合，既美观又实用，适合日常使用或作为礼品。', '10', '1');
INSERT INTO `goods` VALUES ('10', '杯子（黄色）', '/picture/1735881623155.jpg', '/picture/1735881623156.jpg', '/picture/1735881623157.jpg', '28', '杯子上印有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有白色、橙色和黄色等，显得非常典雅。整体设计将传统与现代元素相结合，既美观又实用，适合日常使用或作为礼品。', '10', '1');
INSERT INTO `goods` VALUES ('11', '杯子（米白色）', '/picture/1735881643046.jpg', '/picture/1735881643047.jpg', '/picture/1735881643048.jpg', '29', '杯子上印有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有白色、橙色和黄色等，显得非常典雅。整体设计将传统与现代元素相结合，既美观又实用，适合日常使用或作为礼品。', '10', '1');
INSERT INTO `goods` VALUES ('12', 'T恤', '/picture/1735881658842.jpg', '/picture/1735881658843.jpg', '/picture/1735881658843.jpg', '108', '衣服上印有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色为红色，整体设计充满了古典美。衣服上还印有“A STUNNING THEATRE PRODUCTION”的字样，增添了文化氛围。这件衣服将传统与现代元素相结合，既美观又富有文化内涵，适合作为日常穿着或纪念品。', '10', '5');
INSERT INTO `goods` VALUES ('13', '抱枕（黄色）', '/picture/1735881671739.jpg', '/picture/1735881671740.jpg', '/picture/1735881671741.jpg', '36', '抱枕上印有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有黄色和米色等，显得非常典雅。每个抱枕上还印有“长恨歌”字样，增添了文化氛围。整体设计将传统与现代元素相结合，既美观又实用，适合作为家居装饰品或礼品。', '10', '8');
INSERT INTO `goods` VALUES ('14', '抱枕（卡其色）', '/picture/1735881686162.jpg', '/picture/1735881686163.jpg', '/picture/1735881686163.jpg', '39', '抱枕上印有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有黄色和米色等，显得非常典雅。每个抱枕上还印有“长恨歌”字样，增添了文化氛围。整体设计将传统与现代元素相结合，既美观又实用，适合作为家居装饰品或礼品。', '10', '8');
INSERT INTO `goods` VALUES ('15', '徽章（白色）', '/picture/1735881714731.jpg', '/picture/1735881698355.jpg', '/picture/1735881698356.jpg', '9.9', '每枚徽章上都有一位身着传统服饰的女子形象。她们的发型精致，服饰色彩丰富，带有飘逸的丝带装饰，给人一种古典优雅的感觉。   这些徽章可能是文创产品，通过将中国传统文化元素与现代设计相结合，赋予了传统艺术新的生命力。可以作为纪念品、收藏品，或者作为时尚配饰，体现佩戴者对中国传统文化的喜爱和欣赏。', '10', '4');
INSERT INTO `goods` VALUES ('16', '徽章（粉色）', '/picture/1735881726394.jpg', '/picture/1735881726395.jpg', '/picture/1735881726395.jpg', '9.9', ' 这些徽章通过将中国传统文化元素与现代设计相结合，赋予了传统艺术新的生命力。可以作为纪念品、收藏品，或者作为时尚配饰，体现佩戴者对中国传统文化的喜爱和欣赏。', '10', '4');
INSERT INTO `goods` VALUES ('18', '徽章（橘色）', '/picture/1735881747537.jpg', '/picture/1735881747538.jpg', '/picture/1735881747538.jpg', '9.9', '每枚徽章上都有一位身着传统服饰的女子形象。她们的发型精致，服饰色彩丰富，带有飘逸的丝带装饰，给人一种古典优雅的感觉。   这些徽章可能是文创产品，通过将中国传统文化元素与现代设计相结合，赋予了传统艺术新的生命力。可以作为纪念品、收藏品，或者作为时尚配饰，体现佩戴者对中国传统文化的喜爱和欣赏。', '10', '4');
INSERT INTO `goods` VALUES ('19', '挂件（粉色）', '/picture/1735881761561.jpg', '/picture/1735881761562.jpg', '/picture/1735881761563.jpg', '36', '这些挂件上的图案是穿着传统中式服装的人物形象，人物的发型和服饰都极具中国特色。人物的服装色彩鲜艳，有红色、蓝色、黄色等，并且装饰有精美的花纹。挂件的形状为圆形，配有金属链，方便悬挂。整体设计将传统与现代元素相结合，既展现了中国传统文化的魅力，又具有时尚感，适合作为装饰品或礼品。', '10', '2');
INSERT INTO `goods` VALUES ('20', '挂件（绿色）', '/picture/1735881796089.jpg', '/picture/1735881787570.jpg', '/picture/1735881787571.jpg', '36', '这些挂件上的图案是穿着传统中式服装的人物形象，人物的发型和服饰都极具中国特色。人物的服装色彩鲜艳，有红色、蓝色、黄色等，并且装饰有精美的花纹。挂件的形状为圆形，配有金属链，方便悬挂。整体设计将传统与现代元素相结合，既展现了中国传统文化的魅力，又具有时尚感，适合作为装饰品或礼品。', '10', '2');
INSERT INTO `goods` VALUES ('21', '挂件（黄色）', '/picture/1735881811916.jpg', '/picture/1735881811916.jpg', '/picture/1735881811917.jpg', '39', '这些挂件上的图案是穿着传统中式服装的人物形象，人物的发型和服饰都极具中国特色。人物的服装色彩鲜艳，有红色、蓝色、黄色等，并且装饰有精美的花纹。挂件的形状为圆形，配有金属链，方便悬挂。整体设计将传统与现代元素相结合，既展现了中国传统文化的魅力，又具有时尚感，适合作为装饰品或礼品。', '10', '2');
INSERT INTO `goods` VALUES ('23', '日记本（黄色）', '/picture/1735881843327.jpg', '/picture/1735881843328.jpg', '/picture/1735881843329.jpg', '29.9', '日记本的封面上有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有红色、绿色和黄色等，显得非常典雅。每个封面上还印有“长恨歌”字样，增添了文化氛围。整体设计将传统与现代元素相结合，既美观又富有文化内涵，适合作为日常记录或收藏。', '10', '3');
INSERT INTO `goods` VALUES ('24', '日记本（绿色）', '/picture/1735881871998.jpg', '/picture/1735881871999.jpg', '/picture/1735881871999.jpg', '28', '日记本的封面上有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有红色、绿色和黄色等，显得非常典雅。每个封面上还印有“长恨歌”字样，增添了文化氛围。整体设计将传统与现代元素相结合，既美观又富有文化内涵，适合作为日常记录或收藏。', '10', '3');
INSERT INTO `goods` VALUES ('25', '日记本（粉色）', '/picture/1735881919534.jpg', '/picture/1735881919535.jpg', '/picture/1735881919536.jpg', '38', '日记本的封面上有穿着传统服饰的卡通人物形象，这些人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有红色、绿色和黄色等，显得非常典雅。每个封面上还印有“长恨歌”字样，增添了文化氛围。整体设计将传统与现代元素相结合，既美观又富有文化内涵，适合作为日常记录或收藏。', '10', '3');
INSERT INTO `goods` VALUES ('26', '帆布袋（黄色）', '/picture/1735881936754.jpg', '/picture/1735881936755.jpg', '/picture/1735881936756.jpg', '36', '布袋上的图案是穿着传统中式服装的人物形象，人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有红色、绿色和黄色等，显得非常典雅。每个布袋上还配有不同颜色的提手，如绿色、蓝色和粉色，整体设计将传统与现代元素相结合，既美观又实用，适合日常使用或作为礼品。', '10', '5');
INSERT INTO `goods` VALUES ('27', '帆布袋（绿色）', '/picture/1735881952598.jpg', '/picture/1735881952599.jpg', '/picture/1735881952600.jpg', '36', '布袋上的图案是穿着传统中式服装的人物形象，人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。', '10', '5');
INSERT INTO `goods` VALUES ('28', '帆布袋（红色）', '/picture/1735882010863.jpg', '/picture/1735882010864.jpg', '/picture/1735882010865.jpg', '39', '布袋上的图案是穿着传统中式服装的人物形象，人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。', '10', '5');
INSERT INTO `goods` VALUES ('29', '帆布包', '/picture/1735882126232.jpg', '/picture/1735882126234.jpg', '/picture/1735882126234.jpg', '99', '布袋上的图案是穿着传统中式服装的人物形象，人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有红色、绿色和黄色等，显得非常典雅。每个布袋上还配有不同颜色的提手，如绿色、蓝色和粉色，整体设计将传统与现代元素相结合，既美观又实用，适合日常使用或作为礼品。', '10', '5');
INSERT INTO `goods` VALUES ('30', '挂历', '/picture/1735882218743.jpg', '/picture/1735882218744.jpg', '/picture/1735882218744.jpg', '29', '挂历上有两位身着传统服饰的女性形象，她们的姿态优美，服饰色彩鲜艳，分别穿着蓝色和绿色的古装。挂历中间有一个红色的圆形，里面写着“长恨歌”三个大字，下方标注着“（西安必看）”，表明这是西安的一个著名演出。挂历的四个角落分别有“绝”“美”“舞”“剧”四个字，并且在“舞”和“剧”字下方有英文翻译“A stunning theatre production”，强调这是一场令人惊叹的戏剧演出。整体设计具有浓郁的中国风，传达出《长恨歌》演出的艺术魅力。', '10', '3');
INSERT INTO `goods` VALUES ('31', '帽子（红色）', '/picture/1735882293978.jpg', '/picture/1735882293979.jpg', '/picture/1735882293979.jpg', '28', '帽子的设计是红色的帽子，正面印有穿着传统服饰的卡通人物形象，帽子侧面印有“HUQ QING PALACE STAGE THEATRE”字样；整体风格简洁而富有文化气息。这些帽子通过独特的设计展现了中国传统文化元素，既时尚又具有文化内涵，适合作为日常穿搭的配饰。', '10', '5');
INSERT INTO `goods` VALUES ('32', '帽子（橙色）', '/picture/1735882345716.jpg', '/picture/1735882345717.jpg', '/picture/1735882345717.jpg', '38', '帽子的设计是橙色的帽子，上面印有白色的花朵图案，整体风格简洁而富有文化气息。这些帽子通过独特的设计展现了中国传统文化元素，既时尚又具有文化内涵，适合作为日常穿搭的配饰。', '10', '5');
INSERT INTO `goods` VALUES ('33', '鼠标垫', '/picture/1735882392731.jpg', '/picture/1735882392732.jpg', '/picture/1735882392733.jpg', '36', '人物的发型和服饰都极具中国特色，色彩鲜艳且搭配和谐。人物的服饰上有精美的花纹装饰，背景颜色有红色、绿色和黄色等，显得非常典雅。每个布袋上还配有不同颜色的提手，如绿色、蓝色和粉色，整体设计将传统与现代元素相结合，既美观又实用，适合日常使用或作为礼品。', '10', '5');
INSERT INTO `goods` VALUES ('34', '贴纸1', '/picture/1735882428008.jpg', '/picture/1735882428009.jpg', '/picture/1735882428010.jpg', '36', '图中的文创贴纸具有浓郁的中国风。画面中的人物穿着传统的中式服装，服装上有精美的花纹装饰，色彩鲜艳。人物的发型也是典型的中式发型，并且搭配了发饰，如花朵和发带等。这些贴纸通过可爱的卡通风格展现了中国传统文化元素，给人一种既古典又时尚的感觉，非常适合用于装饰手账、日记本或者作为礼物包装上的点缀。', '10', '11');
INSERT INTO `goods` VALUES ('35', '贴纸2', '/picture/1735882451394.jpg', '/picture/1735882451395.jpg', '/picture/1735882451396.jpg', '39', '图中的文创贴纸具有浓郁的中国风。画面中的人物穿着传统的中式服装，服装上有精美的花纹装饰，色彩鲜艳。人物的发型也是典型的中式发型，并且搭配了发饰，如花朵和发带等。这些贴纸通过可爱的卡通风格展现了中国传统文化元素，给人一种既古典又时尚的感觉，非常适合用于装饰手账、日记本或者作为礼物包装上的点缀。', '10', '11');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `paytype` tinyint(1) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('75', '28', '1', '4', '2', '管理员', '1333333333', '中华人民共和国', '2019-10-07 12:31:07', '1');
INSERT INTO `order` VALUES ('76', '172', '3', '2', '1', '雒京菲', '17335814632', '山西太原', '2025-01-03 05:46:04', '2');
INSERT INTO `order` VALUES ('77', '108', '1', '3', '3', '雒京菲', '17335814632', '山西太原', '2025-01-03 05:47:13', '2');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_idx` (`order_id`),
  KEY `fk_orderitem_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('78', '28', '1', '10', '75');
INSERT INTO `orderitem` VALUES ('79', '28', '1', '10', '76');
INSERT INTO `orderitem` VALUES ('80', '108', '1', '12', '76');
INSERT INTO `orderitem` VALUES ('81', '36', '1', '13', '76');
INSERT INTO `orderitem` VALUES ('82', '108', '1', '12', '77');

-- ----------------------------
-- Table structure for `recommend`
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_goods_id_idx` (`goods_id`),
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('9', '2', '9');
INSERT INTO `recommend` VALUES ('10', '3', '10');
INSERT INTO `recommend` VALUES ('11', '3', '12');
INSERT INTO `recommend` VALUES ('12', '3', '13');
INSERT INTO `recommend` VALUES ('13', '3', '14');
INSERT INTO `recommend` VALUES ('14', '3', '15');
INSERT INTO `recommend` VALUES ('15', '3', '16');
INSERT INTO `recommend` VALUES ('17', '3', '18');
INSERT INTO `recommend` VALUES ('18', '3', '19');
INSERT INTO `recommend` VALUES ('33', '2', '10');
INSERT INTO `recommend` VALUES ('34', '2', '11');
INSERT INTO `recommend` VALUES ('35', '2', '12');
INSERT INTO `recommend` VALUES ('36', '2', '13');
INSERT INTO `recommend` VALUES ('37', '2', '14');
INSERT INTO `recommend` VALUES ('38', '2', '15');
INSERT INTO `recommend` VALUES ('39', '2', '16');
INSERT INTO `recommend` VALUES ('40', '2', '18');
INSERT INTO `recommend` VALUES ('41', '2', '26');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '杯子系列');
INSERT INTO `type` VALUES ('2', '挂件系列');
INSERT INTO `type` VALUES ('3', '挂历，本系列');
INSERT INTO `type` VALUES ('4', '徽章系列');
INSERT INTO `type` VALUES ('5', '布艺系列');
INSERT INTO `type` VALUES ('8', '抱枕系列');
INSERT INTO `type` VALUES ('11', '贴纸系列');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '751950619@qq.com', 'admin', '管理员', '13333333333', 'china', '', '');
INSERT INTO `user` VALUES ('2', 'ljf', '2227969172@qq.com', '123456', '雒京菲', '17335814632', '山西太原', '', '');
