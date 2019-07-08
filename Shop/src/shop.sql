/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50022
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50022
 File Encoding         : 65001

 Date: 08/07/2019 10:56:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `COLLECT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GOODS_ID` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`COLLECT_ID`),
  INDEX `GOODS_ID` USING BTREE(`GOODS_ID`),
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`GOODS_ID`) REFERENCES `goods` (`GOODS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 11264 kB; (`GOODS_ID`) REFER `shop/goods`(`GOODS_ID`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `GOODS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRICE` int(11) NULL DEFAULT NULL,
  `IMAGE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SUM` int(11) NULL DEFAULT NULL,
  `TYPE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`GOODS_ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'YhfXjkckp', 'Sm', 397, 'Aenean tincidunt natoque quam gravida', 455, 'Cum Cum odio iaculis pretium');
INSERT INTO `goods` VALUES (2, 'iTQzFJzk', '3u3VkFOpQ', 683, 'hymenaeos tincidunt nostra torquent vestibulum a vestibulum', 980, 'ornare vel convallis aptent suscipit');
INSERT INTO `goods` VALUES (3, '64BY', 'ceS', 941, 'lobortis augue est nascetur ligula adipiscing Nunc nisl orci', 587, 'Praesent molestie Morbi nascetur Nulla');
INSERT INTO `goods` VALUES (4, 'W8bW', 'c', 696, 'Quisque dis Proin hymenaeos faucibus', 479, 'sociis bibendum eget ullamcorper leo');
INSERT INTO `goods` VALUES (5, 'X1yglJp8q', 'KrV1mN1', 128, 'luctus nisi quis Phasellus dui', 760, 'nisi magna Vivamus sociis sollicitudin');
INSERT INTO `goods` VALUES (6, 'DW2vp', '00KZ5estlGvJ', 277, 'sociosqu inceptos ullamcorper Vestibulum varius inceptos senectus eget facilisi', 777, 'elementum tellus fermentum in faucibus');
INSERT INTO `goods` VALUES (7, 'L6', 'Wv', 717, 'sollicitudin ridiculus Nulla urna lectus tortor', 281, 'amet elit leo natoque et');
INSERT INTO `goods` VALUES (8, '1A4VcqCtpsMW', 'C', 677, 'hendrerit Aenean pede tincidunt sodales', 600, 'primis fames Aliquam porta vulputate');
INSERT INTO `goods` VALUES (9, 'L', 'OVzNLPVqIq', 85, 'litora tristique egestas Nullam facilisi eu Class purus', 852, 'Ut dapibus semper mattis tincidunt');
INSERT INTO `goods` VALUES (10, '5V', '8ZR5W2yJvWwe', 688, 'Fusce elementum nisi molestie consequat venenatis parturient sit ad', 994, 'Lorem venenatis varius sodales tincidunt');
INSERT INTO `goods` VALUES (11, '34WY8fW', 'ol0LyG4z9', 8, 'Lorem conubia condimentum conubia condimentum est Sed laoreet sollicitudin risus', 225, 'viverra Nunc habitant id faucibus');
INSERT INTO `goods` VALUES (12, 'qk', 'h', 7, 'Nam malesuada malesuada tempor condimentum velit convallis bibendum Sed congue', 901, 'in Nullam massa Nulla Duis');
INSERT INTO `goods` VALUES (13, 'gO3iPXqb', 'iHRivLG', 789, 'urna sollicitudin ante Vivamus posuere gravida per tempor vel amet', 669, 'erat conubia congue primis primis');
INSERT INTO `goods` VALUES (14, 'cOMM6IQ', 'Ox9pSu', 299, 'ac litora litora molestie justo Lorem', 698, 'neque nibh non ad bibendum');
INSERT INTO `goods` VALUES (15, 'RQq', 'Oud', 113, 'aptent quam magna sodales augue vulputate arcu Aenean Integer nascetur', 312, 'faucibus Lorem accumsan consequat condimentum');
INSERT INTO `goods` VALUES (16, 'fyyaQ7eqQ9F0', 'ci0yjYtyPb', 308, 'Cras imperdiet lacus egestas sociosqu natoque turpis molestie', 329, 'aliquet et conubia justo Vivamus');
INSERT INTO `goods` VALUES (17, '7S', 'P2p8UMVAAfZ6', 589, 'nostra consequat leo litora iaculis', 427, 'ridiculus ante dui consectetuer primis');
INSERT INTO `goods` VALUES (18, '5qCl9Q0q', 'pUhFou3hZ', 681, 'metus est natoque tellus vestibulum sit', 383, 'Donec ligula lacinia morbi tellus');
INSERT INTO `goods` VALUES (19, 'kBp36oF0TpU', '8Nfi7', 20, 'dis sapien conubia egestas Aliquam elit volutpat', 869, 'Vestibulum dictum tempor risus facilisi');
INSERT INTO `goods` VALUES (20, 'ZJeV', 'ev', 653, 'consectetuer conubia feugiat Praesent Vivamus lectus tristique', 602, 'Quisque elementum nibh inceptos quam');
INSERT INTO `goods` VALUES (21, '4upNai', 'yA3Hw', 718, 'ligula ligula sapien tincidunt lorem at Ut fames', 340, 'ullamcorper Praesent magnis augue vel');
INSERT INTO `goods` VALUES (22, 'gm1WI27', 'Jf', 693, 'tortor vestibulum netus vulputate parturient elementum eleifend', 723, 'Pellentesque euismod cursus dignissim facilisis');
INSERT INTO `goods` VALUES (23, 'TvCaCHo', 'Rl', 433, 'Duis ac tempus eleifend dui Nam sed facilisis inceptos', 909, 'lacinia ligula Maecenas Aliquam dictum');
INSERT INTO `goods` VALUES (24, 'SHqc', 'gpUxi8', 886, 'at mi elementum Morbi Sed imperdiet', 961, 'blandit Etiam viverra accumsan felis');
INSERT INTO `goods` VALUES (25, 'GnOifcIiiUx', '5EBSQ8Y8', 575, 'nonummy primis sodales quam sem non', 952, 'sem ad libero arcu at');
INSERT INTO `goods` VALUES (26, 'oz133xpvbCD', 'JWrooldYvq7Y', 409, 'In sit aliquam montes nascetur Nam penatibus Sed sem porttitor', 323, 'tincidunt sollicitudin odio elit conubia');
INSERT INTO `goods` VALUES (27, 'RFuyD143Bju', 'oy', 349, 'dolor sociis vestibulum nostra cursus Donec Vivamus est consequat egestas', 954, 'aliquam tincidunt rutrum viverra ipsum');
INSERT INTO `goods` VALUES (28, 'DF1m6LTLqO', '6DkI', 194, 'ut massa mollis diam iaculis non netus', 328, 'lacus eu egestas nibh faucibus');
INSERT INTO `goods` VALUES (29, 'ok2Hry82', '7LQ', 347, 'nec arcu cubilia Nulla Duis Proin', 578, 'metus sociis Nulla justo risus');
INSERT INTO `goods` VALUES (30, 'ym5GT4831', 'Yhl8ZxPsxUM', 372, 'tincidunt Ut rutrum adipiscing congue', 687, 'Duis enim volutpat Pellentesque Pellentesque');
INSERT INTO `goods` VALUES (31, 'X9OlLr4Wy', '4cYh68y9j', 202, 'luctus vulputate dictum lobortis lorem', 550, 'ornare consequat consequat Morbi fermentum');
INSERT INTO `goods` VALUES (32, 'yKVt9TP', '7nbwFYaRrj', 57, 'Aenean rhoncus Integer quam mollis sollicitudin nulla', 875, 'lorem justo Donec pulvinar risus');
INSERT INTO `goods` VALUES (33, 'plDa', 'y2VJNlYmaS', 700, 'rhoncus turpis Ut suscipit pellentesque Curae pulvinar Nulla aliquet mi', 877, 'Pellentesque dolor Quisque facilisi conubia');
INSERT INTO `goods` VALUES (34, 'AwM6mUcp', 'yA', 44, 'taciti pellentesque tincidunt volutpat Donec mauris Sed dignissim mollis morbi', 870, 'conubia bibendum pulvinar Aenean vestibulum');
INSERT INTO `goods` VALUES (35, 'WIhfPTVXPx', 'xeshu', 531, 'Lorem venenatis semper dui Pellentesque lorem varius rhoncus netus', 434, 'urna tempus at in nisl');
INSERT INTO `goods` VALUES (36, 'QilK', 'IUDT2q0', 835, 'parturient sociis dictum a Integer eros', 411, 'et est sodales tempor Lorem');
INSERT INTO `goods` VALUES (37, 'eDg', '5g', 98, 'Vivamus tempus dapibus Lorem in nulla at viverra Sed', 225, 'dictum lacus lacus lacinia Cum');
INSERT INTO `goods` VALUES (38, '1zer', 'NSggqNfQpk', 549, 'fermentum ultricies torquent quis id', 949, 'neque tristique euismod Phasellus vehicula');
INSERT INTO `goods` VALUES (39, 'ozN2Y7Gy2W', 'mNh', 108, 'risus nonummy mattis mattis lorem a elementum hendrerit', 587, 'sed velit sed porttitor quam');
INSERT INTO `goods` VALUES (40, '0HMUzj4', 'BSw', 383, 'Curae Aliquam elit sollicitudin malesuada', 482, 'diam tristique rutrum Nunc sodales');
INSERT INTO `goods` VALUES (41, '9tB3zLFv6MD9', 'KD1Gjd', 100, 'gravida vestibulum arcu sit non Nam Cum mattis', 233, 'Morbi feugiat sit mattis suscipit');
INSERT INTO `goods` VALUES (42, 'pZRx0', 'IqupgEOaO3Hp', 459, 'vestibulum orci nulla tristique Vivamus', 254, 'ultrices gravida suscipit Duis luctus');
INSERT INTO `goods` VALUES (43, '3f8CwrPbtTKP', 'pBwatCM0s', 544, 'non mus Morbi mus rhoncus vitae Nam bibendum', 372, 'rutrum montes suscipit eleifend taciti');
INSERT INTO `goods` VALUES (44, 'GKZn0aZFrr2', 'o7x6NXeHlRj6', 633, 'nonummy euismod Integer nec ipsum morbi risus', 494, 'purus interdum Cras nascetur congue');
INSERT INTO `goods` VALUES (45, 'Cc', 'EP7drdEQv', 59, 'orci Etiam ullamcorper turpis imperdiet', 962, 'congue consectetuer Quisque placerat lacus');
INSERT INTO `goods` VALUES (46, 'KN', 'FZwr', 958, 'Integer congue ut feugiat sodales aptent augue et convallis dui', 742, 'taciti sagittis pellentesque mus nunc');
INSERT INTO `goods` VALUES (47, 'sPv0AjKNWk', 'bL', 912, 'facilisi pulvinar viverra Vestibulum porta primis Proin Nulla', 579, 'Vestibulum ridiculus est euismod pretium');
INSERT INTO `goods` VALUES (48, 'PI0', 'OQVR', 654, 'Aliquam lacinia Duis nibh egestas luctus consectetuer', 860, 'aptent luctus blandit nisl at');
INSERT INTO `goods` VALUES (49, 'UKKoHSfkyTJ', 'Z0MF3Fo', 168, 'quis nisl nulla cursus nulla nisl aptent in', 267, 'Nullam ac lacinia magnis laoreet');
INSERT INTO `goods` VALUES (50, '2eFgjh4N81', 'GXvR', 625, 'lectus libero egestas Proin morbi', 411, 'senectus Proin tincidunt felis Suspendisse');
INSERT INTO `goods` VALUES (51, 'PVRZwI', 'D0npKW1aOd', 203, 'faucibus sapien tincidunt ridiculus neque turpis', 202, 'enim ultrices semper tristique Nulla');
INSERT INTO `goods` VALUES (52, 'ppoUxlrp', '9SP3PdBksNes', 768, 'ligula metus vestibulum pede magnis congue mi', 696, 'dictum semper Lorem taciti primis');
INSERT INTO `goods` VALUES (53, 'sJpdlH3tgmhp', 'joaN9rJi52Pb', 951, 'quam vestibulum Vestibulum habitant penatibus eleifend', 361, 'nibh torquent nostra ornare ornare');
INSERT INTO `goods` VALUES (54, '9MbWOaq', 'IoM', 354, 'Lorem enim morbi tempus magna ullamcorper vulputate litora', 368, 'erat convallis in a aliquet');
INSERT INTO `goods` VALUES (55, 'Q40ZszUMdc', 'Zcpotc', 488, 'Vestibulum nibh eget volutpat blandit magnis mauris', 630, 'ornare aliquet Phasellus tellus metus');
INSERT INTO `goods` VALUES (56, 'REq3', 'Twv74MY', 334, 'Phasellus metus leo quam sed', 746, 'mi penatibus magna faucibus porta');
INSERT INTO `goods` VALUES (57, 'Qr', 'tej', 213, 'taciti varius dignissim Nunc risus Suspendisse Morbi ridiculus', 517, 'aliquam ultrices litora consequat dis');
INSERT INTO `goods` VALUES (58, 'r8pmG13WD', 'mMcy6rduz', 559, 'Nunc in cubilia faucibus Nullam tempus cubilia erat', 513, 'nisl sollicitudin dictum pharetra sollicitudin');
INSERT INTO `goods` VALUES (59, 'IY92', 'V7xAh8NZKe', 66, 'lobortis iaculis Vivamus Cum Sed risus sapien', 633, 'tortor penatibus eu nascetur Mauris');
INSERT INTO `goods` VALUES (60, 'T', '9VWXrIm', 962, 'laoreet orci Lorem quis Vestibulum cubilia', 239, 'rhoncus convallis inceptos accumsan id');
INSERT INTO `goods` VALUES (61, 'qjFQVl', 'Vtk', 211, 'dui Vivamus pharetra bibendum ligula dignissim Phasellus dictum', 246, 'nunc In Nulla primis ac');
INSERT INTO `goods` VALUES (62, 'cBf7Y', 'b', 935, 'condimentum Duis egestas pellentesque dui pede nonummy aliquet', 616, 'nulla mi neque eu elit');
INSERT INTO `goods` VALUES (63, '48y6ziJcwqgU', 't', 1, 'dis neque eros nascetur lobortis Curabitur eu Nam', 666, 'hymenaeos nulla velit taciti Aenean');
INSERT INTO `goods` VALUES (64, 'dV2iEd2fc8', 'IomPSIu5gIH', 585, 'commodo torquent mauris quis Pellentesque Sed litora sodales tempor tristique', 392, 'placerat In tortor lacus consectetuer');
INSERT INTO `goods` VALUES (65, 'yOZ7ZoW', 'H', 89, 'dolor Phasellus pulvinar dignissim sodales', 576, 'condimentum pellentesque In tempor a');
INSERT INTO `goods` VALUES (66, 'e5KagF', '99WYWCCvN', 887, 'libero ultrices porta viverra tellus enim sem suscipit Proin consectetuer', 977, 'sociosqu mattis Mauris ipsum sollicitudin');
INSERT INTO `goods` VALUES (67, 'D0c7', 'vlz3tCk2Gu', 410, 'aliquet vehicula venenatis penatibus Vestibulum hendrerit varius justo', 637, 'odio purus volutpat Nam Lorem');
INSERT INTO `goods` VALUES (68, '0vjYbTHqb', 'mgWfwAQL7t', 484, 'dolor eros orci in hendrerit id', 651, 'Duis sit Nulla condimentum ipsum');
INSERT INTO `goods` VALUES (69, 'y', 'dmfEV759rcu', 384, 'venenatis magnis lacus urna amet neque ligula elementum In', 810, 'Vestibulum nisl ante semper scelerisque');
INSERT INTO `goods` VALUES (70, 'KmH9UHvcB', 'sP5MTf', 744, 'nostra cubilia vehicula orci sapien nonummy per nec tortor mauris', 669, 'mollis habitant cursus Vivamus congue');
INSERT INTO `goods` VALUES (71, 'ep', '88', 780, 'fames Nam vitae risus tempor magnis sapien porta Class nostra', 387, 'ridiculus Phasellus condimentum malesuada tristique');
INSERT INTO `goods` VALUES (72, '2UTg8', '2X0GoUGXA', 561, 'primis Ut sagittis fermentum luctus Etiam orci enim', 458, 'Mauris nisl pretium sed lacinia');
INSERT INTO `goods` VALUES (73, 'AxX', 'v', 996, 'mattis facilisi a Proin Morbi odio', 516, 'euismod eget morbi ultricies Suspendisse');
INSERT INTO `goods` VALUES (74, 'dRWs', 'g', 771, 'libero magna aliquet elementum vehicula', 524, 'Proin Praesent at Suspendisse montes');
INSERT INTO `goods` VALUES (75, '7VvfW', 'yeV4J', 412, 'Nunc purus sodales tempus lacinia Cum', 636, 'netus interdum consectetuer Morbi ipsum');
INSERT INTO `goods` VALUES (76, '8ITq', 'RQefDGHvhxQ', 251, 'ut facilisi Cum commodo Curae quis Aenean urna', 388, 'Vestibulum vitae ipsum Curabitur eget');
INSERT INTO `goods` VALUES (77, '2xcEAo', 'jhpjxdPVm', 78, 'pharetra nisl enim nonummy non nisi', 930, 'luctus est dis nascetur penatibus');
INSERT INTO `goods` VALUES (78, 'Y30Zc', 'qQw', 59, 'tortor odio nonummy venenatis venenatis Cras posuere lectus ultrices interdum', 432, 'rhoncus varius Etiam Nunc adipiscing');
INSERT INTO `goods` VALUES (79, 'IVkBgPwxjZTH', 'kpStJ5BTzEJ', 801, 'nulla sed Cum aliquam massa at interdum', 703, 'luctus accumsan ante porta urna');
INSERT INTO `goods` VALUES (80, 'PI', 'nj8XlA', 764, 'litora Cum vehicula mattis a', 552, 'nisi porttitor turpis amet Pellentesque');
INSERT INTO `goods` VALUES (81, 'CnuDvWpaV', 'wjXJ6e5', 462, 'consequat mauris In morbi Nullam tortor congue adipiscing auctor aliquam', 991, 'metus id neque lacus venenatis');
INSERT INTO `goods` VALUES (82, 'vjXVG', 'a', 557, 'urna sem ridiculus ante Sed', 947, 'Donec Nunc parturient porttitor mus');
INSERT INTO `goods` VALUES (83, 'xJ6Tl', '1CBoYz9U', 62, 'mollis tempus ligula convallis feugiat', 404, 'per ridiculus a sociis primis');
INSERT INTO `goods` VALUES (84, 'JQUz', 'gfBZ5rMv', 962, 'pellentesque cursus Sed magnis nostra pharetra posuere', 910, 'nonummy leo adipiscing nisl penatibus');
INSERT INTO `goods` VALUES (85, 'EMZY', 'l5I', 618, 'neque hymenaeos Vestibulum adipiscing ut', 454, 'euismod taciti et erat elit');
INSERT INTO `goods` VALUES (86, 'rX0SV8', 'abRmGCdVlr', 270, 'torquent urna feugiat scelerisque est', 774, 'facilisis mauris parturient ullamcorper vestibulum');
INSERT INTO `goods` VALUES (87, 'xjS2s71', 'Rwp5qnS2fpA', 706, 'Nam eleifend litora dolor penatibus elit', 527, 'odio tempor vel fringilla nisi');
INSERT INTO `goods` VALUES (88, 'MZNOrx', 'yIOnrRSPyM', 914, 'feugiat congue nunc tellus Suspendisse fringilla erat consectetuer', 954, 'Nullam amet senectus Morbi justo');
INSERT INTO `goods` VALUES (89, 'mY', 'wBTpr', 751, 'nec lacinia quam torquent mollis Duis nascetur inceptos Phasellus tortor', 645, 'facilisis lorem Cum hendrerit hendrerit');
INSERT INTO `goods` VALUES (90, 'f93F', 'Ww7h2TPR', 965, 'taciti tempus porta nonummy consequat torquent Morbi sit sociis nec', 849, 'cubilia imperdiet cursus Pellentesque metus');
INSERT INTO `goods` VALUES (91, 'epWjKjvmRZG', 'kDM3y', 432, 'morbi venenatis torquent molestie Suspendisse mauris rutrum Fusce luctus elementum', 447, 'nisl varius massa fames mollis');
INSERT INTO `goods` VALUES (92, 'OAMjJHkN', 'EAAC53bEYw', 191, 'ullamcorper congue tortor Cum Duis Suspendisse eget consectetuer nunc', 508, 'netus dignissim imperdiet tincidunt amet');
INSERT INTO `goods` VALUES (93, 'p', 'Dwkq', 77, 'euismod ridiculus montes fames Duis risus Aenean at', 858, 'risus malesuada rhoncus consectetuer cursus');
INSERT INTO `goods` VALUES (94, 'cmwsX1y7Nq', 'iE0Y4B6b6', 800, 'Fusce adipiscing laoreet libero Integer auctor aptent cursus', 788, 'pretium nulla mus cubilia Cras');
INSERT INTO `goods` VALUES (95, 'fBRdWXNN7', 'a', 221, 'Mauris elit venenatis ultricies ultricies suscipit porta malesuada facilisi', 782, 'lacus mi ornare Sed lobortis');
INSERT INTO `goods` VALUES (96, '8iZppfIqB', 'JD', 965, 'interdum vulputate risus et tempus', 823, 'tincidunt consectetuer senectus faucibus Vestibulum');
INSERT INTO `goods` VALUES (97, '8hH7aFK5j2', 'KZ4', 993, 'tempor nibh consectetuer semper faucibus sed', 591, 'odio Sed magnis a Curabitur');
INSERT INTO `goods` VALUES (98, 'DI62', '4Iove', 838, 'Praesent Ut dis inceptos lorem dis adipiscing nisi magnis', 267, 'elit non In blandit dis');
INSERT INTO `goods` VALUES (99, 'GLZEn9tAZ9J', 's0w5G', 583, 'parturient id risus varius Nam purus magna tellus', 419, 'Ut consectetuer placerat vestibulum congue');
INSERT INTO `goods` VALUES (100, 'V5FmakV', 'Qb2OZVjUdvG', 736, 'senectus felis convallis Sed taciti egestas Donec ante Vestibulum', 239, 'Duis non Lorem sociosqu lorem');
INSERT INTO `goods` VALUES (101, 'OAqqsWDYpI4s', 'hAo1GCK', 535, 'velit faucibus Curae volutpat feugiat egestas libero senectus amet', 692, 'consectetuer elit elementum molestie nostra');
INSERT INTO `goods` VALUES (102, 'e9ux', 'K58gr5', 394, 'sit Fusce nibh posuere nibh Cras fames', 318, 'magna commodo Etiam facilisi urna');
INSERT INTO `goods` VALUES (103, 'vMC2XWVIDc', 'VTgBV', 791, 'metus ipsum Vivamus gravida porttitor orci Cras In', 548, 'luctus tortor torquent massa Ut');
INSERT INTO `goods` VALUES (104, 'o2ECqvwsO8lM', 'V11cY', 339, 'turpis luctus feugiat morbi elit Proin', 892, 'orci consectetuer tempor pellentesque posuere');
INSERT INTO `goods` VALUES (105, 'Ggj9Dh', 'nd8g1j1I16', 316, 'fringilla sapien In sit felis in diam sit imperdiet mus', 216, 'tincidunt vehicula posuere ultrices sagittis');
INSERT INTO `goods` VALUES (106, 'e7MLQiJ', 'VKh', 111, 'venenatis dui cursus ac Mauris mus pede', 857, 'quis aptent molestie velit Ut');
INSERT INTO `goods` VALUES (107, '1Z', 'TdkS6q', 58, 'semper ad laoreet lectus dignissim ut semper', 902, 'a at Class libero pharetra');
INSERT INTO `goods` VALUES (108, 'g7mR', '6nPB3nq7', 373, 'nunc in augue blandit In commodo magna dui neque', 996, 'ac Cras vestibulum dis facilisi');
INSERT INTO `goods` VALUES (109, 'GMoERM1Ny', 'yq1ep4LxsNk', 875, 'leo nostra pretium eu morbi ridiculus dis', 658, 'pretium Nunc lobortis nisl mollis');
INSERT INTO `goods` VALUES (110, 'wiHgjoWOdbFx', 'EoMQ5d7j', 570, 'suscipit porta cursus pretium penatibus aliquam Ut cursus', 784, 'tortor mauris euismod Curae fermentum');
INSERT INTO `goods` VALUES (111, 'SOwoHSPr8sCg', '6ryUVRCILqY7', 47, 'ante litora hymenaeos interdum pretium Nunc nascetur', 256, 'sollicitudin Sed orci ante id');
INSERT INTO `goods` VALUES (112, 'CF', 'igeUkq', 56, 'Fusce Nam sit torquent magna lacinia accumsan dis', 832, 'vitae varius a gravida Pellentesque');
INSERT INTO `goods` VALUES (113, 'U52', 'plDa4oxja5', 986, 'natoque ridiculus justo sodales Duis quis vestibulum', 439, 'habitant Pellentesque pellentesque scelerisque laoreet');
INSERT INTO `goods` VALUES (114, 'PbORpXa', 'dymiX8aY19', 130, 'justo Cum viverra mollis tortor ante ad malesuada porta Aliquam', 503, 'ridiculus fames porta faucibus suscipit');
INSERT INTO `goods` VALUES (115, 'ZXjCkr2gqZ', 'XT', 928, 'mattis at purus aliquet montes', 861, 'In sed nostra tempor scelerisque');
INSERT INTO `goods` VALUES (116, 'zk5f', 'JGRmw6Jd1x', 40, 'senectus Nullam ut metus volutpat conubia', 375, 'viverra Sed posuere Lorem velit');
INSERT INTO `goods` VALUES (117, 'gCq9Fjde', '4ajiqxz4G', 291, 'Ut sapien metus euismod ut', 603, 'varius nunc mattis penatibus Mauris');
INSERT INTO `goods` VALUES (118, 'HheCtf', 'bpQ0Vk7y55n', 748, 'Nunc sollicitudin per lectus Cum', 983, 'a facilisis fringilla nec molestie');
INSERT INTO `goods` VALUES (119, 'U', 'S2cnV9vI', 681, 'porttitor tincidunt blandit Quisque vulputate quis', 446, 'metus dis ornare cursus hymenaeos');
INSERT INTO `goods` VALUES (120, 'Ef', 'YTC5QWu5mg', 149, 'in velit natoque libero Fusce', 747, 'hymenaeos lectus rhoncus Ut Curae');
INSERT INTO `goods` VALUES (121, '8qbO', 'xmihVR', 734, 'malesuada Proin laoreet porta nonummy vehicula leo leo', 367, 'gravida risus magnis Etiam dis');
INSERT INTO `goods` VALUES (122, 'TErk', 'ISU9', 471, 'Sed dis senectus litora dui senectus imperdiet iaculis', 714, 'Integer neque ligula morbi Curabitur');
INSERT INTO `goods` VALUES (123, 'lNd70VxF', 'orc7Uh', 323, 'Morbi orci egestas eleifend tincidunt tortor felis', 345, 'Lorem iaculis Aliquam felis hendrerit');
INSERT INTO `goods` VALUES (124, 'C92Qa', 'QbRUUWTQQsW6', 502, 'Pellentesque nostra tristique urna risus', 298, 'dapibus odio id nisl porta');
INSERT INTO `goods` VALUES (125, 'Fit2S5tpD', 'F0tI3kNioIc', 547, 'at per condimentum lacus convallis dis arcu Ut ultrices', 890, 'Mauris vehicula torquent ligula morbi');
INSERT INTO `goods` VALUES (126, 'FM', 'sDAI2P15D', 667, 'nulla iaculis egestas facilisis ullamcorper Suspendisse Aliquam in', 681, 'tempus netus lacus fringilla libero');
INSERT INTO `goods` VALUES (127, 'TWRHbB71Omy', 'NnaTdRLU52cQ', 941, 'elementum Nunc Lorem malesuada felis vestibulum Cum laoreet', 830, 'fringilla magna pellentesque eget egestas');
INSERT INTO `goods` VALUES (128, 'sy', '1e', 609, 'tempus vehicula In Cum laoreet parturient Morbi Etiam vulputate morbi', 443, 'eu nascetur pulvinar venenatis tempus');
INSERT INTO `goods` VALUES (129, 'zSq', 'PMTL6v8V', 52, 'lacus lacus sit amet sed non condimentum justo Curae', 382, 'penatibus viverra ad parturient arcu');
INSERT INTO `goods` VALUES (130, 'Yi8', 'TKMwqrELZ2R', 31, 'cubilia natoque urna tellus nascetur facilisi arcu', 361, 'condimentum fringilla aliquam adipiscing taciti');
INSERT INTO `goods` VALUES (131, 'Jrnc4Dh', 'u7', 608, 'porttitor diam vitae nisi sollicitudin Pellentesque nonummy ligula inceptos', 847, 'at consectetuer mus Class justo');
INSERT INTO `goods` VALUES (132, 'LQm', 'n8J5K034M', 547, 'conubia dapibus consequat montes Nullam est pharetra Nullam orci parturient', 443, 'pellentesque primis hymenaeos semper cubilia');
INSERT INTO `goods` VALUES (133, 'f', 'tKXTo', 873, 'nulla justo Nam ullamcorper netus accumsan habitant', 409, 'laoreet justo luctus felis Curae');
INSERT INTO `goods` VALUES (134, 'V27vdMBq', 'HoE7EM', 894, 'semper Donec Nam gravida turpis porttitor', 735, 'Nulla fames nunc euismod placerat');
INSERT INTO `goods` VALUES (135, '8nrkQ', '0', 776, 'amet torquent risus libero leo massa erat nec gravida', 325, 'Class sociis ante Quisque purus');
INSERT INTO `goods` VALUES (136, 'DrcrSrN', '88zD', 937, 'aptent Cras hymenaeos nibh Proin placerat odio lorem', 233, 'eros nascetur accumsan enim Mauris');
INSERT INTO `goods` VALUES (137, 'cpX', 'bgAGMRS', 203, 'mattis lorem orci sapien Fusce', 208, 'Pellentesque interdum eu imperdiet Maecenas');
INSERT INTO `goods` VALUES (138, 'SnWLc2vX', 'yXi', 817, 'semper fames netus conubia lacinia Suspendisse dapibus pede', 913, 'Integer risus Ut Pellentesque elit');
INSERT INTO `goods` VALUES (139, 'u1ZdfgfU4s', 'gk85y1dX', 568, 'posuere eget posuere dignissim mus lobortis lectus fermentum', 559, 'varius sapien nec vulputate massa');
INSERT INTO `goods` VALUES (140, 'pPANHVG4D', 'ozcBeVUZgoi', 788, 'congue ligula erat Proin tincidunt', 633, 'libero morbi taciti Sed senectus');
INSERT INTO `goods` VALUES (141, 'l1fWyFV1CyI', 'At4koM1yWyJX', 351, 'cubilia ac odio ultrices nisl nonummy', 713, 'consequat pulvinar Vestibulum ante Proin');
INSERT INTO `goods` VALUES (142, 'Duiaauq5Zn5', 'QmP3lbeOpq0k', 194, 'Phasellus Phasellus rutrum nisl est convallis neque sapien lorem', 931, 'natoque Curabitur ante Fusce Vestibulum');
INSERT INTO `goods` VALUES (143, 'ABN', 'bi', 700, 'elit lobortis cubilia vehicula nibh bibendum quam mauris', 627, 'Maecenas turpis leo in mattis');
INSERT INTO `goods` VALUES (144, 'AW5Rb', 'CasyRk2NtbXL', 441, 'purus nisi nostra dignissim auctor', 720, 'id accumsan netus magna sollicitudin');
INSERT INTO `goods` VALUES (145, 'WDMV27wQBXJ', 'IhgZZmxN', 137, 'et per per Vivamus dis', 221, 'Vestibulum ante amet In nisl');
INSERT INTO `goods` VALUES (146, 'bVDTdiAY', '0lNZB27q9P', 515, 'tincidunt mollis massa mi quam', 893, 'Praesent consectetuer fames lacus Donec');
INSERT INTO `goods` VALUES (147, 'k9IOVfYXOV', 'YVHStV', 964, 'lobortis Nullam senectus tristique elit pulvinar', 521, 'accumsan gravida ultricies ad mattis');
INSERT INTO `goods` VALUES (148, '0DRhoMgviGHO', '6e6rYrQw', 534, 'velit mi sed porttitor et sapien primis malesuada', 298, 'auctor ornare mattis pretium eros');
INSERT INTO `goods` VALUES (149, 'fYht', 'S4pgxKOp', 545, 'Maecenas ultrices turpis Lorem Proin risus inceptos blandit odio', 512, 'a viverra elementum torquent pellentesque');
INSERT INTO `goods` VALUES (150, 'Z7jHOXhpNs', 'nz1K6', 960, 'Aenean felis Nullam hymenaeos torquent', 232, 'nunc sapien aliquet Vestibulum Duis');
INSERT INTO `goods` VALUES (151, 'oXkEvttQl3R', 'TALQ', 222, 'erat non turpis nisi tellus commodo erat montes tempus eu', 915, 'aliquam posuere nonummy lectus dictum');
INSERT INTO `goods` VALUES (152, 'N2', '566BhV7Jq', 919, 'cursus Cras tempor faucibus iaculis leo', 331, 'nisl Class Phasellus netus fermentum');
INSERT INTO `goods` VALUES (153, 'zXQNp', 'cEGAPoLeX3Lb', 505, 'lorem amet amet in varius ipsum', 723, 'enim aliquam convallis orci adipiscing');
INSERT INTO `goods` VALUES (154, '3TaUPM670Y', 'f', 594, 'Nullam tortor mi taciti commodo Phasellus Phasellus ornare vestibulum', 910, 'adipiscing netus netus erat eu');
INSERT INTO `goods` VALUES (155, 'vQ3Y', 'KES', 478, 'eleifend posuere magnis risus varius sed', 616, 'sapien amet enim nec ipsum');
INSERT INTO `goods` VALUES (156, 'PH23Pna1oe', '25JK3HjJ2BKo', 871, 'magna sagittis pellentesque ut facilisi vulputate', 476, 'eu ligula commodo laoreet massa');
INSERT INTO `goods` VALUES (157, 'YdYqH59oGhCF', 'Qy', 1, 'id Fusce consectetuer sagittis morbi ornare blandit senectus tempus', 678, 'interdum nec lacinia ridiculus sociosqu');
INSERT INTO `goods` VALUES (158, 'RDb', 'OQ5g', 748, 'egestas accumsan luctus lobortis scelerisque netus placerat', 676, 'tincidunt facilisis Duis Nulla arcu');
INSERT INTO `goods` VALUES (159, 't63T1mW7h', 'DoQuTT', 982, 'aptent risus ligula est purus pede pharetra risus', 414, 'orci suscipit Nulla ac ante');
INSERT INTO `goods` VALUES (160, 'k', 'upfqitCpWv6b', 175, 'arcu eu elementum ligula tristique nibh accumsan vel faucibus', 947, 'non Suspendisse penatibus scelerisque id');
INSERT INTO `goods` VALUES (161, 'lh', 'uG', 402, 'per risus tincidunt consequat neque tempor sit', 306, 'ligula sodales ut eu imperdiet');
INSERT INTO `goods` VALUES (162, 'TeMwh1TI0O', 'BuZ6', 596, 'inceptos cubilia Nullam dignissim hymenaeos dis mollis erat hymenaeos Class', 760, 'Fusce hymenaeos risus mattis primis');
INSERT INTO `goods` VALUES (163, 'tr2vB00bOoL', 'O9UFFm', 694, 'Lorem vitae Class pharetra Ut est neque neque Curabitur purus', 377, 'Etiam eros Duis vestibulum montes');
INSERT INTO `goods` VALUES (164, 'flldLMjL8', 'UW', 467, 'dolor tincidunt fermentum tellus elementum dignissim Vivamus', 906, 'Vestibulum sociosqu pede placerat semper');
INSERT INTO `goods` VALUES (165, 'l7yaczj', 'ZT', 839, 'Aenean felis urna ac placerat Class', 622, 'Suspendisse consequat rutrum nonummy pretium');
INSERT INTO `goods` VALUES (166, '59QCpBJe', 'AnhXKm4', 830, 'vulputate nec dolor sodales aptent Curae Nam at Mauris commodo', 909, 'quam Cum blandit pretium at');
INSERT INTO `goods` VALUES (167, 'IvfK4', 'Dkz1', 26, 'natoque cubilia vehicula natoque fames lobortis nisl congue ridiculus', 402, 'felis semper malesuada aliquam ullamcorper');
INSERT INTO `goods` VALUES (168, 'adP15l', 'nlpAjAqS0VZ', 925, 'non Praesent mollis nunc lectus neque leo', 777, 'arcu nunc lacinia Duis sociosqu');
INSERT INTO `goods` VALUES (169, 'Hqmp', 'R3tHZ', 706, 'Ut sollicitudin pede egestas Integer a', 442, 'molestie est Phasellus senectus sapien');
INSERT INTO `goods` VALUES (170, '8Pih', 'RdMnfdNc', 247, 'Sed ornare a purus nibh lorem Donec', 387, 'pharetra tortor Nunc pellentesque molestie');
INSERT INTO `goods` VALUES (171, '1ahCfwvaws', 'fJqMD', 811, 'pulvinar odio ante ad sapien scelerisque viverra ridiculus auctor', 442, 'posuere Curabitur venenatis tortor rhoncus');
INSERT INTO `goods` VALUES (172, 'bU', 'YH', 317, 'netus In sem massa nibh dolor iaculis metus vehicula', 663, 'ultricies eu congue senectus nisi');
INSERT INTO `goods` VALUES (173, 'lxYeuCXt5U', 'ID6YGumOJ', 471, 'elementum metus Nam Sed nibh nunc', 572, 'facilisis pede parturient penatibus parturient');
INSERT INTO `goods` VALUES (174, '4eD', 'SxsNJ4', 337, 'sociis Praesent Sed venenatis ultrices laoreet dapibus ipsum In', 744, 'laoreet mus blandit imperdiet varius');
INSERT INTO `goods` VALUES (175, '8h1aCN7aAV', 'txqDpDBMECmj', 849, 'semper Nunc cursus litora suscipit auctor sapien Suspendisse mus', 964, 'Sed aptent varius lectus et');
INSERT INTO `goods` VALUES (176, 'avCVCNS', 'kq3FAxd', 545, 'diam eu ut Maecenas cubilia primis Morbi Maecenas', 936, 'purus elit Ut id Nulla');
INSERT INTO `goods` VALUES (177, 'Di2Q5', 'RYOcbA', 302, 'penatibus adipiscing Morbi lacinia luctus', 342, 'purus Nulla nec sollicitudin molestie');
INSERT INTO `goods` VALUES (178, 'WMF', '3G', 562, 'pharetra nibh nisi mattis Sed Donec urna sociosqu semper', 448, 'Vestibulum blandit nibh velit convallis');
INSERT INTO `goods` VALUES (179, '5zEhhuV3b', 'KqgUH5NXMS7', 55, 'in auctor varius consequat urna', 932, 'lectus adipiscing Nam vitae nec');
INSERT INTO `goods` VALUES (180, 'ffGEe', 'Jw4iu8IcZgl', 328, 'volutpat pede eget libero suscipit', 769, 'eros Sed fames ultricies euismod');
INSERT INTO `goods` VALUES (181, 'JNsIrZewENJ', 'nj5u', 462, 'viverra consectetuer tempor Phasellus placerat lacus imperdiet sociosqu Quisque mattis', 968, 'odio Phasellus sapien In Ut');
INSERT INTO `goods` VALUES (182, 'ud0SF', 'Z', 185, 'commodo Phasellus justo Morbi quis nisi sed nisi', 454, 'netus Praesent Lorem feugiat commodo');
INSERT INTO `goods` VALUES (183, 'VPxc47', 'gUO4', 687, 'Praesent vitae massa tempus semper', 740, 'natoque pharetra lacus vitae Suspendisse');
INSERT INTO `goods` VALUES (184, 'IyRkKa3KDcX', 'ixa', 467, 'Nullam Nulla nunc dolor ullamcorper et placerat', 536, 'fermentum fermentum rutrum vehicula primis');
INSERT INTO `goods` VALUES (185, 'beCN', 'RrMtOWherAU', 421, 'sem nibh tempor varius sem tellus vulputate ultricies augue sed', 848, 'mattis vel venenatis pede conubia');
INSERT INTO `goods` VALUES (186, 'b', 'mlcXZ4hyt', 358, 'luctus aliquet suscipit nonummy odio sapien non', 638, 'cubilia porta porttitor sed felis');
INSERT INTO `goods` VALUES (187, 'A6l13dU', 'Jg', 30, 'pede Mauris fermentum Aenean Nam', 261, 'et eleifend cursus ornare erat');
INSERT INTO `goods` VALUES (188, 'N0pT', 'chiHF', 7, 'enim ridiculus ad pulvinar fames inceptos tincidunt', 762, 'Aliquam pulvinar lacinia elementum lacinia');
INSERT INTO `goods` VALUES (189, 'xtMZsySpT3U', 'I7l', 599, 'primis libero bibendum facilisis laoreet', 569, 'conubia nisi Curabitur Nunc eleifend');
INSERT INTO `goods` VALUES (190, 'tSsup1sg0QX', '2C0j2Lr', 786, 'urna quam porttitor pretium sagittis dolor laoreet', 573, 'tortor elit Nunc magnis euismod');
INSERT INTO `goods` VALUES (191, 'AZo', 'k08dd7d', 841, 'leo hendrerit sapien neque purus aliquam Maecenas adipiscing', 277, 'ac felis pharetra aliquam Cras');
INSERT INTO `goods` VALUES (192, '55i81', 'wQ', 237, 'aliquet sit consectetuer Lorem urna pharetra et Praesent arcu id', 655, 'mus convallis amet mi pharetra');
INSERT INTO `goods` VALUES (193, 'TZ84', '9oivlW', 344, 'consequat lacinia porta justo porttitor eget eget elit', 387, 'congue bibendum non Curabitur Fusce');
INSERT INTO `goods` VALUES (194, 'ZCYu5Mx', 'Ezd', 59, 'Phasellus felis sagittis iaculis eros consectetuer Nullam convallis Nunc', 622, 'ornare Aliquam Praesent venenatis tempus');
INSERT INTO `goods` VALUES (195, 'VpsTpuK', 'fpLn0', 733, 'nunc lobortis id sed sociis nec gravida nonummy', 298, 'porttitor Etiam dictum quam suscipit');
INSERT INTO `goods` VALUES (196, '85B', 'jKSS1o', 318, 'Mauris aptent tincidunt volutpat sodales mus fermentum viverra auctor est', 602, 'Vestibulum pulvinar penatibus varius velit');
INSERT INTO `goods` VALUES (197, 'mnIrbEzccf0D', 'p0JMA', 324, 'ornare purus dui ultricies facilisi libero pede Quisque', 929, 'faucibus tempor egestas ac sed');
INSERT INTO `goods` VALUES (198, 'bCVhRg0BUmr', 'n3Ak0', 207, 'iaculis tristique in molestie Maecenas orci Proin pellentesque', 943, 'enim lectus per porta Cum');
INSERT INTO `goods` VALUES (199, 'owF7R0', '4XrW6I', 886, 'Ut lacus sociis dapibus dictum venenatis', 945, 'Class Pellentesque bibendum pede rhoncus');
INSERT INTO `goods` VALUES (200, 'w6dp4bT7', 'JJBW', 790, 'Class Aliquam Proin adipiscing Cum Class ultricies Maecenas', 911, 'dolor sollicitudin elit eros rutrum');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NULL DEFAULT NULL,
  `COUNT` int(11) NULL DEFAULT NULL,
  `GOODS_ID` int(11) NOT NULL DEFAULT '',
  `ORDERS_ID` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`ID`),
  UNIQUE INDEX `ORDER_ID` USING BTREE(`ORDER_ID`),
  INDEX `GOODS_ID` USING BTREE(`GOODS_ID`),
  INDEX `ORDERS_ID` USING BTREE(`ORDERS_ID`),
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`ORDERS_ID`) REFERENCES `orders` (`ORDERS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`GOODS_ID`) REFERENCES `goods` (`GOODS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 11264 kB; (`ORDERS_ID`) REFER `shop/orders`(`ORDERS_ID`); (`GOODS_I' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `ORDERS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERTIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USERS_ID` int(11) NOT NULL DEFAULT '',
  `USER_ID` int(11) NULL DEFAULT NULL,
  `STATUS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ADRESSES` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MARK` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`ORDERS_ID`),
  UNIQUE INDEX `USER_ID` USING BTREE(`USER_ID`),
  INDEX `USERS_ID` USING BTREE(`USERS_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`USERS_ID`) REFERENCES `users` (`USERS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 11264 kB; (`USERS_ID`) REFER `shop/users`(`USERS_ID`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `CART_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NULL DEFAULT NULL,
  `SUM` int(11) NULL DEFAULT NULL,
  `GOODS_ID` int(11) NOT NULL DEFAULT '',
  `USERS_ID` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY USING BTREE (`CART_ID`),
  UNIQUE INDEX `USER_ID` USING BTREE(`USER_ID`),
  INDEX `GOODS_ID` USING BTREE(`GOODS_ID`),
  INDEX `USERS_ID` USING BTREE(`USERS_ID`),
  CONSTRAINT `shoppingcart_ibfk_2` FOREIGN KEY (`USERS_ID`) REFERENCES `users` (`USERS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shoppingcart_ibfk_1` FOREIGN KEY (`GOODS_ID`) REFERENCES `goods` (`GOODS_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'InnoDB free: 11264 kB; (`USERS_ID`) REFER `shop/users`(`USERS_ID`); (`GOODS_ID`)' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `USERS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `SECONDNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SEX` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PHONE` int(11) NULL DEFAULT NULL,
  `IMAGE` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`USERS_ID`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
