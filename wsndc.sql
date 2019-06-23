/*
Navicat MySQL Data Transfer

Source Server         : my_database
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : wsndc

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-06-13 08:46:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `comtype` varchar(255) DEFAULT NULL,
  `content` text,
  `nice` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', 'post', null, null, null);

-- ----------------------------
-- Table structure for comment_reply
-- ----------------------------
DROP TABLE IF EXISTS `comment_reply`;
CREATE TABLE `comment_reply` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cid` int(20) DEFAULT NULL,
  `rid` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ingredie
-- ----------------------------
DROP TABLE IF EXISTS `ingredie`;
CREATE TABLE `ingredie` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `iname` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ingredie
-- ----------------------------
INSERT INTO `ingredie` VALUES ('1', '排骨', '', '肉类');
INSERT INTO `ingredie` VALUES ('2', '清水', null, '辅料');
INSERT INTO `ingredie` VALUES ('3', '冰糖', null, '调味品');
INSERT INTO `ingredie` VALUES ('4', '油', null, '辅料');
INSERT INTO `ingredie` VALUES ('5', '香葱', null, '辅料');
INSERT INTO `ingredie` VALUES ('6', '姜片', null, '辅料');
INSERT INTO `ingredie` VALUES ('7', '桂皮', null, '辅料');
INSERT INTO `ingredie` VALUES ('8', '八角', null, '调味品');
INSERT INTO `ingredie` VALUES ('9', '细盐', null, '调味品');
INSERT INTO `ingredie` VALUES ('10', '生抽', null, '调味品');
INSERT INTO `ingredie` VALUES ('11', '花雕酒', null, '调味品');
INSERT INTO `ingredie` VALUES ('12', '腊肉', null, '肉类');
INSERT INTO `ingredie` VALUES ('13', '尖椒', null, '辅料');
INSERT INTO `ingredie` VALUES ('14', '蒜苗', null, '辅料');
INSERT INTO `ingredie` VALUES ('15', '红辣椒', null, '辅料');
INSERT INTO `ingredie` VALUES ('16', '老姜', null, '辅料');
INSERT INTO `ingredie` VALUES ('17', '老抽', null, '调味品');
INSERT INTO `ingredie` VALUES ('18', '食用油', null, '辅料');
INSERT INTO `ingredie` VALUES ('19', '黄瓜', null, '蔬果');
INSERT INTO `ingredie` VALUES ('20', '千禧小番茄', null, '蔬果');
INSERT INTO `ingredie` VALUES ('21', '西生菜', null, '蔬果');
INSERT INTO `ingredie` VALUES ('22', '腐竹', null, '豆类制品');
INSERT INTO `ingredie` VALUES ('23', '木耳', null, '菌类');
INSERT INTO `ingredie` VALUES ('24', '银耳', null, '菌类');
INSERT INTO `ingredie` VALUES ('25', '小葱', null, '辅料');
INSERT INTO `ingredie` VALUES ('26', '大蒜', null, '辅料');
INSERT INTO `ingredie` VALUES ('27', '小米椒', null, '辅料');
INSERT INTO `ingredie` VALUES ('28', '凉拌醋', null, '调味品');
INSERT INTO `ingredie` VALUES ('29', '白糖', null, '调味品');
INSERT INTO `ingredie` VALUES ('30', '花椒油', null, '调味品');
INSERT INTO `ingredie` VALUES ('31', '香油', null, '辅料');
INSERT INTO `ingredie` VALUES ('32', '料酒', null, '调味品');
INSERT INTO `ingredie` VALUES ('33', '醋', null, '调味品');
INSERT INTO `ingredie` VALUES ('34', '带鱼', null, '肉类');
INSERT INTO `ingredie` VALUES ('35', '鸡蛋', null, '肉类');
INSERT INTO `ingredie` VALUES ('36', '淀粉', null, '辅料');
INSERT INTO `ingredie` VALUES ('37', '面包糠', null, '豆类制品');
INSERT INTO `ingredie` VALUES ('38', '花椒', null, '辅料');
INSERT INTO `ingredie` VALUES ('39', '白酒', null, '调味品');
INSERT INTO `ingredie` VALUES ('40', '土豆', null, '蔬果');
INSERT INTO `ingredie` VALUES ('41', '瘦肉', null, '肉类');
INSERT INTO `ingredie` VALUES ('42', '青椒', null, '蔬果');
INSERT INTO `ingredie` VALUES ('43', '酱油', null, '调味品');
INSERT INTO `ingredie` VALUES ('44', '味精', null, '调味品');
INSERT INTO `ingredie` VALUES ('45', '生粉', null, '辅料');
INSERT INTO `ingredie` VALUES ('46', '荷兰豆', null, '蔬果');
INSERT INTO `ingredie` VALUES ('47', '胡萝卜', null, '蔬果');
INSERT INTO `ingredie` VALUES ('48', '蒜末', null, '辅料');
INSERT INTO `ingredie` VALUES ('49', '水淀粉', null, '辅料');
INSERT INTO `ingredie` VALUES ('50', '陈皮', null, '调味品');
INSERT INTO `ingredie` VALUES ('51', '香叶', null, '调味品');
INSERT INTO `ingredie` VALUES ('52', '玉米油', null, '辅料');
INSERT INTO `ingredie` VALUES ('53', '熟粽子', null, '辅料');
INSERT INTO `ingredie` VALUES ('54', '烟熏腊肉', null, '肉类');
INSERT INTO `ingredie` VALUES ('55', '菜籽油', null, '辅料');
INSERT INTO `ingredie` VALUES ('56', '千辣椒', null, '辅料');
INSERT INTO `ingredie` VALUES ('57', '大虾', null, '肉类');
INSERT INTO `ingredie` VALUES ('58', '白胡椒粉', null, '调味品');
INSERT INTO `ingredie` VALUES ('59', '味好美椒盐粉', null, '调味品');
INSERT INTO `ingredie` VALUES ('60', '鸡大腿', null, '肉类');
INSERT INTO `ingredie` VALUES ('61', '油辣子', null, '辅料');
INSERT INTO `ingredie` VALUES ('62', '花生油', null, '辅料');
INSERT INTO `ingredie` VALUES ('63', '米酒', null, '调味品');
INSERT INTO `ingredie` VALUES ('64', '鸡中翅', null, '肉类');
INSERT INTO `ingredie` VALUES ('65', '可乐', null, '辅料');
INSERT INTO `ingredie` VALUES ('66', '鸡胸肉', null, '肉类');
INSERT INTO `ingredie` VALUES ('67', '番茄酱', null, '调味品');
INSERT INTO `ingredie` VALUES ('68', '老酒', null, '调味品');
INSERT INTO `ingredie` VALUES ('69', '五香粉', null, '调味品');
INSERT INTO `ingredie` VALUES ('70', '黑胡椒粉', null, '调味品');
INSERT INTO `ingredie` VALUES ('71', '孜然粉', null, '调味品');
INSERT INTO `ingredie` VALUES ('72', '辣椒粉', null, '调味粉');
INSERT INTO `ingredie` VALUES ('73', '芝麻油', null, '辅料');
INSERT INTO `ingredie` VALUES ('74', '辣油', null, '辅料');
INSERT INTO `ingredie` VALUES ('75', '豌豆', null, '蔬果');
INSERT INTO `ingredie` VALUES ('76', '西红柿', null, '蔬果');
INSERT INTO `ingredie` VALUES ('77', '鸡精', null, '调味品');
INSERT INTO `ingredie` VALUES ('78', '鸭架', null, '肉类');
INSERT INTO `ingredie` VALUES ('79', '白菜', null, '蔬果');
INSERT INTO `ingredie` VALUES ('80', '豆腐', null, '豆类制品');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `title` varchar(255) DEFAULT NULL,
  `nice` int(20) DEFAULT NULL,
  `uid` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for ptag
-- ----------------------------
DROP TABLE IF EXISTS `ptag`;
CREATE TABLE `ptag` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pid` int(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fid` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ptag
-- ----------------------------

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  `videPath` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe
-- ----------------------------
INSERT INTO `recipe` VALUES ('1', '红烧排骨', '', '红烧排骨', '好吃红烧排骨，家常菜男女老少人都可食用。适宜于 气血不足，阴虚纳差者；湿热痰滞内蕴者慎服；肥胖、血脂较高者不宜多食。此菜味道香咸，排骨酥烂，色泽金红。');
INSERT INTO `recipe` VALUES ('2', '小炒肉', null, '小炒肉', '有一次，我叫了份外卖~小炒肉，结果打开餐盒满满一盒尖椒，哈哈\r\n今天自己做盘小炒肉，满满的肉肉，配上一碗白米饭，不 来两碗，哈哈');
INSERT INTO `recipe` VALUES ('3', '清爽杂拌', null, '清爽杂拌', '炎炎夏日，来份杂拌，清爽可口');
INSERT INTO `recipe` VALUES ('4', '糖醋排骨', null, '糖醋排骨', '猪排骨的做法其实很多，煲汤红烧，糖醋，焦盐等等，总而言之都是既美味又营养，也是中国的家常菜。\r\n猪排骨除含蛋白质、脂肪、维生素外，还含有大量磷酸钙、骨胶原、骨粘蛋白等，可为幼儿和老人提供钙质。');
INSERT INTO `recipe` VALUES ('5', '香酥炸带鱼', null, '香酥炸带鱼', '经常食用带鱼，具有补益五脏的功效； 带鱼含有丰富的镁元素，对心血管系统有很好的保护作用，有利于预防高血压、心肌梗塞等心血管疾病。常吃带鱼还有养肝补血、泽肤养发健美的功效。 带鱼有养肝、祛风、止血等功能，对治疗出血、疮、痈肿等疾有良效。');
INSERT INTO `recipe` VALUES ('6', '青椒土豆炒肉片', null, '青椒土豆炒肉片', '推荐一道家常菜，简单易操作，营养丰富');
INSERT INTO `recipe` VALUES ('7', '炒三素', null, '炒三素', '菌类一向是健康的代言菜，其营养功能就不用多做介绍。今天带来三蔬搭配让你胃口大增');
INSERT INTO `recipe` VALUES ('8', '土豆蒸排骨', null, '土豆蒸排骨', '这道菜排骨清香适口，土豆软绵香甜');
INSERT INTO `recipe` VALUES ('9', '腊肉粽子回锅', null, '腊肉粽子回锅', '明天就是端午节了，大家打算怎么吃粽子呢？是蒸熟么？NOnono，今天给大家准备了粽子的另一种新鲜吃法——腊肉粽子回锅，回锅家族真是日益壮大啊哈哈哈。炸粽子时要注意火候，一个个下锅，炸至金黄捞出，又软又糯又有嚼劲。同时还有四川的烟熏腊肉，炒好了更是满屋飘香。');
INSERT INTO `recipe` VALUES ('10', '椒盐大虾', null, '椒盐大虾', '大虾的营养丰盛，制作简单又好吃。');
INSERT INTO `recipe` VALUES ('11', '香辣口水鸡', null, '香辣口水鸡', '别看它是荤菜，做起来可简单了，调料加入腌制一下，用电饭锅就能搞定，零油烟，咱们也不用担心会变黄脸婆。夏季炎热，家里就没人不爱这道菜，今天把做法分享出来，您要是喜欢快手的清爽菜，跟着我做起来吧~');
INSERT INTO `recipe` VALUES ('12', '可乐鸡翅', null, '可乐鸡翅', '女儿说：“我想喝可乐。”哲妈说：“那就喝呗。”女儿说：“不敢，怕胃疼。”哲妈说：“那就做你爱吃的可乐鸡翅吧！”女儿：“可以，我吃可乐鸡翅上的可乐，就当喝可乐了。”所以我就说做就做');
INSERT INTO `recipe` VALUES ('13', '炒鸡丝', null, '炒鸡丝', '鸡胸肉是很普通的食用肉之一，其中富含的咪唑二肽具有改善记忆功能的作用，重要的是，鸡胸肉蛋白质含量较高，且易被人体吸收入利用，含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构磷脂的重要来源之一。鸡胸肉有温中益气、补虚填精、健脾胃、活血脉、强筋骨的功效。脂肪含量3%，蛋白质含量20%，适合减肥增肌食用。');
INSERT INTO `recipe` VALUES ('14', '豌豆炒西红柿', null, '豌豆炒西红柿', '这道菜要和米饭拌着吃而且一定要用勺子吃就一个字，香！');
INSERT INTO `recipe` VALUES ('15', '鸭架白菜豆腐汤', null, '鸭架白菜豆腐汤', '豆腐与白菜搭配鸭架，清香四溢，适合夏天的一道汤');
INSERT INTO `recipe` VALUES ('16', '鱼香肉丝', null, '鱼香肉丝', '今天来做一道超级下饭的鱼香肉丝，每次做这个都可以多吃两碗饭，用安珑不沾煎锅来烹饪这道菜，完全不用担心肉丝粘锅哦，非常方便。');

-- ----------------------------
-- Table structure for recipe_ingredie
-- ----------------------------
DROP TABLE IF EXISTS `recipe_ingredie`;
CREATE TABLE `recipe_ingredie` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `rid` int(20) DEFAULT NULL,
  `iid` int(20) DEFAULT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recipe_ingredie
-- ----------------------------
INSERT INTO `recipe_ingredie` VALUES ('1', '1', '1', '400g');
INSERT INTO `recipe_ingredie` VALUES ('2', '1', '2', '400ml');
INSERT INTO `recipe_ingredie` VALUES ('3', '1', '3', '15g');
INSERT INTO `recipe_ingredie` VALUES ('4', '1', '4', '1大匙');
INSERT INTO `recipe_ingredie` VALUES ('5', '1', '5', '2根');
INSERT INTO `recipe_ingredie` VALUES ('6', '1', '6', '5片');
INSERT INTO `recipe_ingredie` VALUES ('7', '1', '7', '2小块');
INSERT INTO `recipe_ingredie` VALUES ('8', '1', '8', '2颗');
INSERT INTO `recipe_ingredie` VALUES ('9', '1', '9', '1/2匙');
INSERT INTO `recipe_ingredie` VALUES ('10', '1', '10', '1大匙');
INSERT INTO `recipe_ingredie` VALUES ('11', '1', '11', '1大匙');
INSERT INTO `recipe_ingredie` VALUES ('12', '2', '12', '适量');
INSERT INTO `recipe_ingredie` VALUES ('13', '2', '13', '适量');
INSERT INTO `recipe_ingredie` VALUES ('14', '2', '14', '适量');
INSERT INTO `recipe_ingredie` VALUES ('15', '2', '15', '五个');
INSERT INTO `recipe_ingredie` VALUES ('16', '2', '16', '适量');
INSERT INTO `recipe_ingredie` VALUES ('17', '2', '10', '少许');
INSERT INTO `recipe_ingredie` VALUES ('18', '2', '18', '少许');
INSERT INTO `recipe_ingredie` VALUES ('19', '3', '19', '1根');
INSERT INTO `recipe_ingredie` VALUES ('20', '3', '20', '4个');
INSERT INTO `recipe_ingredie` VALUES ('21', '3', '21', '3片');
INSERT INTO `recipe_ingredie` VALUES ('22', '3', '22', '适量');
INSERT INTO `recipe_ingredie` VALUES ('23', '3', '23', '适量');
INSERT INTO `recipe_ingredie` VALUES ('24', '3', '24', '适量');
INSERT INTO `recipe_ingredie` VALUES ('25', '3', '25', '1根');
INSERT INTO `recipe_ingredie` VALUES ('26', '3', '26', '3瓣');
INSERT INTO `recipe_ingredie` VALUES ('27', '3', '27', '适量');
INSERT INTO `recipe_ingredie` VALUES ('28', '3', '28', '适量');
INSERT INTO `recipe_ingredie` VALUES ('29', '3', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('30', '3', '10', '适量');
INSERT INTO `recipe_ingredie` VALUES ('31', '3', '29', '适量');
INSERT INTO `recipe_ingredie` VALUES ('32', '3', '30', '适量');
INSERT INTO `recipe_ingredie` VALUES ('33', '3', '31', '适量');
INSERT INTO `recipe_ingredie` VALUES ('34', '4', '1', '适量');
INSERT INTO `recipe_ingredie` VALUES ('35', '4', '5', '适量');
INSERT INTO `recipe_ingredie` VALUES ('36', '4', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('37', '4', '10', '1大勺');
INSERT INTO `recipe_ingredie` VALUES ('38', '4', '16', '适量');
INSERT INTO `recipe_ingredie` VALUES ('39', '4', '17', '1大勺');
INSERT INTO `recipe_ingredie` VALUES ('40', '4', '29', '适量');
INSERT INTO `recipe_ingredie` VALUES ('41', '4', '32', '2大勺');
INSERT INTO `recipe_ingredie` VALUES ('42', '4', '33', '1汤匙');
INSERT INTO `recipe_ingredie` VALUES ('43', '5', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('44', '5', '33', '适量');
INSERT INTO `recipe_ingredie` VALUES ('45', '5', '34', '一条');
INSERT INTO `recipe_ingredie` VALUES ('46', '5', '35', '2个');
INSERT INTO `recipe_ingredie` VALUES ('47', '5', '36', '适量');
INSERT INTO `recipe_ingredie` VALUES ('48', '5', '37', '适量');
INSERT INTO `recipe_ingredie` VALUES ('49', '5', '38', '两个');
INSERT INTO `recipe_ingredie` VALUES ('50', '5', '39', '适量');
INSERT INTO `recipe_ingredie` VALUES ('51', '6', '9', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('52', '6', '25', '1棵');
INSERT INTO `recipe_ingredie` VALUES ('53', '6', '32', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('54', '6', '40', '1棵');
INSERT INTO `recipe_ingredie` VALUES ('55', '6', '41', '1块');
INSERT INTO `recipe_ingredie` VALUES ('56', '6', '42', '两个');
INSERT INTO `recipe_ingredie` VALUES ('57', '6', '43', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('58', '6', '44', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('59', '6', '45', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('60', '7', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('61', '7', '23', '5朵');
INSERT INTO `recipe_ingredie` VALUES ('62', '7', '44', '少许');
INSERT INTO `recipe_ingredie` VALUES ('63', '7', '46', '150克');
INSERT INTO `recipe_ingredie` VALUES ('64', '7', '47', '80克');
INSERT INTO `recipe_ingredie` VALUES ('65', '7', '48', '少许');
INSERT INTO `recipe_ingredie` VALUES ('66', '7', '49', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('67', '8', '1', '一斤');
INSERT INTO `recipe_ingredie` VALUES ('68', '8', '6', '适量');
INSERT INTO `recipe_ingredie` VALUES ('69', '8', '9', '1小勺');
INSERT INTO `recipe_ingredie` VALUES ('70', '8', '10', '1小勺');
INSERT INTO `recipe_ingredie` VALUES ('71', '8', '40', '适量');
INSERT INTO `recipe_ingredie` VALUES ('72', '8', '50', '适量');
INSERT INTO `recipe_ingredie` VALUES ('73', '8', '51', '适量');
INSERT INTO `recipe_ingredie` VALUES ('74', '9', '52', '适量');
INSERT INTO `recipe_ingredie` VALUES ('75', '9', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('76', '9', '15', '20克');
INSERT INTO `recipe_ingredie` VALUES ('77', '9', '26', '适量');
INSERT INTO `recipe_ingredie` VALUES ('78', '9', '42', '50克');
INSERT INTO `recipe_ingredie` VALUES ('79', '9', '53', '两个');
INSERT INTO `recipe_ingredie` VALUES ('80', '9', '54', '300克');
INSERT INTO `recipe_ingredie` VALUES ('81', '9', '55', '适量');
INSERT INTO `recipe_ingredie` VALUES ('82', '9', '56', '3片');
INSERT INTO `recipe_ingredie` VALUES ('83', '10', '5', '适量');
INSERT INTO `recipe_ingredie` VALUES ('84', '10', '6', '3片');
INSERT INTO `recipe_ingredie` VALUES ('85', '10', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('86', '10', '15', '2个');
INSERT INTO `recipe_ingredie` VALUES ('87', '10', '29', '适量');
INSERT INTO `recipe_ingredie` VALUES ('88', '10', '29', '3瓣');
INSERT INTO `recipe_ingredie` VALUES ('89', '10', '32', '20克');
INSERT INTO `recipe_ingredie` VALUES ('90', '10', '42', '2个');
INSERT INTO `recipe_ingredie` VALUES ('91', '10', '57', '13只');
INSERT INTO `recipe_ingredie` VALUES ('92', '10', '58', '适量');
INSERT INTO `recipe_ingredie` VALUES ('93', '10', '59', '适量');
INSERT INTO `recipe_ingredie` VALUES ('94', '11', '6', '4片');
INSERT INTO `recipe_ingredie` VALUES ('95', '11', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('96', '11', '19', '1根');
INSERT INTO `recipe_ingredie` VALUES ('97', '11', '26', '10克');
INSERT INTO `recipe_ingredie` VALUES ('98', '11', '33', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('99', '11', '60', '1个');
INSERT INTO `recipe_ingredie` VALUES ('100', '11', '61', '4勺');
INSERT INTO `recipe_ingredie` VALUES ('101', '11', '62', '适量');
INSERT INTO `recipe_ingredie` VALUES ('102', '11', '63', '2勺');
INSERT INTO `recipe_ingredie` VALUES ('103', '12', '3', '1块');
INSERT INTO `recipe_ingredie` VALUES ('104', '12', '4', '适量');
INSERT INTO `recipe_ingredie` VALUES ('105', '12', '5', '3根');
INSERT INTO `recipe_ingredie` VALUES ('106', '12', '6', '5片');
INSERT INTO `recipe_ingredie` VALUES ('107', '12', '9', '半勺');
INSERT INTO `recipe_ingredie` VALUES ('108', '12', '17', '少许');
INSERT INTO `recipe_ingredie` VALUES ('109', '12', '20', '2勺');
INSERT INTO `recipe_ingredie` VALUES ('110', '12', '32', '1勺');
INSERT INTO `recipe_ingredie` VALUES ('111', '12', '38', '适量');
INSERT INTO `recipe_ingredie` VALUES ('112', '12', '50', '适量');
INSERT INTO `recipe_ingredie` VALUES ('113', '12', '51', '3片');
INSERT INTO `recipe_ingredie` VALUES ('114', '12', '64', '10只');
INSERT INTO `recipe_ingredie` VALUES ('115', '12', '65', '1罐');
INSERT INTO `recipe_ingredie` VALUES ('116', '13', '5', '适量');
INSERT INTO `recipe_ingredie` VALUES ('117', '13', '6', '几片');
INSERT INTO `recipe_ingredie` VALUES ('118', '13', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('119', '13', '17', '适量');
INSERT INTO `recipe_ingredie` VALUES ('120', '13', '66', '三块');
INSERT INTO `recipe_ingredie` VALUES ('121', '13', '67', '适量');
INSERT INTO `recipe_ingredie` VALUES ('122', '13', '68', '适量');
INSERT INTO `recipe_ingredie` VALUES ('123', '13', '69', '适量');
INSERT INTO `recipe_ingredie` VALUES ('124', '13', '70', '适量');
INSERT INTO `recipe_ingredie` VALUES ('125', '13', '71', '适量');
INSERT INTO `recipe_ingredie` VALUES ('126', '13', '72', '适量');
INSERT INTO `recipe_ingredie` VALUES ('127', '13', '73', '适量');
INSERT INTO `recipe_ingredie` VALUES ('128', '13', '74', '适量');
INSERT INTO `recipe_ingredie` VALUES ('129', '14', '75', '300g');
INSERT INTO `recipe_ingredie` VALUES ('130', '14', '76', '500g');
INSERT INTO `recipe_ingredie` VALUES ('131', '14', '77', '少许');
INSERT INTO `recipe_ingredie` VALUES ('132', '14', '4', '少许');
INSERT INTO `recipe_ingredie` VALUES ('133', '14', '9', '少许');
INSERT INTO `recipe_ingredie` VALUES ('134', '14', '29', '少许');
INSERT INTO `recipe_ingredie` VALUES ('135', '14', '36', '少许');
INSERT INTO `recipe_ingredie` VALUES ('136', '15', '78', '1个');
INSERT INTO `recipe_ingredie` VALUES ('137', '15', '79', '1棵');
INSERT INTO `recipe_ingredie` VALUES ('138', '15', '80', '200克');
INSERT INTO `recipe_ingredie` VALUES ('139', '15', '9', '适量');
INSERT INTO `recipe_ingredie` VALUES ('140', '15', '70', '少许');

-- ----------------------------
-- Table structure for rtag
-- ----------------------------
DROP TABLE IF EXISTS `rtag`;
CREATE TABLE `rtag` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `rid` int(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fid` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rtag
-- ----------------------------

-- ----------------------------
-- Table structure for step
-- ----------------------------
DROP TABLE IF EXISTS `step`;
CREATE TABLE `step` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `recipe_order` int(20) DEFAULT NULL,
  `process` text,
  `imagePath` varchar(255) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of step
-- ----------------------------
INSERT INTO `step` VALUES ('1', '1', '准备好所需食材，排骨用清水浸泡5分钟后，冲洗几遍去除血水', '红烧排骨', '1');
INSERT INTO `step` VALUES ('2', '2', '排骨先在开水中过一遍，大概煮上2分钟左右，水中放点料酒，可以去腥。然后捞出', '红烧排骨', '1');
INSERT INTO `step` VALUES ('3', '3', '起锅，锅内放入油，放点白糖，然后加入排骨，炒至均匀上色', '红烧排骨', '1');
INSERT INTO `step` VALUES ('4', '4', '锅内加水，加到把排骨覆盖为止。加入所有调料', '红烧排骨', '1');
INSERT INTO `step` VALUES ('5', '5', '大火煮开后，将排骨连汤汁转到深小锅内，加盖小火焖煮60分钟', '红烧排骨', '1');
INSERT INTO `step` VALUES ('6', '6', '煮至水剩约1/3时，将桂皮，姜片，香葱，八角捞出。转小火收汁，OK', '红烧排骨', '1');
INSERT INTO `step` VALUES ('7', '1', '将青椒，蒜苗洗净备用', '小炒肉', '2');
INSERT INTO `step` VALUES ('8', '2', '腊肉煮10分钟左右，洗净备用', '小炒肉', '2');
INSERT INTO `step` VALUES ('9', '3', '辣椒切滚刀段，肉切片，备用', '小炒肉', '2');
INSERT INTO `step` VALUES ('10', '4', '蒜头、姜片切丝，蒜苗切段，红辣椒切丁备用', '小炒肉', '2');
INSERT INTO `step` VALUES ('11', '5', '起油锅，放入蒜、姜、辣椒，炒出香味', '小炒肉', '2');
INSERT INTO `step` VALUES ('12', '6', '放入肉片煸炒，待肉炒至金黄倒入尖椒翻炒', '小炒肉', '2');
INSERT INTO `step` VALUES ('13', '7', '撒入少许生抽 上色入味，翻炒下，待尖椒熟', '小炒肉', '2');
INSERT INTO `step` VALUES ('14', '8', '撒入蒜苗翻炒下，起锅', '小炒肉', '2');
INSERT INTO `step` VALUES ('15', '9', '一盘让人垂涎欲滴小炒肉做好了，配碗米饭享用吧', '小炒肉', '2');
INSERT INTO `step` VALUES ('16', '1', '银耳、木耳、腐竹提前泡发，小番茄、黄瓜、西生菜洗净备用', '清爽杂拌', '3');
INSERT INTO `step` VALUES ('17', '2', '锅内水烧开，放入银耳、木耳焯熟，放入腐竹，水开后捞出，过凉水备用', '清爽杂拌', '3');
INSERT INTO `step` VALUES ('18', '3', '小番茄切块，黄瓜削皮切片（或用刀拍两下切块），放入容器', '清爽杂拌', '3');
INSERT INTO `step` VALUES ('19', '4', '西生菜手撕成小片放入容器', '清爽杂拌', '3');
INSERT INTO `step` VALUES ('20', '5', '调汁，小葱切段，蒜、小米椒切碎放入小碗，加入盐、凉拌醋适量，花椒油、生抽、白糖、香油少许，（可根据自己口味加入适量辣椒油），搅拌均匀', '清爽杂拌', '3');
INSERT INTO `step` VALUES ('21', '6', '将焯过水的双耳、腐竹放入容器', '清爽杂拌', '3');
INSERT INTO `step` VALUES ('22', '7', '倒入调汁拌匀', '清爽杂拌', '3');
INSERT INTO `step` VALUES ('23', '1', '将买回的排骨清水洗净入锅焯水，水位置位于排骨上，大火烧开，烧几分钟，这样你会看到水上漂浮着大量的浮沫，这是排骨里的血水煮出来了，焯水的目的就是这个，去除腥味儿，多煮几分钟是将脂肪和胆固醇分解出来，和红烧肉是一个道理，因为猪肉或排骨里脂肪含量高，胆固醇含量也不低，分解一部分后会更加健康。', '糖醋排骨', '4');
INSERT INTO `step` VALUES ('24', '2', '将焯好水的排骨捞出洗净，并沥干水分，葱姜切好备用', '糖醋排骨', '4');
INSERT INTO `step` VALUES ('25', '3', '锅内入少量食用油，将葱白和姜入锅爆香，倒入备好的排骨翻炒几下，倒入料酒，一大勺的样子，多点也没关系，这个量没什么讲究，主要是去腥味儿，翻炒片刻分别加入生抽老抽，盐和糖(冰糖白糖都可以，白砂糖甜味，重些量的话根据口味添加，喜甜多加点)醋一汤匙，翻炒至上色。', '糖醋排骨', '4');
INSERT INTO `step` VALUES ('26', '4', '后面就简单了，加水盖盖大火烧开，再转小火烧二十分钟，这样排骨就入味了，再大火烧收汤汁，待汤汁浓稠即可出锅。', '糖醋排骨', '4');
INSERT INTO `step` VALUES ('27', '1', '带鱼去头洗净，斩段。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('28', '2', '加入白酒 醋 盐 花椒腌制30分钟。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('29', '3', '锅中放油，烧制6成热。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('30', '4', '腌制好的带鱼先裹上一层淀粉。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('31', '5', '再沾上一层蛋液。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('32', '6', '再沾满面包糠。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('33', '7', '放入6成热的油锅中。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('34', '8', '小火炸至两面金黄即可。', '香酥炸带鱼', '5');
INSERT INTO `step` VALUES ('35', '1', '青椒切块葱切段备用', '青椒土豆炒肉片', '6');
INSERT INTO `step` VALUES ('36', '2', '肉切片用生粉水抓匀。', '青椒土豆炒肉片', '6');
INSERT INTO `step` VALUES ('37', '3', '土豆片切片放入水中浸泡一会儿。', '青椒土豆炒肉片', '6');
INSERT INTO `step` VALUES ('38', '4', '放油下葱炒香倒入肉片和土豆片翻炒加入适量料酒和酱油及水焖煮一会。', '青椒土豆炒肉片', '6');
INSERT INTO `step` VALUES ('39', '5', '水快没的时候加入青椒片翻炒均匀加入适量盐和胡椒粉味精调味即可出锅', '青椒土豆炒肉片', '6');
INSERT INTO `step` VALUES ('40', '1', '黑木耳提前1小时泡发，切小块。', '炒三素', '7');
INSERT INTO `step` VALUES ('41', '2', '荷兰豆择去两头的丝络，洗净备用。', '炒三素', '7');
INSERT INTO `step` VALUES ('42', '3', '胡萝卜洗净切菱形片。', '炒三素', '7');
INSERT INTO `step` VALUES ('43', '4', '锅中加水烧开分别将木耳和荷兰豆煮过，木耳水开煮3-5分钟，荷兰豆煮1-2分钟即可。', '炒三素', '7');
INSERT INTO `step` VALUES ('44', '5', '炒锅热油，炒香蒜，下胡萝卜，中小火翻炒至8分熟。', '炒三素', '7');
INSERT INTO `step` VALUES ('45', '6', '加入木耳及荷兰豆，翻炒均匀，加入盐，味精，水淀粉炒匀收汁即可。', '炒三素', '7');
INSERT INTO `step` VALUES ('46', '1', '油锅烧至六成熟倒入玉米油，大火煸炒生姜丝。', '土豆蒸排骨', '8');
INSERT INTO `step` VALUES ('47', '2', '倒入排骨继续大火煸炒。', '土豆蒸排骨', '8');
INSERT INTO `step` VALUES ('48', '3', '倒入土豆块，加入陈皮，香叶煸炒出香味，加入少许生抽，少许盐。', '土豆蒸排骨', '8');
INSERT INTO `step` VALUES ('49', '4', '将食材装入盘中，大火蒸35分钟。', '土豆蒸排骨', '8');
INSERT INTO `step` VALUES ('50', '5', '完成，美味的土豆蒸排骨就做好啦', '土豆蒸排骨', '8');
INSERT INTO `step` VALUES ('51', '1', '将所有食材切好备用 。', '腊肉粽子回锅', '9');
INSERT INTO `step` VALUES ('52', '2', '锅中加入适量菜籽油，七成油温时（约200度）下入粽子。', '腊肉粽子回锅', '9');
INSERT INTO `step` VALUES ('53', '3', '炸至金黄捞出。', '腊肉粽子回锅', '9');
INSERT INTO `step` VALUES ('54', '4', '锅中留适量油，下入蒜片、干辣椒。', '腊肉粽子回锅', '9');
INSERT INTO `step` VALUES ('55', '5', '再下入烟熏腊肉。', '腊肉粽子回锅', '9');
INSERT INTO `step` VALUES ('56', '6', '锅中加入二荆条、红椒，再加入粽子进行翻炒，最后微微加点盐即可出锅。', '腊肉粽子回锅', '9');
INSERT INTO `step` VALUES ('57', '1', '大虾13个洗干净，剪去虾须，开虾背去抽虾线，用料酒20g，盐3g，糖3g，白胡椒粉1小勺腌15到20分钟。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('58', '2', '青椒2个和红椒2个切圈，大蒜3瓣，姜3片切碎末。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('59', '3', '倒掉腌虾的水，用厨房纸吸干表面的水分。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('60', '4', '让每个虾身上都沾上淀粉。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('61', '5', '锅中放入比平时炒菜多一倍的油，小火慢煎。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('62', '6', '每面煎1分钟或1分半钟至两面焦黄。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('63', '7', '利用锅里的余油爆香青红椒姜蒜碎。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('64', '8', '加入味好美椒盐粉3g，出锅撒点香葱碎。', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('65', '9', '椒盐大虾做法简单又香极好吃极了！', '椒盐大虾', '10');
INSERT INTO `step` VALUES ('66', '1', '准备好材料，葱花可要可不要，我用的是米酒去腥，吃起来也香。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('67', '2', '将米酒和姜片倒在鸡腿上，用手抓匀腌制20分钟去腥。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('68', '3', '电饭锅里加入清水，放上蒸架，我用的是臻米的，内配蒸架。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('69', '4', '将腌制好的鸡腿放入电饭锅里，确保锅里的水要足够蒸熟哦。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('70', '5', '盖上锅的盖子，启动蒸菜键，蒸15分钟，如果是用蒸锅，时间可以稍缩短2-3分钟，看鸡腿的大小来定，要蒸到熟透。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('71', '6', '15分钟后，鸡腿蒸熟了，准备好一盆冰水，将鸡肉迅速放入冰水里降温，这一步可以让鸡肉变得更爽口。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('72', '7', '鸡腿取出来后切片。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('73', '8', '此时将黄瓜去皮切片摆在盘底，口水鸡和黄瓜是绝配，酱汁会把黄瓜泡得又脆又好吃，喜欢其他配菜的也可以切好放入。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('74', '9', '将所有调料混合成酱汁，米醋也可换成陈醋，喜欢辣椒油多的就多加两勺进去', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('75', '10', '鸡肉摆在黄瓜片上，淋上酱汁，吃的时候拌匀就可以吃，鸡肉一定要沾上酱汁再吃，味道真的太棒。', '香辣口水鸡', '11');
INSERT INTO `step` VALUES ('76', '1', '翅中洗净划两刀，冷水下锅煮沸去浮沫。', '可乐鸡翅', '12');
INSERT INTO `step` VALUES ('77', '2', '捞出洗去浮沫，放入盐、料酒、生抽腌制30分钟入味。', '可乐鸡翅', '12');
INSERT INTO `step` VALUES ('78', '3', '姜切片，葱切段。', '可乐鸡翅', '12');
INSERT INTO `step` VALUES ('79', '4', '平底锅放入少量油，鸡翅煎至两面金黄。', '可乐鸡翅', '12');
INSERT INTO `step` VALUES ('80', '5', '放入可乐、冰糖、老抽、葱、姜、香叶、陈皮煮沸，盖上锅盖转小火焖15分钟。', '可乐鸡翅', '12');
INSERT INTO `step` VALUES ('81', '6', '大火收汁，出锅装盘。', '可乐鸡翅', '12');
INSERT INTO `step` VALUES ('82', '1', '鸡胸肉冷藏室一夜，自然解冻。清洗干净，去掉血管、油脂。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('83', '2', '温水倒入锅里，加老酒、姜片，将鸡胸肉下锅，水沸腾后煮10分钟，用筷子能轻易扎透，就可以了。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('84', '3', '温水再次清洗干净。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('85', '4', '手撕开，艰苦的工作，要有耐心。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('86', '5', '分成两个锅，辣和不辣。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('87', '6', '不辣：加番茄酱、孜然粉，少许老酒，几滴老抽，少许盐，芝麻油少量，翻拌均匀。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('88', '7', '辣：加番茄酱、五香粉，黑胡椒粉，少许老酒，几滴老抽，少许盐，辣油少量，翻拌均匀。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('89', '8', '开始大火，快速蒸发水份，用筷子翻拌，水汽变少，改用小火继续烘，共约12-15分钟就比较干了。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('90', '9', '加入白芝麻，喜欢香葱的加些葱末。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('91', '10', '也可以再加点辣椒粉。', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('92', '11', '出锅，享用啦！是不是很简单？', '炒鸡丝', '13');
INSERT INTO `step` VALUES ('93', '1', '剥好的味道洗净，沸水中加少许盐放入豌豆煮熟后捞出过凉备用。', '豌豆炒西红柿', '14');
INSERT INTO `step` VALUES ('94', '2', '西红柿去皮切成小块，坐锅点火倒油葱花爆香放入西红柿。', '豌豆炒西红柿', '14');
INSERT INTO `step` VALUES ('95', '3', '西红柿要多炒一会儿炒出红油放入豌豆。', '豌豆炒西红柿', '14');
INSERT INTO `step` VALUES ('96', '4', '翻炒一会儿后加入少许盐，糖，鸡精拌匀后勾芡出锅。', '豌豆炒西红柿', '14');
INSERT INTO `step` VALUES ('97', '5', '美味的豌豆炒西红柿就做好啦', '豌豆炒西红柿', '14');
INSERT INTO `step` VALUES ('98', '1', '鸭架入锅中。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('99', '2', '加入清水烧开大火煮5分钟。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('100', '3', '小火加盖煮40分钟。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('101', '4', '豆腐切块。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('102', '5', '小白菜切段。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('103', '6', '下入豆腐炖煮5分钟，加盐，胡椒粉。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('104', '7', '加白菜煮2分钟。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('105', '8', '撒葱花或香菜出锅。', '鸭架白菜豆腐汤', '15');
INSERT INTO `step` VALUES ('106', '1', '阿斯顿撒大,阿斯顿撒大所', '鱼香肉丝', '16');
INSERT INTO `step` VALUES ('113', '2', '阿斯顿撒大所', '鱼香肉丝', '16');
INSERT INTO `step` VALUES ('114', '3', '阿斯顿撒大', '鱼香肉丝', '16');
INSERT INTO `step` VALUES ('115', '4', '阿斯顿撒大所多', '鱼香肉丝', '16');
INSERT INTO `step` VALUES ('116', '1', null, null, '1');
INSERT INTO `step` VALUES ('117', '1', null, null, '5');
INSERT INTO `step` VALUES ('118', '1', null, null, '6');
INSERT INTO `step` VALUES ('119', '1', null, null, '6');
INSERT INTO `step` VALUES ('120', '1', null, null, '12');
INSERT INTO `step` VALUES ('121', '1', null, null, '12');
INSERT INTO `step` VALUES ('122', '1', null, null, '12');
INSERT INTO `step` VALUES ('123', '1', null, null, '1');
INSERT INTO `step` VALUES ('124', '1', null, null, '1');
INSERT INTO `step` VALUES ('125', '1', null, null, '1');
INSERT INTO `step` VALUES ('126', '1', null, null, '1');
INSERT INTO `step` VALUES ('127', '1', null, null, '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `iconPath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'zengyunqi', '123456', '1235456413', '344563@qq.com', '管理员', null);
INSERT INTO `user` VALUES ('3', 'huangyuhan', '123456', '213456134646', '2313454@qq.com', '管理员', null);
INSERT INTO `user` VALUES ('4', '李阳', '123456', '135666566', '321645@qq.com', '普通用户', null);
INSERT INTO `user` VALUES ('5', 'zengyunqi', 'zengyunqi', 'zengyunqi', 'zengyunqi@qq.com', '普通用户', null);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `view` int(255) DEFAULT NULL,
  `uid` int(20) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '红烧排骨', '好吃红烧排骨，家常菜男女老少人都可食用。适宜于 气血不足，阴虚纳差者；湿热痰滞内蕴者慎服；肥胖、血脂较高者不宜多食。此菜味道香咸，排骨酥烂，色泽金红。', '12540', null, '已过审', '2019-06-11 12:16:09');
INSERT INTO `video` VALUES ('2', '小炒肉', '今天自己做盘小炒肉，满满的肉肉，配上一碗白米饭，不 来两碗，哈哈', '14821', null, '已过审', '2019-06-05 12:17:30');
INSERT INTO `video` VALUES ('3', '清爽杂拌', '炎炎夏日，来份杂拌，清爽可口', '14520', null, '已过审', '2019-06-01 12:18:05');
INSERT INTO `video` VALUES ('4', '糖醋排骨', '猪排骨除含蛋白质、脂肪、维生素外，还含有大量磷酸钙、骨胶原、骨粘蛋白等，可为幼儿和老人提供钙质。', '35410', null, '已过审', '2019-05-09 12:18:31');
INSERT INTO `video` VALUES ('5', '香酥炸带鱼', '经常食用带鱼，具有补益五脏的功效； 带鱼含有丰富的镁元素，对心血管系统有很好的保护作用，有利于预防高血压、心肌梗塞等心血管疾病。常吃带鱼还有养肝补血、泽肤养发健美的功效。 带鱼有养肝、祛风、止血等功能，对治疗出血、疮、痈肿等疾有良效。', '54841', null, '已过审', '2019-04-17 12:19:07');
INSERT INTO `video` VALUES ('6', '青椒土豆炒肉片', '推荐一道家常菜，简单易操作，营养丰富', '32414', null, '已过审', '2019-06-04 12:19:55');
INSERT INTO `video` VALUES ('7', '炒三素', '菌类一向是健康的代言菜，其营养功能就不用多做介绍。今天带来三蔬搭配让你胃口大增', '15484', null, '已过审', '2017-01-20 12:20:27');
INSERT INTO `video` VALUES ('8', '土豆蒸排骨', '这道菜排骨清香适口，土豆软绵香甜', '75471', null, '已过审', '2019-05-27 12:21:01');
INSERT INTO `video` VALUES ('9', '腊肉粽子回锅', '明天就是端午节了，大家打算怎么吃粽子呢？是蒸熟么？NOnono，今天给大家准备了粽子的另一种新鲜吃法——腊肉粽子回锅，回锅家族真是日益壮大啊哈哈哈。炸粽子时要注意火候，一个个下锅，炸至金黄捞出，又软又糯又有嚼劲。同时还有四川的烟熏腊肉，炒好了更是满屋飘香。', '65471', null, '已过审', '2019-05-08 12:21:31');
INSERT INTO `video` VALUES ('10', '椒盐大虾', '大虾的营养丰盛，制作简单又好吃。', '22451', null, '已过审', '2019-05-31 12:22:14');
INSERT INTO `video` VALUES ('11', '香辣口水鸡', '别看它是荤菜，做起来可简单了，调料加入腌制一下，用电饭锅就能搞定，零油烟，咱们也不用担心会变黄脸婆。夏季炎热，家里就没人不爱这道菜，今天把做法分享出来，您要是喜欢快手的清爽菜，跟着我做起来吧~', '47156', null, '已过审', '2019-04-11 12:22:47');
INSERT INTO `video` VALUES ('12', '可乐鸡翅', '女儿说：“我想喝可乐。”哲妈说：“那就喝呗。”女儿说：“不敢，怕胃疼。”哲妈说：“那就做你爱吃的可乐鸡翅吧！”女儿：“可以，我吃可乐鸡翅上的可乐，就当喝可乐了。”所以我就说做就做', '94752', null, '已过审', '2019-04-17 12:23:25');
INSERT INTO `video` VALUES ('13', '炒鸡丝', '鸡胸肉是很普通的食用肉之一，其中富含的咪唑二肽具有改善记忆功能的作用，重要的是，鸡胸肉蛋白质含量较高，且易被人体吸收入利用，含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构磷脂的重要来源之一。鸡胸肉有温中益气、补虚填精、健脾胃、活血脉、强筋骨的功效。脂肪含量3%，蛋白质含量20%，适合减肥增肌食用。', '47851', null, '已过审', '2019-03-22 12:23:53');
INSERT INTO `video` VALUES ('14', '豌豆炒西红柿', '这道菜要和米饭拌着吃而且一定要用勺子吃就一个字，香！', '68951', null, '已过审', '2018-11-14 12:24:24');
INSERT INTO `video` VALUES ('15', '鸭架白菜豆腐汤', '豆腐与白菜搭配鸭架，清香四溢，适合夏天的一道汤', '88884', null, '已过审', '2018-10-23 12:24:54');

-- ----------------------------
-- Table structure for vtag
-- ----------------------------
DROP TABLE IF EXISTS `vtag`;
CREATE TABLE `vtag` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `vid` int(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fid` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vtag
-- ----------------------------
