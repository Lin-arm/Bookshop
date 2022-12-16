/*
 Navicat Premium Data Transfer

 Source Server         : MySQL_Server_8.0
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : bookshop

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 15/12/2022 14:33:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '书名',
  `cover` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '封面图',
  `image1` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详情图1',
  `image2` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详情图2',
  `price` float NULL DEFAULT NULL COMMENT '售价',
  `author` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '作者',
  `press` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `isbn` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT 'ISBN',
  `intro` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '简介',
  `stock` int(0) NULL DEFAULT NULL COMMENT '库存',
  `type_id` int(0) NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_type_id_idx`(`type_id`) USING BTREE,
  CONSTRAINT `fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 400 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '海贼王', '/picture/manhua_1-1.jpg', '/picture/manhua_1-2.jpg', '/picture/manhua_1-3.jpg', 78.9, '尾田荣一郎', '中华少儿出版社', '9787506326360', '《ONE PIECE》（海贼王、航海王）简称“OP”。时值大海盗时代，为了寻找传说中海盗王罗杰所留下的大秘宝“ONE PIECE”，无数海盗 扬起旗帜，互相争斗。有一个梦想成为海盗的少年叫 路飞，他很好崇拜滞留在村庄里的海盗团首领杰克斯 ，但是有一天，他误食了海盗们的战利品“恶魔之果 ”，拥有了超乎常人的奇异能力，成为了橡皮人，其 代价便是一辈子无法游泳。之后没多久，由于山贼与 海盗的恩怨，想替杰克斯出头的路飞被山贼劫持为人 质，还被丢进了海中，就在不会游泳的路飞快要被海 怪吃掉的时候，杰克斯挺身而出救了他，但是付出了 一只手的沉重代价…… 十年过去了，继承了杰克斯草帽的路飞为了干一 番大事业，独自出海了。以海上为目标的伟大旅程开始了！', 10, 13);
INSERT INTO `goods` VALUES (2, '火影忍者', '/picture/manhua_2-1.jpg', '/picture/manhua_2-2.jpg', '/picture/manhua_2-3.jpg', 869.22, '岸本齐史', '中国美术出版总社连环画出版社', '9787505631090', '故事成功地将原本隐藏在黑暗中，用强大的毅力和最艰辛的努力去做最密不可宣和隐讳残酷的事情的忍者，描绘成了太阳下最值得骄傲最光明无限的的职业。在这个忍者的世界中，每一位年轻的主人翁都在开拓着属于自己的忍道。', 10, 13);
INSERT INTO `goods` VALUES (3, '灵笼', '/picture/manhua_3-1.jpg', '/picture/manhua_3-2.jpg', '/picture/manhua_3-3.jpg', 62.7, '艺画开天', '北京联合出版有限公司', '9787559655950', '是国内首部原创末日幻想题材动画剧集《灵笼》的前传。不久的未来，人类因地球拥挤不堪而迈向星河，寻找新家园的行动迫在眉睫。正当一切有条不紊地推进之时，月相异动、异物滋生，引发了长达数十年的剧烈地质变化。在这场浩劫中，人类所剩无几，地表也被玛娜生态系统侵蚀、占领，不再适宜居住。幸存的人类登上一座飞行在空中的堡垒⸺“灯塔”，从此开始了流亡之旅。很久以后，“灯塔”上的人发现，被玛娜生态系统覆盖的地面上竟然有人类活动，而其中一名来历神秘的女子白月魁，似乎拥有某种特殊能力……灾难降临前，天才脑科学家白月魁和老师霍恩研发了“天使”药剂，让大脑移植术成为可能。 就在两人准备将这一突破性技术推向全世界时，地底钻出巨型不明植物，引发地震。霍恩受伤，危在旦夕。而霍恩曾经的学生琼斯趁乱窃取了“天使”药剂……恐惧与绝望的种子悄然发芽，灭亡与生存在人类命运中划出一道巨大的鸿沟。这是一部关于白月魁、关于许多人、关于人生的漫画，但愿你能在这个故事中找到同路人……', 10, 13);
INSERT INTO `goods` VALUES (4, '七龙珠', '/picture/manhua_4-1.jpg', '/picture/manhua_4-2.jpg', '/picture/manhua_4-3.jpg', 65.54, '鸟山明', '远方出版社', '9787500775058', '“很久很久以前流传着一个古老传说，这世上存在着七颗名为龙珠的圆球散落各处，只要集齐七颗龙珠并念出咒文，便可召唤出神龙，无论任何愿望都可替许愿人达成”。住在深山中的孙悟空本领高强，一次偶然的机会他随天才科学家·布尔玛一起走出大山，开始致力于寻找分散在世界各地的七颗龙珠。在这期间，还结识了好色的龟仙人与乌龙、一看到女人就面红耳赤的雅木茶以及自大的和尚小林等伙伴，不但经历了各种各样的冒险和奇遇，也惹出一连串爆笑的故事。当然，也有许多邪恶的家伙们为了满足私欲而寻找龙珠，为此与悟空等人展开了一连番的激斗。为了实现愿望、突破自我、变得更强，围绕着悟空及他的伙伴们，在大世界的浪漫冒险就这样开始了 ！', 10, 13);
INSERT INTO `goods` VALUES (5, '镇魂街', '/picture/manhua_5-1.jpg', '/picture/manhua_5-2.jpg', '/picture/manhua_5-3.jpg', 86.8, '许辰', '吉林美术出版社', '9787538662085', '未被超度的亡灵以及恶灵都会留在-个人灵共存的世界，每条镇魂街都有镇魂将，每个镇魂将都管理镇守各自的镇魂街......烈火将军曹焱兵,因意外之变,为寻找使灵槐树重生的方法，同伙伴一起踏上冒险征程。', 10, 13);
INSERT INTO `goods` VALUES (6, 'java核心技术', '/picture/jisuanji_6-1.jpg', '/picture/jisuanji_6-2.jpg', '/picture/jisuanji_6-3.jpg', 149, '(美)凯·S.霍斯特曼', '机械工业出版社', '9787111643432', '本书由拥有20多年教学与研究经验的资深Java技术专家撰写（获Jolt大奖），是程序员的优选Java指南。本版针对Java SE 9、10和 11全面更新。', 10, 10);
INSERT INTO `goods` VALUES (7, 'Web安全攻防从入门到精通', '/picture/jisuanji_7-1.jpg', '/picture/jisuanji_7-2.jpg', '/picture/jisuanji_7-3.jpg', 86.9, '红日安全团队', '北京大学出版社', '9787301333099', '我们都生活在移动互联网时代，个人信息、企业信息、政府信息都暴露在互联网之下。一旦有居心叵测的人攻破网络，会造成无法估量的损失。本书结合红日安全团队的多年经验，深入讲解Web安全的相关知识。全书共有21个章节，第1章到第6章讲解Web攻防入门知识，包括HTTP基本概念、工具实战、信息收集、靶场搭建等内容；第7章到第20章讲解Web渗透测试的14个典型漏洞案例，包括SQL注入、XSS漏洞、CSRF漏洞、SSRF漏洞、任意文件上传、业务漏洞等内容；第21章是项目实战，主要模拟真实Web安全评估项目。', 10, 10);
INSERT INTO `goods` VALUES (8, '从程序员到架构师', '/picture/jisuanji_8-1.jpg', '/picture/jisuanji_8-2.jpg', '/picture/jisuanji_8-3.jpg', 76.3, '王伟杰', '机械工业出版社', '9787111699842', '《从程序员到架构师：大数据量、缓存、高并发、微服务、多团队协同等核心场景实战》分为数据持久化层场景实战、缓存层场景实战、基于常见组件的微服务场景实战、微服务进阶场景实战和开发运维场景实战5个部分，基于对十余个架构搭建与改造项目的经验总结，介绍了大数据量、缓存、高并发、微服务、多团队协同等核心场景下的架构设计常见问题及其通用技术方案，包含冷热分离、查询分离、分表分库、秒杀架构、注册发现、熔断、限流、微服务等具体需求下的技术选型、技术原理、技术应用、技术要点等内容，将技术讲解与实际场景相结合，内容丰富，实战性强，易于阅读。《从程序员到架构师：大数据量、缓存、高并发、微服务、多团队协同等核心场景实战》适合计划转型架构师的程序员及希望提升架构设计能力的IT从业人员阅读。', 10, 10);
INSERT INTO `goods` VALUES (9, '分布式服务架构', '/picture/jisuanji_9-1.jpg', '/picture/jisuanji_9-2.jpg', '/picture/jisuanji_9-3.jpg', 88.8, '李艳鹏，杨彪', '电子工业出版社', '9787121315787', '《分布式服务架构：原理、设计与实战》全面介绍了分布式服务架构的原理与设计，并结合作者在实施微服务架构过程中的实践经验，总结了保障线上服务健康、可靠的至佳方案，是一本架构级、实战型的重量级著作。', 10, 10);
INSERT INTO `goods` VALUES (10, '高性能MySQL', '/picture/jisuanji_10-1.jpg', '/picture/jisuanji_10-2.jpg', '/picture/jisuanji_10-3.jpg', 100, 'Baron、 Peter 、Vadim Tkachenko', '电子工业出版社', '9787121198854', '《高性能MySQL（第3版）》是MySQL 领域的之作，拥有广泛的影响力。第4版更新了大量的内容，全书共分为16章和6 个附录，内容涵盖MySQL架构和历史，基准测试和性能剖析，数据库软硬件性能优化，复制、备份和恢复，高可用与高可扩展性，以及云端的MySQL和MySQL相关工具等方面的内容。每一章都是相对独立的主题，读者可以有选择性地单独阅读。《高性能MySQL（第4版）》不但适合数据库管理员（DBA）阅读，也适合开发人员参考学习。不管是数据库新手还是专家，相信都能从本书有所收获。', 10, 10);
INSERT INTO `goods` VALUES (11, '第二次世界大战全史', '/picture/lishi_11-1.jpg', '/picture/lishi_11-2.jpg', '/picture/lishi_11-3.jpg', 47.6, '白虹', '中国华侨出版社', '9787511357243', '二战是人类史上一场空前绝后的大决战，是人类命运的大较量。\r\n回顾战争，重温那段血与火的历史，不仅可以丰富历史知识，\r\n还能够以史为鉴，吸取教训，继而深入探讨战争与和平这一人类历史的永恒主题。', 10, 3);
INSERT INTO `goods` VALUES (12, '三国志', '/picture/lishi_12-1.jpg', '/picture/lishi_12-2.jpg', '/picture/lishi_12-3.jpg', 112.8, '陈寿', '黄山书社', '9787546149042', '三国，指从魏文帝黄初元年（220年）到晋武帝太康元年（280年）期间的魏、蜀、吴三国鼎立的一段历史时期；陈寿的《三国志》，是记载这段历史的一部纪传体断代史。《三国志》共六十五卷，其中《魏书》三十卷，《蜀书》十五卷，《吴书》二十卷。《三国志》叙事精炼，取材严谨，史实准确，与《史记》、《汉书》、《后汉书》齐名，一起被称为“前四史”。', 10, 3);
INSERT INTO `goods` VALUES (13, '史记', '/picture/lishi_13-1.jpg', '/picture/lishi_13-2.jpg', '/picture/lishi_13-3.jpg', 249, '司马迁', '岳麓书社', '9787553810881', '该书记载了自远古经夏、商、西周、春秋、战国、秦直至汉武帝时期长达三干年的史事，内容涉及上述各时期的政治、经济、军事、文化、学术、天文、地理乃至医术占卜等，所记地域范围除了汉朝还有周边少数民族和域外国家。《史记》对后世的史学、文学产生了深远的影响。', 10, 3);
INSERT INTO `goods` VALUES (14, '中国历史文化地理', '/picture/lishi_14-1.jpg', '/picture/lishi_14-2.jpg', '/picture/lishi_14-3.jpg', 108, '陈正祥', '山西人民出版社发行部', '9787203119135', '《中国历史文化地理》是享誉国际的地理学家陈正祥先生的代表作，兼具现代地理科学的专业视角和宏阔的历史视野。作者学识广博，研究角度独特，重视从正史、方志、游记等各类传统典籍中汲取素材，纵论中国大地上的大江大河、名城古迹，展现了自然景观和文化景观的时代变迁及相互影响，以及其对中国文化精神特质的塑造。作者见识深邃，论证细密，并且非常重视数据的力量，不遗余力地制作了大量精致图表，化繁为简，堪称妙品。', 10, 3);
INSERT INTO `goods` VALUES (15, '资治通鉴', '/picture/lishi_15-1.jpg', '/picture/lishi_15-2.jpg', '/picture/lishi_15-3.jpg', 65.8, '(北宋)司马光', '辽海出版社', '9787545110128', '由北宋司马光主编的一部多卷本编年体史书，共294卷，历时19年完成。主要以时间为纲，事件为目从周威烈王二十三年(公元前403年)写起，到五代后周世宗显德六年(公元959年)征淮南停笔，涵盖16朝1362年的历史。', 10, 3);
INSERT INTO `goods` VALUES (16, '茶道：从喝茶到懂茶', '/picture/shenghuo_16-1.jpg', '/picture/shenghuo_16-2.jpg', '/picture/shenghuo_16-3.jpg', 24.3, '蓝戈', '吉林美术出版社', '9787557552916', '中国，茶之古国也。不仅是茶及茶文化发源地，也是世界上最早种茶、制茶、饮茶的国家。“茶之为饮，发乎于神农氏，闻与鲁周公，兴于唐，盛于宋”。茶文化一直是中华文化中最惊艳的一抹。所以，喝茶不仅有文化沉淀的趣味，更是一种精神的传承。', 10, 9);
INSERT INTO `goods` VALUES (17, '吃好每天三顿饭', '/picture/pengren_17-1.jpg', '/picture/pengren_17-2.jpg', '/picture/pengren_17-3.jpg', 27.6, '杨桃美食编辑部', '江苏科学技术出版社', '9787553749327', '《吃好每天三顿饭》介绍了怎样轻松做简易三餐，让您能够早餐吃得均衡营养、午餐吃得便利、晚餐自己简易搭配家常菜，既能够实时享用，又能够顺便带便当，隔夜依然好吃！每道菜都标明了详细的做法，有些还列出了步骤图，一目了然，即使是新手也能很快上手，为家人作出可口的美味佳肴。', 10, 12);
INSERT INTO `goods` VALUES (18, '川菜', '/picture/pengren_18-1.jpg', '/picture/pengren_18-2.jpg', '/picture/pengren_18-3.jpg', 130.9, '(英)扶霞·邓洛普', '中信出版社', '9787521716900', '在《川菜》一书中，扶霞将20多年的经验汇集一册。诸多关于地域环境、历史文化和人文风貌的观察分析述诸笔端。全书涵盖200道经典川菜食谱、56种烹饪手法、23种独特调味。从锅碗瓢盆到配料香料；从大众熟知的鱼香肉丝、宫保鸡丁、夫妻肺片、水煮牛肉，到当地才能吃到的自贡小煎鸡、桥头一嫩、活水豆花、峨眉豆腐脑、蛋烘糕。在诸多滋味中，也尝到了活色生香的生活。', 10, 12);
INSERT INTO `goods` VALUES (19, '坨坨妈：烘焙新手入门', '/picture/pengren_19-1.jpg', '/picture/pengren_19-2.jpg', '/picture/pengren_19-3.jpg', 49.6, '坨坨妈', '江苏科学技术出版社', '9787553755601', '每道方子还有“操作要点”，让你学会烘焙一次成功的小技巧，告别新手们惨不忍睹的进阶之路，享受烘焙、享受美食。本书尤其适合迫不及待想要露一手的人，详尽的操作步骤，精美的大图和步骤图，边看边操作，气定神闲地在家人、朋友面前露一手！', 10, 12);
INSERT INTO `goods` VALUES (20, '中国菜', '/picture/pengren_20-1.jpg', '/picture/pengren_20-2.jpg', '/picture/pengren_20-3.jpg', 399.8, '陈纪临', '四川人民出版社', '9787220119828', '中国菜素以高超的烹饪技法和深厚的文化底蕴闻名世界。本书为英国著名艺术类出版商费顿（Phaidon）特邀近年来活跃于国际的烹饪名家陈纪临、方晓岚夫妇撰写。陈氏伉俪遍访全国，从数千种名菜、名点中精选出*具特色且适合家庭烹饪的菜肴，结合传承自父亲陈梦因先生的厨艺绝学，将698道凝结两代人心血的食谱呈现给读者，并特别收录26道世界各地星级餐厅名厨的私房菜谱。不仅如此，本书还从中国的地理环境、气候特点及饮食习惯入手，梳理出各大菜系的源流，详细介绍烹饪技法、工具与各种食材食材，倾力诠释中餐烹饪之哲学。通过本书，中外读者均能更好地了解中国饮食文化的多元性，体味蕴藏于其中的隽永意蕴。', 10, 12);
INSERT INTO `goods` VALUES (21, '射雕英雄传', '/picture/xiaoshuo_21-1.jpg', '/picture/xiaoshuo_21-2.jpg', '/picture/xiaoshuo_21-3.jpg', 91.4, '金庸', '广州出版社', '9787546213347', '《射雕英雄传（全4册）》一书阐释了侠义精神的真谛——侠之大者、为国为民。《射雕英雄传》讲述了，南宋年间，随丈夫杨铁心流落江南牛家村的包惜弱救了金国王子完颜洪烈，却害得丈夫和义兄郭啸天两家家破人亡。郭啸天的妻子逃到蒙古大漠，生下遗腹子郭靖。傻小子郭靖得到丐帮帮主洪七公传授绝技“降龙十八掌”，更赢得心上人蓉儿芳心。坚毅淳朴的傻小子终成一代大侠。包惜弱和杨铁心之子杨康认贼作父，成了金国的小王子，最终害人害己，惨死在牛家村。《射雕英雄传》一书阐释了侠义精神的真谛——侠之大者、为国为民。', 10, 1);
INSERT INTO `goods` VALUES (22, '神雕侠侣', '/picture/xiaoshuo_22-1.jpg', '/picture/xiaoshuo_22-2.jpg', '/picture/xiaoshuo_22-3.jpg', 122.2, '金庸', '广州出版社', '9787546200705', '南宋末年，江南少年杨过自小父母双亡，被父亲生前结义兄弟、江湖上有名的大侠郭靖送到天下道教正宗的全真教去学武。全真教教规森严，天性叛逆的杨过在教中吃尽苦头，忍无可忍，终于逃出全真教。被活死人墓中的小龙女收留为徒。师徒二人在墓中一起练武、一起长大，渐生情愫。但师徒通婚违背宋朝礼教，二人爱情不能为世俗所容，其间尝尽聚合离散之苦，杨过更得知了父亲身死的真相，但在国仇家恨的权衡中明白了更多。杨龙二人的感情一再波折，最终分离十六年。二人十六年后重逢，无限欣喜……杨过带着小龙女离开深渊，前往襄阳。杨过以高强武功，于万军之中杀死蒙古皇帝，蒙古大军顿时崩溃，在襄阳就要失守时解了襄阳十六年的围困。经此一役，神雕侠侣天下扬名，杨过却带着小龙女悄然隐退。', 10, 1);
INSERT INTO `goods` VALUES (23, '天龙八部', '/picture/xiaoshuo_23-1.jpg', '/picture/xiaoshuo_23-2.jpg', '/picture/xiaoshuo_23-3.jpg', 124.2, '金庸', '广州出版社', '9787546206134', '本书以北宋、辽、西夏、大理并立的历史为宏大背景，将儒释道、琴棋书画等中国传统文化融会贯通其中，书中人物繁多，个性鲜明，情节离奇，尽显芸芸众生百态。《天龙八部（套装共5册）》内容：丐帮帮主乔峰与大理国王子段誉、少林弟子虚竹结为兄弟。他身为大宋武林大帮帮主，发现自己竟是契丹人，虽受尽中原武林人士唾弃而不肯以怨报怨；他身为辽国南院大王，却甘愿背上叛族罪名，终以悲壮的自杀来阻止辽国发兵攻宋，不愧为顶天立地的大英雄。', 10, 1);
INSERT INTO `goods` VALUES (24, '笑傲江湖', '/picture/xiaoshuo_24-1.jpg', '/picture/xiaoshuo_24-2.jpg', '/picture/xiaoshuo_24-3.jpg', 122.2, '金庸', '广州出版社', '9787546200712', '《金庸作品集：笑傲江湖（套装1-4册）》处处渗透着追求个性解放与人格独立的精神，对人性的刻画殊为深刻。名门正派的华山派大弟子令狐冲只因心性自由、不受羁勒，喜欢结交左道人士，被逐出师门，遭到正宗门派武林人士的唾弃而流落江湖。令狐冲依然率性而为，只因正义良知自在心中。后来他认识了魔教圣姑任盈盈，两个不喜权势、向往自由的年轻人几经生死患难，笑傲江湖，终成知心情侣。', 10, 1);
INSERT INTO `goods` VALUES (25, '倚天屠龙记', '/picture/xiaoshuo_25-1.jpg', '/picture/xiaoshuo_25-2.jpg', '/picture/xiaoshuo_25-3.jpg', 122.2, '金庸', '广州出版社', '9787546205601', '《倚天屠龙记(全四册)》以元朝末年为历史背景，叙述了明教教主、武当弟子张无忌率领明教教众和江湖豪杰反抗元朝暴政的故事。不祥的屠龙刀使主人公少年张无忌幼失怙恃，身中玄冥毒掌，历尽江湖险恶、种种磨难，最终却造就他一身的绝世武功和慈悲心怀。', 10, 1);
INSERT INTO `goods` VALUES (26, '了不起的我', '/picture/zhexue_26-1.jpg', '/picture/zhexue_26-2.jpg', '/picture/zhexue_26-3.jpg', 44.1, '陈海贤', '台海出版社', '9787516824344', '每当你要下决心改变的时候，就翻开这本书！书里不打鸡血、不灌鸡汤，直击人生的种种问题，提供改变与发展的实用工具，帮你创造更满意的人生，成就了不起的自己。', 10, 6);
INSERT INTO `goods` VALUES (27, '梦的解析', '/picture/zhexue_27-1.jpg', '/picture/zhexue_27-2.jpg', '/picture/zhexue_27-3.jpg', 24.9, '西格蒙德·弗洛伊德', '广东人民出版社', '9787218150239', '《梦的解析》是奥地利心理学家西格蒙德·弗洛伊德的心理学理论著作。在这本心理学专著中，弗洛伊德首先回顾了此前关于分析梦的科学著作，他认为虽然有趣但是不够充分。然后他记述了许多梦，来阐明他的理论。通过对梦的剖析，弗洛伊德提出“潜意识”与“俄狄浦斯情结”等重要概念，\r\n标志着精神分析体系的正式建立，深刻影响了人类看待自我和世界的方式。\r\n《梦的解析》已被视为精神分析学说的重要组成部分和三大理论支柱之一。', 10, 6);
INSERT INTO `goods` VALUES (28, '认同自己：如何与生俱来的弱点', '/picture/zhexue_28-1.jpg', '/picture/zhexue_28-2.jpg', '/picture/zhexue_28-3.jpg', 31.1, '斯蒂芬妮·斯塔尔', '天津人民出版社', '9787201141039', '自尊是我们身体里能感受到的重要的财富，如果没有它，我们就会害怕，会自我批评，会没有信心。关于恐惧、软弱、自卑等问题其实都是建立在低自尊的基础上，如果把这些问题放在低自尊的根源上，那么随之而来的任何痛苦都会消失。', 10, 6);
INSERT INTO `goods` VALUES (29, '乌合之众', '/picture/zhexue_29-1.jpg', '/picture/zhexue_29-2.jpg', '/picture/zhexue_29-3.jpg', 17.6, '古斯塔夫·勒庞', '中国妇女出版社', '9787512714922', '《乌合之众》是法国著名社会心理学家古斯塔夫.勒庞的重要著作，该书首次出版于1895年，迄今已有一百多年的历史，被誉为大众心理学的开山之作。该书深入浅出地剖析了群体的种种特点及其成因，精致地描述了集体心态，对人们理解集体行为的作用以及对社会心理学的思考发挥了巨大影响。作者在书中以预言家般的洞察力，成功描述了此后一百多年间包括两次世界大战和众多民主革命或群众运动等几乎所有震荡世界的重大事件。本书深刻影响了弗洛伊德、荣格、托克维尔等学者以及罗斯福、丘吉尔、戴高乐等政治人物，至今仍在国际学术界有广泛影响，是群体行为研究者的必读经典。', 10, 6);
INSERT INTO `goods` VALUES (30, '自卑与超越', '/picture/zhexue_30-1.jpg', '/picture/zhexue_30-2.jpg', '/picture/zhexue_30-3.jpg', 33.6, '阿尔弗雷德·阿德勒', '中国友谊出版公司', '9787505737488', '本书是人类心理学先驱阿德勒的著作，作者从探寻人生的意义出发，启迪我们去理解真实的生命意义。全书立足于个体心理学观点，从教育、家庭、婚姻、伦理、社交等多个领域，以大量的实例为论述基础，阐明了人生道路的方向和人生意义的真谛。', 10, 6);
INSERT INTO `goods` VALUES (31, '存在与虚无', '/picture/zhexue_31-1.jpg', '/picture/zhexue_31-2.jpg', '/picture/zhexue_31-3.jpg', 55.6, '萨特', '三联书店', '9787108050984', '《存在与虚无》是法国作家让·保罗·萨特创作的一部哲学书籍。其内容有以下五个方面：对存在的探索（导言）；虚无的起源；自为的存在；我和他人；拥有、作为和存在。这是一部关于存在主义代表作，在哲学史上有着重要的地位。', 10, 6);
INSERT INTO `goods` VALUES (32, '大问题', '/picture/zhexue_32-1.jpg', '/picture/zhexue_32-2.jpg', '/picture/zhexue_32-3.jpg', 59.2, '罗伯特·所罗门，凯思林·希金斯', '清华大学出版社', '9787302498872', '本书的目的就是引导读者进入真正思考的大门。罗伯特·所罗门教授尤以擅长授课和写作清晰流畅著称，他不像一般哲学导论著作那样按照事件发生的顺序罗列哲学史上的一些观点，而是完全把读者当成一点都不了解哲学，从而按照一些大问题来组织材料，叙述生动，字里行间都透露出为普通读者的考虑。随着讨论的不断深入，读者会自然而然地进入哲学的殿堂，在不知不觉中熟悉哲学史上一些#重要的观点，而且很可能会对许多问题重新进行审视，真正享受思考的乐趣。哲学就是对智慧的爱。它是对价值重要性的坚持，是对完全陷入生活琐事而仅仅随波逐流的拒斥。我们渴望洞察，企盼理解，但我们的生活被常规攫住了，不时会被那些所谓的“消遣”或“娱乐”活动分神。我们失去的是思考的快乐、理解的挑战、灵感，以及哲学的慰藉。我们都是借着思想而生活的，所以问题的关键不在于是否从事哲学，而在于是接受一种廉价的、没有挑战的替代品，还是试图进行真正的思考。', 10, 6);
INSERT INTO `goods` VALUES (33, '理想国', '/picture/zhexue_33-1.jpg', '/picture/zhexue_33-2.jpg', '/picture/zhexue_33-3.jpg', 38.9, '柏拉图', '云南人民出版社', '9787222187436', '如果有一天，你得到一枚能让人隐身的魔戒，从谋财害命到谋权篡位，坏事做尽而好处尽享——那么，你会选择做个坏人吗？如果有一天，从未干过任何坏事的你，却背上人间恶名，被剥脱尘世的荣誉和利益——那么，你会选择依然做个好人吗？从这一拷问人性的难题出发，古希腊哲学家柏拉图写下了传世经典《理想国》。在这本对话录中，柏拉图笔下的苏格拉底与伙伴一起，在对谈中构建出一个理想城邦，事关政体、教育、人伦、文艺、哲学等一系列重大议题。尽管讨论话题看似包罗万象，但都是为了回答这一终极之问：如果好人不易当，我们为何还是要做个好人？', 10, 6);
INSERT INTO `goods` VALUES (34, '身体、空间与后现代性', '/picture/zhexue_34-1.jpg', '/picture/zhexue_34-2.jpg', '/picture/zhexue_34-3.jpg', 65, '汪民安', '南京大学出版社', '9787305247101', '本书是知名学者、清华大学教授汪民安对身体、空间等论题所做研究的成果结集，分为“身体的技术”“空间的政治”“后现代性的谱系”三个部分，共十九篇文章。第一部分的六篇文章论述“身体”在西方学术史中的地位和在现实政治生活中的作用，第二部分的六篇文章是作者对“空间”问题的研究成果，集中讨论了身体的社会学，以及权力如何把个人的身体局限在空间之中，第三部分收录的七篇文章是对后现代理论的各位大理论家德里达、罗兰▪巴特、乔治▪巴塔耶、福柯等的精彩评论，以及对后现代性理论的发展线索的整理回顾。汪民安教授以后现代哲学的理论视角，考察个人身体、社会生活和现代政治的关联性，洞察细微，挖掘深入，表达精辟，会让读者对身体、对各类空间、对后现代哲学及其研究方法有更多的理解与启发。', 10, 6);
INSERT INTO `goods` VALUES (35, '为什么不平等至关重要', '/picture/zhexue_35-1.jpg', '/picture/zhexue_35-2.jpg', '/picture/zhexue_35-3.jpg', 36, '托马斯·斯坎伦', '中信出版社', '9787521703726', '《为什么不平等至关重要》的主要框架来自托马斯·斯坎伦1996年的林德利讲座，题目为《对不平等的反驳的多样性》。讲稿在2003年被斯坎伦收入《宽容之难》这本论文集中。自林德利讲座之后，斯坎伦不断为这个主题添加新的内容，并且以《平等何时重要？》为题多处发表演讲。这些内容经扩充和打磨后，最终形成了当下这本书。', 10, 6);
INSERT INTO `goods` VALUES (36, '刑法学讲义', '/picture/falv_1-1.jpg', '/picture/falv_1-2.jpg', '/picture/falv_1-3.jpg', 46, '罗翔', '云南人民出版社', '9787222193727', '罗翔普法故事会，拆穿生活的套路，看透舆论的陷阱，人人都能拥有法学智慧。人民日报、央视激赏推荐，千万读者好评。 理性而不失温度，感性而不失高度。', 365, 5);
INSERT INTO `goods` VALUES (37, 'C程序设计', '/picture/jiaoyu_1-1.jpg', '/picture/jiaoyu_1-2.jpg', '/picture/jiaoyu_1-3.jpg', 33.8, '谭浩强', '清华大学出版社', '9787302481447', '本书是与谭浩强所著的《C程序设计(第五版)》（清华大学出版社出版）配合使用的一本重要的参考用书。本书包括4个部分，第1部分是《C程序设计(第五版)》一书的习题和参考解答，包括该书各章的全部习题，对全部编程习题都给出了参考解答，共计132个程序；第2部分是深入学习C程序设计，包括预处理指令、位运算、常见错误分析和C程序案例；第3部分是上机指南，详细介绍Visual C 6.0和Visual Studio 2010集成环境下编辑、编译、调试和运行程序的方法；第4部分是上机实践指导，包括程序的调试与测试、实验的目的与要求，并提供了12个实验。 本书内容丰富,实用性强，可以有效地帮助读者学好C程序设计并提高应用水平，不仅可以作为《C程序设计(第五版)》的配套教材，而且可以作为其他版本的C语言教材的参考书；既适合高等学校师生使用，也可供自学者参考。', 450, 8);
INSERT INTO `goods` VALUES (38, '非暴力沟通', '/picture/jiaoyu_2-1.jpg', '/picture/jiaoyu_2-2.jpg', '/picture/jiaoyu_2-3.jpg', 48.1, '(美)马歇尔 卢森堡Marshall B.Rosenberg', '华夏出版社', '9787508095226', '马歇尔•卢森堡博士发现了一种沟通方式，依照它来谈话和聆听，能使人们情意相通，和谐相处，这就是“非暴力沟通”。\r\n做为一个遵纪守法的好人，也许我们从来没有把谈话和“暴力”扯上关系。不过如果稍微留意一下现实生活中的谈话方式，并且用心体会各种谈话方式给我们的不同感受，我们一定会发现，有些话确实伤人！言语上的指责、嘲讽、否定、说教以及任意打断、拒不回应、随意出口的评价和结论给我们带来的情感和精神上的创伤甚至比肉体的伤害更加令人痛苦。这些无心或有意的语言暴力让人与人变得冷漠、隔膜、敌视。', 333, 8);
INSERT INTO `goods` VALUES (39, '国富论', '/picture/jingji_1-1.jpg', '/picture/jingji_1-2.jpg', '/picture/jingji_1-3.jpg', 75.7, '(英)亚当·斯密 ', '河南大学出版社', '9787564942410', '他揭示了国民财富增长的秘密，总结了初期各国资本主义发展的经验，对劳动价值理论、分工理论、货币与价格、利润工资、地租、资本、税收、贸易等进行分析，将经济学、哲学、历史、政治理论、市场实践、生活实例等，不可思议地综合在了一起，成为一部通俗的社会百科全书。\r\n他以大量史实和数据为基础，诠释了经济学的重要概念和本质；提出了市场经济的自行调节理论，即“看不见的手”；对整个国民经济的运作进行了系统的描述。这为经济学确定了完整的架构，奠定了经济学的基础。', 365, 7);
INSERT INTO `goods` VALUES (40, 'Java Web程序设计任务教程', '/picture/jisuanji_1-1.jpg', '/picture/jisuanji_1-2.jpg', '/picture/jisuanji_1-3.jpg', 47.2, '黑马程序员', '人民邮电出版社', '9787115566850', '本书使用深入浅出、通俗易懂的语言阐述Java Web相关知识，并结合典型的Web应用案例，帮助读者掌握Web应用程序的开发技术。', 94, 10);
INSERT INTO `goods` VALUES (41, '只有医生知道', '/picture/shenghuo_1-1.jpg', '/picture/shenghuo_1-2.jpg', '/picture/shenghuo_1-3.jpg', 99.8, '张羽', '江苏文艺出版社', '9787214090065', '这是一本有关女性的百科全书。抱着“大医治未病”的愿景，作者通过一个个生动的故事，在幽默而不乏温情的叙述中，力图帮助女性真正了解自己的身体，懂得爱护并且知道如何爱护自己，让女性真正掌控自己的身体、命运和生活的方向，不再受到无谓的伤害。\r\n资深妇产科专家协和张羽继《只有医生知道》1、2后，针对广大女性关注的孕育及健康问题进行深入阐述，以细腻真实的笔触，首次披露自身经历的剖宫产“倒霉遭遇”，再度挖掘鲜为人知的产房故事，特别针对漏尿、乙肝病人哺乳、外阴整形、二胎生育等热点问题进行详细解读。全书语言通俗易懂，极具亲和力和实用性，庞大的新鲜医学知识让你醍醐灌顶，澳门行医经历更让人大开眼界。', 36, 9);
INSERT INTO `goods` VALUES (42, '中国居民膳食指南', '/picture/shenghuo_2-1.jpg', '/picture/shenghuo_2-2.jpg', '/picture/shenghuo_2-3.jpg', 58.5, '中国营养学会', '人民卫生出版社', '9787117314046', '在健康中国成为国策的今天， 膳食指南是根据营养科学的原则和健康需要，结合当地食物生产供应情况及人群生活实践，给出的食物选择和身体活动的指导意见。各国的膳食指南均由政府或营养专业团体研究制定，是健康教育和公共政策的基础性文件，是国家实施和推动食物合理消费及改善人群营养健康行动的一个重要组成部分。本书作为膳食指南类著作，坚持的基本思路是提供基本、科学的健康膳食信息，突出本书的指导性，不强调知识体系的完整性。主要内容包括一般人群及特殊人群膳食指南，均为健康人群。我国的膳食指南分别于1997年、2007年、2016年发布，本版是为了适应新时期，更科学的指导居民膳食，避免疾病发生而修订。饮食与人的健康息息相关，基本各国都有自己的膳食指南，以指导国民的饮食健康。', 365, 9);
INSERT INTO `goods` VALUES (43, '平凡的世界：全三册', '/picture/wenxue_1-1.png', '/picture/wenxue_1-2.jpg', '/picture/wenxue_1-3.jpg', 98, '路遥', '北京十月文艺出版社', '9787530221396', '《平凡的世界(全三部)》是一段平凡却热血、温暖又动人的成长故事，小说以孙少平与孙少安两兄弟为主角，讲述他们在生活中面临重重困难与挑战，却依然无畏前行的人生历程。《平凡的世界》深刻展示了普通人在大时代中走过的平凡却不平庸的道路，细腻书写亲情、爱情和友情，饱含真善美和昂扬向上的力量，今天读来依然让人充满共鸣，更给人以激励。《平凡的世界》也是一部跨时代的经典，在反映时代的同时超越时代，散发出经久不衰的魅力。', 100, 2);
INSERT INTO `goods` VALUES (44, '围城', '/picture/wenxue_2-1.jpg', '/picture/wenxue_2-2.jpg', '/picture/wenxue_2-3.jpg', 28.4, '钱钟书', '人民文学出版社', '9787020098095', '用幽默度过艰难时世，以智趣造就岁月风华\r\n      《围城》延续了鲁迅揭露“国民性”的文化批判之路。嬉笑怒骂、妙趣横生的小说语言，幽微复杂、真实琐屑的心理袒露，新奇玄妙、令人叹服的修辞譬喻，关乎生活又指涉情感的多层意蕴，让《围城》成为中国三十年来横贯常销畅销小说之首，亦成为现当代小说史上不可跨越的翘楚之作。', 365, 2);
INSERT INTO `goods` VALUES (45, '苏东坡传', '/picture/wenxue_3-1.jpg', '/picture/wenxue_3-2.jpg', '/picture/wenxue_3-3.jpg', 52, '林语堂', '湖南文艺出版社', '9787540484880', '苏东坡的文章虽闻名天下，仕途却历尽艰辛，屡遭迫害，但终不改其乐观的天性；他一生融儒、释、道于一体，诗、文、词、书、画俱在才俊辈出的宋代登峰造极；他比中国其他的诗人更具有天才的多面性、丰富感、变化感和幽默感；他的人格精神所体现的进取、正直、慈悲与旷达，千年来始终闪耀在中国历史的星空。', 34, 2);
INSERT INTO `goods` VALUES (46, '我们仨', '/picture/wenxue_4-1.jpg', '/picture/wenxue_4-2.jpg', '/picture/wenxue_4-3.jpg', 21, '杨绛', '生活.读书.新知三联书店', '9787108042453', '《我们仨》分为两部分。*部分中，杨绛以其一贯的慧心、独特的笔法，用梦境的形式讲述了*后几年中一家三口相依为命的情感体验。第二部分，以平实感人的文字记录了自1935年伉俪二人赴英国留学，并在牛津喜得爱女，直至1998年钱先生逝世63年间这个家庭鲜为人知的坎坷历程。他们的足迹跨过半个地球，穿越风云多变的半个世纪：战火、疾病、政治风暴，生离死别……不论暴风骤雨，他们相濡以沫，美好的家庭已经成为这一家人生*安全的庇护所。天上人间，阴阳殊途，却难断挚情。杨绛独伴青灯，用心灵向彼岸的亲人无声地倾诉着。作为老派知识分子，她的文字含蓄节制，那难以言表的亲情和忧伤弥漫在字里行间，令读者无不动容。生命的意义不会因为躯体的生灭而有所改变，那安定于无常世事之上的温暖亲情已经把他们仨永远联结在一起，家的意义也在此书中得到了尽情的阐释。\r\n', 342, 2);
INSERT INTO `goods` VALUES (47, '白夜行', '/picture/wenxue_5-1.jpg', '/picture/wenxue_5-2.jpg', '/picture/wenxue_5-3.jpg', 59.6, '[日]东野圭吾', '南海出版公司', '9787544258609', '《白夜行》被普遍视为日本作家东野圭吾作品的无冕之·王，一经推出即成为东野圭吾的长篇小说代表作，中文版发行量超600万册，与《嫌疑人X的献身》《恶意》《解忧杂货店》并称为东野圭吾四大杰作。\r\n《白夜行》是东野圭吾当之无愧的鸿篇巨制，全书故事跨越19年时间，登场人物超过50个，草蛇灰线伏脉千里，情节线索纵横交错又丝丝入扣，用一桩离奇命案牵出案件相关人跨越19年惊心动魄的故事、悲凉的爱情、吊诡的命运、令人发指的犯罪、白描又生动的社会图景、复杂人性的对决与救赎，读来令人叹为观止。\r\n1973年，大阪一栋废弃建筑中发现一名遭利器刺死的男子。警方怀疑一个叫西本文代的女人，但缺少证据。不久西本被判定因意外事故死亡，从此案件成谜。此后19年，众多案件相关者的命运出现了离奇的转折，有人走向上层社会，有人在暗夜中游走挣扎。只有一个老警察追查不休，渐渐拼出了惊人的真相。', 365, 2);
INSERT INTO `goods` VALUES (48, '被讨厌的勇气', '/picture/wenxue_6-1.jpg', '/picture/wenxue_6-2.jpg', '/picture/wenxue_6-3.jpg', 33, '岸見一郎, 古賀史健', '机械工业出版社', '9787111495482', '一名深陷自卑、无能与不幸福的青年，听到了一名哲人主张的“世界无比单纯，人人都能幸福”便来挑战，两人展开了你来我往的思考和辩论，在一夜一夜过去后，青年开始思考，为什么“所谓的自由，就是被别人讨厌”？问题不在于世界是什么样子，在于你是什么样子。', 66, 2);
INSERT INTO `goods` VALUES (49, '红楼梦', '/picture/wenxue_7-1.jpg', '/picture/wenxue_7-2.jpg', '/picture/wenxue_7-3.jpg', 32.4, '曹雪芹', '人民文学出版社', '9787020002207', '本书是一部具有高度思想性和高度艺术性的伟大作品，从本书反映的思想倾向来看，作者具有初步的民主主义思想，他对现实社会包括宫廷及官场的黑暗，封建贵族阶级及其家庭的腐朽，封建的科举制度、婚姻制度、奴婢制度、等级制度，以及与此相适应的社会统治思想即孔孟之道和程朱理学、社会道德观念等等，都进行了深刻的批判并且提出了朦胧的带有初步民主主义性质的理想和主张。这些理想和主张正是当时正在滋长的资本主义经济萌芽因素的曲折反映。', 56, 2);
INSERT INTO `goods` VALUES (50, '橘子不是唯一的水果', '/picture/wenxue_8-1.jpg', '/picture/wenxue_8-2.jpg', '/picture/wenxue_8-3.jpg', 49, '(英)珍妮特·温特森', '北京联合出版有限公司', '9787559614711', '生活，是悲喜交替。茫然，让你错失良机、zui终失意。勇气，带你奋力前划、逆流而上。每个人心中那个犟头倔脑的小孩，正是我们对抗不公、压制与威胁的力量源泉。我们接受教导，接受知识，接受正确与错误、真实与虚构的界限。有一天，我们会发现：围墙坍塌，原来外面还有别的世界，命运，还有别的可能。而橘子，从来都不是唯 一的水果。时而有趣到让你发笑，时而悲伤到近乎残酷，这本书讲的是一个女孩面对种种质疑和打压时，如何探索人生道路，成为她自己的故事。', 365, 2);
INSERT INTO `goods` VALUES (51, '我与地坛', '/picture/wenxue_9-1.jpg', '/picture/wenxue_9-2.jpg', '/picture/wenxue_9-3.jpg', 16.8, '史铁生', '人民文学出版社', '9787020084357', '要是有些事我没说，地坛，你别以为是我忘了，我什么也没忘；但是有些事只适合收藏，不能说，不能想，却又不能忘……\r\n《我与地坛》是史铁生文学作品中，充满哲思又极为人性化的代表作之一。其前两段被纳入人民教育出版社的高一教材中。前两部分注重讲地坛和他与母亲的后悔，对中学生来说，这是一篇令人反思的优秀文章。', 365, 2);
INSERT INTO `goods` VALUES (52, '一句顶一万句', '/picture/wenxue_10-1.jpg', '/picture/wenxue_10-2.jpg', '/picture/wenxue_10-3.jpg', 34, '刘震云', '花城出版社', '9787535486752', '《一句顶一万句》是著名作家刘震云的扛鼎之作，也是刘震云迄今为止最成熟最大气的作品，并在2011年获第八届茅盾文学奖。\r\n小说分上下两个部分，前半部“出延津记”写的是过去：卖豆腐老杨的二儿子杨百顺百事不顺，他一生改了三次名：为了寻个营生，被天主教神父老詹纳为教徒，改名杨摩西；给县长种地时因为一个尿壶得罪了县长，提心吊胆中有人说媒，便倒插门嫁给馒头铺的吴香香，改名吴摩西；吴香香给吴摩西扣了顶绿帽子，吴摩西带着吴香香和前夫的女儿巧玲假意去寻与人私奔的妻子，路上又把巧玲丢了，失望之中，要离开故乡，从此用喊丧的罗长礼的名字度过余生；后半部“回延津记”写的是现在：巧玲被卖到陕西，成了曹青娥，嫁给牛家，儿子牛爱国也是假意寻找与人私奔的妻子，又想到自己从前的相好，想起母亲的老家，于是走回延津……一出一走，延宕百年。', 365, 2);
INSERT INTO `goods` VALUES (53, '云边有个小卖部', '/picture/wenxue_11-1.jpg', '/picture/wenxue_11-2.jpg', '/picture/wenxue_11-3.jpg', 28, '张嘉佳', '湖南文艺出版社', '9787540487645', '写给离开我们的人，写给陪伴我们的人，写给每个人心中的山和海。', 365, 2);
INSERT INTO `goods` VALUES (54, '毛泽东选集', '/picture/zhengzhi_1-1.jpg', '/picture/zhengzhi_1-2.jpg', '/picture/zhengzhi_1-3.jpg', 68.4, '毛泽东', '人民出版社', '9787010009254', '《*选集(套装全4册)(普及本)》包括了*同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《*选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。', 100, 4);
INSERT INTO `goods` VALUES (55, '社会契约论', '/picture/zhengzhi_2-1.jpg', '/picture/zhengzhi_2-2.jpg', '/picture/zhengzhi_2-3.jpg', 34.9, '[法]卢梭', '武汉出版社', '9787543067363', '提出天赋人权和主权在民的思想，开启了近现代民主政治的莫基之作\r\n卢梭在书中为我们描摹出了理想之国的样子，他认为人生来是自由平等的，一个理想的社会应建立在人与人之间的契约关系之上，国家则是自由协议的产物，政府的权力来自被统治者的认可。卢梭还认为，一切主权和立法权都属于人民的集合体，政府只是这个集合体事务的执行者，并不拥有主权；一旦政府滥权，人民就有权推翻它。', 35, 4);
INSERT INTO `goods` VALUES (56, '沉思录', '/picture/zhexue_1-1.jpg', '/picture/zhexue_1-2.jpg', '/picture/zhexue_1-3.jpg', 19, '马可.奥勒留', '中央编译出版社', '9787802118652', '《沉思录》，古罗马一位哲学家皇帝马可.奥勒留.安东尼所著，是一本写给自己的书，内容大部分是他在鞍马劳顿中写成的。它来自作者对身羁宫廷的自己和自己所处混乱世界的感受，追求一种冷静而达观的生活。这本书是斯多葛学派的一个里程碑。', 38, 6);
INSERT INTO `goods` VALUES (57, '自然史', '/picture/zirankexue_1-1.jpg', '/picture/zirankexue_1-2.jpg', '/picture/zirankexue_1-3.jpg', 36.4, '[法]布封', '台海出版社', '9787516812891', '破除各种宗教迷信和无知妄说的开山之作。一部发现地球的博物志。轰动了欧洲学术界的经典著作', 36, 11);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `total` float NULL DEFAULT NULL COMMENT '商品总价',
  `amount` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '支付状态',
  `paytype` tinyint(1) NULL DEFAULT NULL COMMENT '支付方式',
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `datetime` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_user_id_idx`(`user_id`) USING BTREE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 200.2, 3, 4, 2, '林同学', '13413142724', '广东省广州市天河区中山大道西293号广东技术师范大学', '2022-12-06 18:07:15', 2);
INSERT INTO `order` VALUES (2, 143.2, 5, 2, 1, '管理员', '1333333333', '中华人民共和国', '2022-12-10 20:23:32', 1);
INSERT INTO `order` VALUES (3, 123.9, 2, 3, 2, '管理员', '1333333333', '中华人民共和国', '2022-12-11 19:39:09', 1);
INSERT INTO `order` VALUES (6, 145.2, 2, 4, 2, 'root先生', '13488886666', '中国煲汤省生蚝市', '2022-12-12 03:02:04', 3);
INSERT INTO `order` VALUES (7, 46, 1, 3, 1, 'root先生', '13488886666', '中国煲汤省生蚝市', '2022-12-12 03:02:29', 3);
INSERT INTO `order` VALUES (8, 68.8, 2, 2, 1, 'root先生', '13488886666', '中国煲汤省生蚝市', '2022-12-12 03:03:04', 3);
INSERT INTO `order` VALUES (9, 111.2, 2, 2, 2, '陈先生', '15888881370', '广东省广州市天河区中山大道西293号', '2022-12-12 03:06:02', 4);
INSERT INTO `order` VALUES (10, 356.7, 6, 4, 2, '陈先生', '15888881370', '广东省广州市天河区中山大道西293号', '2022-12-12 03:07:02', 4);
INSERT INTO `order` VALUES (11, 34, 1, 3, 1, '管理员', '13413145200', '中华人民共和国', '2022-12-12 04:01:02', 1);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单项id',
  `price` float NULL DEFAULT NULL COMMENT '售价',
  `amount` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  `goods_id` int(0) NULL DEFAULT NULL COMMENT '商品id',
  `order_id` int(0) NULL DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_order_id_idx`(`order_id`) USING BTREE,
  INDEX `fk_orderitem_goods_id_idx`(`goods_id`) USING BTREE,
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_orderitem_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (1, 149, 1, 6, 1);
INSERT INTO `orderitem` VALUES (2, 17.6, 1, 29, 1);
INSERT INTO `orderitem` VALUES (3, 33.6, 1, 30, 1);
INSERT INTO `orderitem` VALUES (4, 46, 1, 36, 2);
INSERT INTO `orderitem` VALUES (5, 34, 1, 52, 2);
INSERT INTO `orderitem` VALUES (6, 28, 1, 53, 2);
INSERT INTO `orderitem` VALUES (7, 17.6, 2, 29, 2);
INSERT INTO `orderitem` VALUES (8, 76.3, 1, 8, 3);
INSERT INTO `orderitem` VALUES (9, 47.6, 1, 11, 3);
INSERT INTO `orderitem` VALUES (14, 47.2, 1, 40, 6);
INSERT INTO `orderitem` VALUES (15, 98, 1, 43, 6);
INSERT INTO `orderitem` VALUES (16, 46, 1, 36, 7);
INSERT INTO `orderitem` VALUES (17, 16.8, 1, 51, 8);
INSERT INTO `orderitem` VALUES (18, 52, 1, 45, 8);
INSERT INTO `orderitem` VALUES (19, 24.3, 1, 16, 9);
INSERT INTO `orderitem` VALUES (20, 86.9, 1, 7, 9);
INSERT INTO `orderitem` VALUES (21, 130.9, 1, 18, 10);
INSERT INTO `orderitem` VALUES (22, 44.1, 1, 26, 10);
INSERT INTO `orderitem` VALUES (23, 58.5, 2, 42, 10);
INSERT INTO `orderitem` VALUES (24, 31.1, 1, 28, 10);
INSERT INTO `orderitem` VALUES (25, 33.6, 1, 30, 10);
INSERT INTO `orderitem` VALUES (26, 34, 1, 52, 11);

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '推荐栏id',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '商品类型',
  `goods_id` int(0) NULL DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_goods_id_idx`(`goods_id`) USING BTREE,
  CONSTRAINT `fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES (3, 3, 11);
INSERT INTO `recommend` VALUES (4, 4, 16);
INSERT INTO `recommend` VALUES (5, 5, 21);
INSERT INTO `recommend` VALUES (6, 6, 26);
INSERT INTO `recommend` VALUES (7, 7, 31);
INSERT INTO `recommend` VALUES (12, 3, 8);
INSERT INTO `recommend` VALUES (13, 3, 10);
INSERT INTO `recommend` VALUES (17, 3, 26);
INSERT INTO `recommend` VALUES (18, 1, 29);
INSERT INTO `recommend` VALUES (19, 2, 29);
INSERT INTO `recommend` VALUES (20, 1, 36);
INSERT INTO `recommend` VALUES (21, 2, 36);
INSERT INTO `recommend` VALUES (23, 1, 37);
INSERT INTO `recommend` VALUES (24, 2, 38);
INSERT INTO `recommend` VALUES (26, 2, 40);
INSERT INTO `recommend` VALUES (27, 2, 43);
INSERT INTO `recommend` VALUES (28, 1, 45);
INSERT INTO `recommend` VALUES (29, 3, 45);
INSERT INTO `recommend` VALUES (30, 2, 46);
INSERT INTO `recommend` VALUES (31, 2, 47);
INSERT INTO `recommend` VALUES (32, 3, 48);
INSERT INTO `recommend` VALUES (33, 1, 50);
INSERT INTO `recommend` VALUES (34, 3, 50);
INSERT INTO `recommend` VALUES (35, 2, 52);
INSERT INTO `recommend` VALUES (36, 3, 53);
INSERT INTO `recommend` VALUES (37, 1, 53);
INSERT INTO `recommend` VALUES (39, 3, 51);
INSERT INTO `recommend` VALUES (40, 3, 55);
INSERT INTO `recommend` VALUES (41, 3, 56);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '小说');
INSERT INTO `type` VALUES (2, '文学');
INSERT INTO `type` VALUES (3, '历史');
INSERT INTO `type` VALUES (4, '政治');
INSERT INTO `type` VALUES (5, '法律');
INSERT INTO `type` VALUES (6, '哲学心理学');
INSERT INTO `type` VALUES (7, '经济');
INSERT INTO `type` VALUES (8, '教育');
INSERT INTO `type` VALUES (9, '生活');
INSERT INTO `type` VALUES (10, '计算机与互联网');
INSERT INTO `type` VALUES (11, '自然科学');
INSERT INTO `type` VALUES (12, '烹饪');
INSERT INTO `type` VALUES (13, '漫画');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `password` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `isadmin` int(0) NULL DEFAULT NULL COMMENT '是否为管理员',
  `isvalidate` int(0) NULL DEFAULT NULL COMMENT '账户是否有效',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_UNIQUE`(`username`) USING BTREE,
  UNIQUE INDEX `email_UNIQUE`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin@vilicode.com', 'admin', '管理员', '13413145200', '中华人民共和国', 1, 0);
INSERT INTO `user` VALUES (2, 'lin', 'lin@163.com', '123456', '林同学', '13413142724', '广东省广州市天河区中山大道西293号广东技术师范大学', 0, 0);
INSERT INTO `user` VALUES (3, 'root', 'root@163.com', '123456', '林先生', '13488886666', '中国煲汤省生蚝市', 0, 0);
INSERT INTO `user` VALUES (4, 'cdc', '45236588259@qq.com', '123456', '陈先生', '15888881370', '广东省广州市天河区中山大道西293号', 0, 0);
INSERT INTO `user` VALUES (5, 'zhangsan', 'lin@gmail.com', '123456', '张三', '15878787878', '中国煲汤省', 0, 0);

-- ----------------------------
-- View structure for 书籍一览
-- ----------------------------
DROP VIEW IF EXISTS `书籍一览`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `书籍一览` AS select `goods`.`id` AS `id`,`goods`.`name` AS `name`,`goods`.`author` AS `author`,`goods`.`isbn` AS `isbn` from `goods`;

SET FOREIGN_KEY_CHECKS = 1;
