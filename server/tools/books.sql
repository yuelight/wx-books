-- MySQL dump 10.13  Distrib 5.7.20, for osx10.13 (x86_64)
--
-- Host: localhost    Database: cAuth
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `alt` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'9787115363398','owHzq0GfI9d3RzLp6UI6x882b2sY','数据结构与算法JavaScript描述','https://img1.doubanio.com/view/subject/m/public/s27371758.jpg','https://book.douban.com/subject/25945449/','人民邮电出版社','通过本书的学习，读者将能自如地选择最合适的数据结构与算法，并在JavaScript开发中懂得权衡使用。此外，本书也概述了与数据结构与算法相关的JavaScript特性。\n本书主要内容如下。\n数组和列表：最常用的数据结构。\n栈和队列：与列表类似但更复杂的数据结构。\n链表：如何通过它们克服数组的不足。\n字典：将数据以键-值对的形式存储。\n散列：适用于快速查找和检索。\n集合：适用于存储只出现一次的元素。\n二叉树：以层级的形式存储数据。\n图和图算法：网络建模的理想选择。\n算法：包括排序或搜索数据的算法。\n高级算法：动态规划和贪心算法。','49.00元',6.6,'JavaScript 116,算法 66,Web前端 28,数据结构 27,前端 21,编程 13,计算机 9,web 8','[美] Michael McMillan',2),(2,'9787115299222','owHzq0GfI9d3RzLp6UI6x882b2sY','响应式Web设计','https://img3.doubanio.com/view/subject/m/public/s24423104.jpg','https://book.douban.com/subject/20390374/','人民邮电出版社','随着iPad mini的发布，又一个新的屏幕尺寸诞生了。用不着全面统计，你就会发现移动互联网时代众多的屏幕规格，从智能手机的3、4、5英寸，到平板电脑的7、8、9、10英寸，再到笔记本和台式机的13至30英寸，绝非目前单一的固定或流式布局所能应付。于是，响应式设计应运而生，而且它也将成为移动互联网时代前端设计与开发人员的一门必修课。\n本书堪称学习响应式Web设计的难得佳作。它不仅全面、细致、图文并茂地介绍了响应式设计相关的技术，比如媒体查询、流式布局、弹性媒体和弹性字体等，还把近几年来Web设计领域公认的最佳设计理念有机地融入到了实例当中，比如移动先行（Mobile First）、渐进增强、平稳退化、无障碍设计等。更加难得的是，本书以设计跨屏幕的网页（响应式设计）为出发点，以点带面，把如今Web设计领域两大标准的最新版本HTML5和CSS3也纳入其中，读者在掌握先进设计方法的同时也能掌握最新的设计技术（比如使用新的HTML5结构化语义标记、嵌入媒体、响应式视频，以及CSS3的新选择器、特效、过渡、变形和动画等），从而可以免除重复学习新标准之苦，让自己一步跨入Web设计领域的最前沿。无论你想学习响应式Web设计，还是学习HTML5和CSS3的实际应用，本书都能满足你的需要，是毋庸置疑的明智之选。\n说到底，响应式Web设计并非一门独立的技术，而只是现有技术的一个组合应用。只要有一点HTML和CSS基础的读者都能顺利地掌握它。对于中、高级的前端设计和开发人员，翻阅本书也有助于理清自己的知识脉络，对这个新的设计理念获得更全面、深入的理解和把握。\n习惯移动阅读的读者，可访问图灵社区，购买本书电子版：http://www.ituring.com.cn/book/1055','49.00元',7.4,'响应式设计 263,Web开发 187,html5 153,前端开发 138,CSS3 110,HTML5 75,web 43,css3 41','Ben Frain',3),(3,'9787115366474','owHzq0GfI9d3RzLp6UI6x882b2sY','AngularJS权威教程','https://img3.doubanio.com/view/subject/m/public/s27371732.jpg','https://book.douban.com/subject/25945442/','人民邮电出版社','本书是资深全栈工程师的代表性著作，由拥有丰富经验的国内AngularJS技术专家执笔翻译，通俗易懂、全面深入，是学习AngularJS不可错过的经典之作。无论是出于工作需要，还是好奇心的驱使，只要你想彻底理解AngularJS，本书都会让你感到满意。\n本书将涵盖AngularJS的如下概念。\n双向数据绑定\n依赖注入\n作用域\n控制器\n路由\n客户端模板\n服务\n通过XHR实现动态内容\n测试\n过滤器\n定制表单验证\n深度测试\n定制指令\n专业工具\n对IE的支持','99.00元',7.3,'AngularJS 124,JavaScript 63,前端开发 44,web开发 14,编程 13,Web前端开发 12,Web 12,计算机 10','[美] Ari Lerner',4),(4,'9787115327352','owHzq0GfI9d3RzLp6UI6x882b2sY','Bootstrap用户手册','https://img3.doubanio.com/view/subject/m/public/s27347131.jpg','https://book.douban.com/subject/25697421/','人民邮电出版社','这本书教你怎么用Bootstrap框架轻松设计出“杀手级”界面及响应式网站。从怎么用Bootstrap的HTML/CSS工具和现成模板构建页面开始，逐步深入地掌握它内置的交互组件和jQuery插件，常常是一行代码都不用写。\n作为源自Twitter的一个开源框架，而且可以从GitHub上自由下载，Bootstrap推崇“移动优先”（Mobile First）的设计理念，还支持动态调整网页布局、创建响应式网站。只要稍微懂一些HTML、CSS和JavaScript，就可以创建出在桌面显示器、智能手机和平板电脑中看起来同样完美的网站或应用。这本书会告诉你怎么做。\n熟悉Bootstrap的文件结构、网格系统和容器布局；\n学习HTML中用于排版、代码、表格、表单、按钮、图片以及图标的元素；\n设计界面及其他网页元素，比如导航、面包屑，以及自定义模态窗口等；\n使用jQuery插件实现渐进的幻灯片、标签页式界面和下拉菜单；\n在LESS文件中修改布局栏数和字体颜色。','CNY 35.00',5.7,'bootstrap 83,前端 40,前端框架 38,前端开发 28,CSS 22,UI 19,JavaScript 18,软件开发 15','斯珀洛克 (Jake Spurlock)',4),(5,'9787115275790','owHzq0GfI9d3RzLp6UI6x882b2sY','JavaScript高级程序设计（第3版）','https://img3.doubanio.com/view/subject/m/public/s8958650.jpg','https://book.douban.com/subject/10546125/','人民邮电出版社','本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript 增添了很多适应未来发展的新特性。本书这一版除增加5 章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从JavaScript 语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax 与Comet 服务器端通信，HTML5 表单、媒体、Canvas（包括WebGL）及Web Workers、地理定位、跨文档传递消息、客户端存储（包括IndexedDB）等新API，还介绍了离线应用和与维护、性能、部署相关的最佳开发实践。本书附录展望了未来的API 和ECMAScript Harmony 规范。\n本书适合有一定编程经验的Web 应用开发人员阅读，也可作为高校及社会实用技术培训相关专业课程的教材。','99.00元',9.3,'JavaScript 2129,Web前端开发 959,前端开发 589,前端 451,javascript 445,编程 395,Web开发 359,计算机 351','[美] Nicholas C. Zakas',5),(6,'9787115160355','owHzq0GfI9d3RzLp6UI6x882b2sY','CSS禅意花园','https://img3.doubanio.com/view/subject/m/public/s2406764.jpg','https://book.douban.com/subject/2052176/','人民邮电出版社','这本书的作者是世界著名的网站设计师，书中的范例来自网站设计领域最著名的网站——CSS Zen Garden（CSS禅意花园）。全书分为两个主要部分。第1章为第一部分，讨论网站“CSS禅意花同”及其最基本的主题，包含正确的标记结构和灵活性规划等。第二部分包括6章，占据了书中的大部分篇幅。\n每章剖析“CSS禅意花园”收录的6件设计作品，这些作品围绕一个主要的设计概念展开，如文字的使用等。通过探索36件设计作品面临的挑战和解决的问题，读者将洞悉主要的Web设计原则以及它们运用的CSS布局技巧，理解CSS设计的精髓，恰当地处理图形和字体来创建界面优美、性能优良且具有强大生命力的网站。','49.00元',8.4,'css 1585,网页设计 804,Web设计 567,Web标准 286,web 262,设计 254,交互设计 209,design 172','[美] Dave Shea,Molly E. Holzschlag',15),(7,'9787559617798','owHzq0GfI9d3RzLp6UI6x882b2sY','京都好物','https://img3.doubanio.com/view/subject/m/public/s29744141.jpg','https://book.douban.com/subject/30198500/','未读·生活家·北京联合出版公司','★「在川旅宿」出品 | J Mook特辑\n★好物×好店×好宿×好食×好礼，把京都带回家。\n★甄选22种传统工艺、88家店铺、200种京都手艺好物。\n★实地探访京都特色手工艺老铺，精选自用送礼皆宜的匠人手作\n★超实用好物导览，大量精美实拍照片，提供兼具目的性和高效率的行前规划。\n★随书附送实用行程计划手册+资深买手私藏购物手帖。\n★精致全彩印刷，纸张手感细腻柔滑，由里到外散发京都之美。\n——————\n京都购物不二之选，更实用、更贴心、性价比更高。\n千年古城京都，除了经典古迹，也深藏数之不尽的百年手艺老店。作者实地探访京都88家店铺，深入介绍22种传统工艺，精选200种京都手艺好物，富有生活气息，在展现日本匠人文化与传统手工艺无穷魅力的同时，也为读者在游览京都时提供了购物参考建议。','75.00元',8.6,'日本 124,京都 113,旅行 94,文化 47,手艺 45,我想读这本书 28,艺术 25,生活 21','骆仪',11),(8,'9787534048388','owHzq0GfI9d3RzLp6UI6x882b2sY','精灵标本','https://img3.doubanio.com/view/subject/m/public/s29446056.jpg','https://book.douban.com/subject/27040103/','浙江人民美术出版社','《精灵标本》是上世纪一名杰出的俄罗斯植物学家的私人日记。作为拉斯普京神秘科学研究所的成员，他奉命寻找长生不老灵药，来到了拥有纷繁药草和诸多传说的布劳赛良德森林。他在森林中的奇妙发现将颠覆自己的一生……这本书融奇花异草、报刊书信和妖精仙灵于一体，将您带入神秘奇诡的魔幻世界。','218.00元',8.5,'绘本 43,法国 29,精灵 24,2.绘本 8,插画 7,WishList 7,装帧 3,参考 3','[法] 本杰明·拉贡贝,[法] 塞巴斯蒂安·佩雷斯',10),(9,'9787122313584','owHzq0GfI9d3RzLp6UI6x882b2sY','练习告别','https://img3.doubanio.com/view/subject/m/public/s29743643.jpg','https://book.douban.com/subject/30197954/','慢半拍·化学工业出版社','曾经以为告别的仪式有很多，喝一场大酒，来一次旅行，站在路口大哭一场。\n后来才知道，人生的很多告别，都悄无声息。\n坐上一班地铁，走过某个街角，就消失不见。\n多年过去，心里不放的，其实是你还欠我的那个告别。\n《练习告别》里有十一个相逢又离别的故事。\n一个光头大叔，在八月飞雪的滇藏公路抽烟，我们一起去唐古拉山脉。他孤身一人上路，想念他的女儿，也念念不忘他的情人。\n一个爱笑的女孩，跟我并肩走在北京十一月的夜晚，只聊日月星辰，不聊悲欢离合，陪我喝醉，醒来告别。\n我们一生，会遇见很多人，爱上一些人，最后离开。\n不知道我们哪一天，就会形同陌路。\n所以，每一次告别，都要用力挥手。\n这是一本关于离别的书\n十一个故事，十一种人生，十一次相遇，十一次离别\n每一个故事都发生在她旅行、旅居的时光里\n它们或许和你的故事相似\n或许在你读完后，会念及你记忆中的某个人，某段时光\n人生就是这样\n有的人一直在身边，有的人终究要告别\n不管怎样，我们始终温暖地活着，并且都会活得很好','49.80',8.4,'文学 29,告别 28,随笔 15,生活 15,练习告别 13,想读，一定很精彩！ 12,非常不错的一本书，值得推荐！ 11,故事 5','沫沫',13),(10,'9787532753451','owHzq0GfI9d3RzLp6UI6x882b2sY','远山淡影','https://img3.doubanio.com/view/subject/m/public/s6784081.jpg','https://book.douban.com/subject/5988624/','上海译文出版社','本书是石黑一雄处女作，一部问世30年仍在不断重印的名作。小说通过一个移居英国的日本寡妇对故土、故人的回忆，讲述了战后长崎一对饱受磨难的母女渴望安定与新生，却始终走不出战乱带来的阴影与心魔，最终以母女成功移民，而女儿自尽作为悲情结局。作品构思奇特，叙述者通篇的回忆是模糊而可疑的，直至全书终，叙述者才忘记了伪装，读者也证实了猜想：叙述者是利用回忆做掩护，编织了一个他人的故事，企图通过他人的面具来讲述自己的故事，以减轻罪恶感。','27.00元',8.1,'石黑一雄 2845,日本 1121,小说 1103,日本文学 993,诺贝尔文学奖 789,远山淡影 591,英国 539,英国文学 499','[英] 石黑一雄',11),(11,'9787547724934','owHzq0GfI9d3RzLp6UI6x882b2sY','慈悲的滋味:丰子恺散文漫画精选集','https://img1.doubanio.com/view/subject/m/public/s29475019.jpg','https://book.douban.com/subject/27069087/','北京日报出版社丨阳光博客','浮躁时代，唯有寂静调柔的心让人真正信服。\n民国社会，贫穷、战乱、社会运动……在残酷现实面前，个人如何调柔自己的内心？丰子恺先生将生活中的不堪剔除，把心中笃定的情怀付诸喜欢的事情中，七十余载笔耕不辍，在文学、绘画、音乐、建筑方面硕果累累，终成一代艺术大师。\n《慈悲的滋味》精选丰子恺散文58篇、画作59幅，从“人间世 ”“山水间”“众生相”三个面向，充分展现了一代艺术大师既洒脱又悲悯的人生情味。正如朱自清先生所言，“他的画里有诗意，有谐趣，有悲天悯人的意味；它有时使你悠然物外，有时使你置身尘世，也有时使你啼笑皆非，肃然起敬”。\n本书还改变了很多人对丰子恺的传统印象，“人家只晓得丰先生的漫画入神，殊不知他的散文清幽玄妙，灵达处远出他的漫画之上”。','78.00',9.2,'丰子恺 81,艺术 38,漫画 33,散文 31,绘本 23,美学 19,文学 19,中国 16','丰子恺',72);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-18 15:30:49
