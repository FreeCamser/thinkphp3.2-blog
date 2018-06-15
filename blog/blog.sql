-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-06-11 05:16:52
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_admin`
--

CREATE TABLE IF NOT EXISTS `blog_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `blog_admin`
--

INSERT INTO `blog_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70'),
(3, '321', '6f2268bd1d3d3ebaabb04d6b5d099425');

-- --------------------------------------------------------

--
-- 表的结构 `blog_article`
--

CREATE TABLE IF NOT EXISTS `blog_article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `desc` varchar(255) NOT NULL COMMENT '文章描述',
  `pic` varchar(100) NOT NULL COMMENT '文章图片',
  `content` text NOT NULL COMMENT '文章内容',
  `cateid` mediumint(9) NOT NULL COMMENT '文章所属栏目id',
  `time` int(12) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `blog_article`
--

INSERT INTO `blog_article` (`id`, `title`, `desc`, `pic`, `content`, `cateid`, `time`) VALUES
(8, '绝代双骄', '古龙作品', './Public/Uploads/2018-05-27/5b0a1e82eb862.jpg', '&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;江湖中有耳朵的人，绝无一人没有听见过&amp;quot;玉郎&amp;quot;江枫和燕南天这两人的名字；江湖中有眼睛的人，也绝无一人不想瞧瞧江枫的绝世风采和燕南天的绝代神功。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　只因为任何人都知道，世上绝没有一个少女能抵挡江枫的微微一笑，也绝没有一个英雄能抵挡燕南天的轻轻一剑！任何人都相信，燕南天的剑非但能在百万军中取主帅之首级，也能将一根头发分成两根，而江枫的笑，却可令少女的心碎。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　但此刻，这出生帝富世家的天下第一美男子，却穿着件粗俗的衣衫，赶着辆破旧的马车，匆匆行驶在一条久已荒废的旧道上。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　此刻若有人见到他，谁也不会相信他便是那倚马斜桥、一掷千金的风流公子。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　七月，夕阳如火，烈日的余威仍在。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　人和马，都闷得透不过气来，但江枫手里的鞭子，仍不停鞭打着马。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　马车飞驶，将道路的荒草，都辗得倒下去，就好像那些曾经为江枫着迷的少女腰肢。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　突然，一声鸡啼，撕裂了天地的沉闷。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　但黄昏时，旧道上哪里来的鸡啼？江枫面色变了，明锐的目光，自压在眉际上的破帽边没望过去，只见一只大公鸡站在道旁残柳的树干上，就像钉在上面似的动也不动，那雄丽的鸡冠，多彩的羽毛，在夕阳下闪动着令人眩目的金光。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　公鸡的眼睛里竟也似有种恶毒的、妖异的光芒。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫的面色变得更苍白，突然勒住了车马。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　健马长嘶，车缓缓停下，车厢中有个甜美温柔的语声问道：&amp;quot;什么事？&amp;quot;江枫微一一迟疑，苦笑道：&amp;quot;没有什么，只不过走错路了&amp;quot;拨转马头，兜了半个圈子，竟又向来路奔回，只听那公鸡又是一声长嘶却像是在对他冷笑。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫打马更急，路上的荒草已被辗平，车马自是走得更快了，但还未奔出四十丈，道上竟又有样东西挡住了去路。这久已荒废、久无人迹的旧道上，此刻竟突然有只巨大的肥猪横卧在路中，又有谁能猜透这只猪是哪里来的？马车方才还驶过这条路，这条路上，方才明明连半斤猪肉都没有，而此刻却有了整整一只猪。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫再次变色，再次勒住马车。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　只见那只猪在地上翻滚着，但全身上下，却被洗得干干净净，那紧密的猪毛，在夕阳下就像是金丝织成的毯子一样。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　门窗紧闭的车厢里，又传出人语道：&amp;quot;什么事？&amp;quot;江枫语塞：&amp;quot;我……我……&amp;quot;那甜美温柔的人语轻叹着道：&amp;quot;你又何苦瞒我？我早已知道&amp;quot;江枫失声道：&amp;quot;你早已知道了？&amp;quot;我方才听见那声鸡啼，便已猜出必定是十二星相中人找上咱们了，你怕我担心,所以才瞒着我，是么？&amp;quot;江枫长叹一声，道：&amp;quot;奇怪……你我此行如此秘密，他们怎会知道？但……但你只管放心，什么事都有我来抵挡&amp;quot;车厢中人柔声道：&amp;quot;你又错了，自从那天……那天我准备和你共生共死，无论有什么危险艰难，也该由咱们俩共同承当。&amp;quot;&amp;quot;但你现在……&amp;quot;&amp;quot;没关系，现在我觉得很好。&amp;quot;江枫咬了咬牙，道：&amp;quot;好，你还能下车走么？道路两头都已有警象，看来咱们也只有弃下车马，穿过这一片荒野……&amp;quot;&amp;quot;为什么要弃下车马呢？他们既已盯上咱们，反正已难脱身&amp;quot;。倒不如就在这里等着，十二星相虽有凶名，但咱们也未必怕他们！&amp;quot;&amp;quot;我……我只是怕你……&amp;quot;&amp;quot;你放心，我没关系。&amp;quot;江枫面上忽又现出温柔的笑容，轻轻道：&amp;quot;我能找着你，真是最幸运的事。&amp;quot;他在夕阳下笑着，连夕阳都似失却了颜色。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　车厢人娇笑道：&amp;quot;幸运的该是我才对，我知道，江湖中不知道有多少女孩子在羡慕我，妒忌我，只是她们……&amp;quot;语声未了，健马突然仰道惊嘶起来──暮风中方自透出新凉，这匹马却似突然出了什么惊人的警兆！一阵风吹过，猪，在地上翻了个身，远处隐隐传来鸡啼，荒草在风中摇舞，夕阳，黔淡了下来，大地竟似突然被一种不祥的气氛所笼罩，这七月夕阳下的郊野，竟突然显得说不出的凄凉、萧瑟！江枫变色道：&amp;quot;他们似已来了！&amp;quot;突然马车后有人喋喋笑道：&amp;quot;不错，咱们已来了！&amp;quot;这笑声竟也如鸡啼一般，尖锐、刺耳、短促，江枫一生之中，当真从未听过如此难听的笑声。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　他大惊转身，轻叱道：&amp;quot;谁？！&amp;quot;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　鸡啼般的笑声不绝，马车后已转出七八个人来。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　第一个人，身长不足五尺，瘦小枯干，却穿着一身火红的衣裳，那模样正有说不出的诡秘，说不出的猥琐。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　第二个人，身长却赫然在九尺开外，高大魁伟，黄衣黄冠，那满脸全无表情的横肉，看来比铁还硬。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　后面踉着四个人打扮得更是奇怪，衣服是一块块五颜六色的绸锻缝成的，竟像是戏台上乞丐穿着的富贫衣。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　这四人身材相貌不相同，却都是满面凶光、行动骠悍的汉子，举手投足，也是一模一样，谁也不快上一分，谁也不慢上一分。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　还有个人远远跟在后面，前面七个人加起来，也末见会比这人重上儿斤，整整一匹料子，也未见能为此人做件衣服，他胖得实在已快走不动了，每走一步，就喘口气，口中不住喃喃道：&amp;quot;好热，热死人了。&amp;quot;满头汗珠，随着他颤动的肥肉不住地流下来。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫跃下马车，强作镇定，抱拳道：&amp;quot;来的可是十二星相中之司晨客与黑面君么？&amp;quot;红衣人格格笑道：&amp;quot;江公子果然好眼力，但咱们不过是一只鸡、一只猪而已，司晨客、黑面君，这些好听的名字，不过是江湖中人胡乱取的，咱们担当不起。&amp;quot;江枫目光闪动道：&amp;quot;阁下想必就是～&amp;quot;红衣人截口笑道：&amp;quot;红的是鸡冠，黄的是鸡胸，花的是鸡尾，至于后面那位，你瞧他的模样像什么，他就是什么。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫道：&amp;quot;几位不知有何见教？&amp;quot;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　红衣鸡冠道：&amp;quot;闻得江公子有了新宠，咱兄弟都忍不住想来瞧瞧这位能令玉郎心动的美人儿究竟美到什么地步，再者，咱兄弟还想来向公子讨件东西&amp;quot;江枫暗中变色，口中却仍然沉声道：&amp;quot;只可惜在下此次匆匆出门，身无长物，哪有什么好东西，能入得了诸位名家法眼&amp;quot;.鸡冠人喋喋笑道：&amp;quot;江公子此刻突然将家财完全变卖，咱们虽不知为的是什么，也不想知道，但江公子以田庄换来的那袋明珠……嘿嘿，江公子也该知道咱们十二星相向来贼不空手,公子就把那袋明珠赏给咱们。&amp;quot;江枫突也大笑道：&amp;quot;好，好，原来你们倒竟也打听得如此清楚，在下也知道十二星相从来不轻易出手，出手后从不空回，但……&amp;quot;鸡冠人道：&amp;quot;但什么，你不答应？&amp;quot;江枫冷笑道：&amp;quot;若要我答应，只有……&amp;quot;语声未了，闪闪银光，已到了他胸口。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　这鸡冠人好快的手法，眨眼间，手中已多了件银光闪闪的奇形兵刃，似花锄，如钢啄，闪电般击向江枫，眨眼间已攻出七招，那诡异的招式，看来正如公鸡啄米一般，沿着江枫手足少阴经俞府、神法、灵墟、步廊……等要穴，一路啄了下去。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫平地跃起，凌空一个翻身，堪堪避过了七啄，但这时却又有四对鸡爪镰在地上等着。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　鸡枫一动，鸡尾立应，那四个花衣鸡尾人的出手之快，正也不在红衣鸡冠之下，四对鸡爪镰刀，正也是江湖罕暑的外门功夫，一个啄，四个抓，招式配合得滴水不漏，就算是一个人生着九只手，呼应得也未必如此微妙。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫自然不是等闲人物，但应付这五件外门兵刃，应付这从来未见的奇诡招式，已是左支右拙，大感吃力、何况还有个满脸横肉、目光闪动的黄衣鸡胸正在一旁目不转睛地瞪着他，只等着他破绽露出。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君嘻嘻笑道：&amp;quot;哥儿们，加油，咱们可不是女人，可莫要对这小子生出怜香惜玉的心，兄弟我且先去睢瞧车子里的小美人儿。&amp;quot;江枫怒喝道：&amp;quot;站住！&amp;quot;他虽想冲过去，怎奈那九件兵刃却围得他风雨不透，而这时黑面君已蹒跚地走向车厢，伸手去拉门。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　就在这时，车窗突然开了一线，里面伸出一只白生生的玉手，那纤柔、毫无瑶疵的手指中，却夹者只梅花。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑色的梅花！盛夏中有梅花，已是奇事，何况是黑色的梅花？！白的手，黑的梅花，衬托出一种无法形容的、神秘的美，车厢中甜美的语声一字字缓缓道：&amp;quot;你们瞧瞧这是什么？&amp;quot;黑面君的脸，突然扭曲起来，那只正在拉门的手，也突然不会动了，鸡嘴啄、鸡爪镰，更都在半空顿住！这六个凶名震动江溺的巨盗，竟似都突然中了魔法，每个人的手、脚、面目，都似已突然被冻结。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君嘎声道：&amp;quot;绣玉谷，移花宫…&amp;quot;车厢中人道：&amp;quot;你的眼力倒也不错。&amp;quot;黑面君道：&amp;quot;我……小人。&amp;quot;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　牙齿打战，竟是一句话也说不出来。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　车厢人柔声道：&amp;quot;你们想不想死？&amp;quot;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　&amp;quot;小人，不……&amp;quot;&amp;quot;。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　&amp;quot;不想死的还不走！&amp;quot;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　这句话还末说完，红的、黄的、花的、黑的，全部飞也似的走了──黑面君脚步也不再蹒跚，口中也不喘气了，若非亲眼瞧见，谁也不会相信这么胖的人会有如此轻灵的身法。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫一步窜到车窗前，道：&amp;quot;你……你没事么了&amp;quot;车厢人笑道，&amp;quot;我只不过招招手而已。&amp;quot;江枫松了口气，叹道：&amp;quot;不想你竟从宫中带出了朵墨玉梅花连十二星相这样的凶人，竟也对她们如此惧怕。&amp;quot;车厢中人道：&amp;quot;由此你就可想到她们有多可怕，咱们还是快走吧，别的人来了都不要紧，但若是……&amp;quot;突然间，只听&amp;quot;嗖嗖嗖&amp;quot;衣袂破风之声骤响，方才逃了的人，此刻竟又全部回来了，来的竟比去时还快。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君格格笑道：&amp;quot;咱们险些上当了，车子里若真是移花宫中的人，方才还能活着走么？你几时听说过移花宫手下留得有活口？&amp;quot;车厢中人道：&amp;quot;我饶了你，你竟还……黑面君大喝道：&amp;quot;冒牌货，出来吧！&amp;quot;突然出手一举，那车门竟被一拳击碎！车厢里坐着的乃是个云鬓蓬乱、面带病容的妇人，却仍掩不住她的天香国色──他眼睛并不十分媚秀，鼻子并不十分挺刺。嘴唇也不十分娇小，但这些凑在一起，却教人瞧了第一眼后，目光便再也舍不得离开，尤其是她那双眼睛里所包涵的情感、了解与智慧，更是深如海水。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　只是她的腹部却高高横起，原来竟已身怀六甲。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君怔了一怔，突然大笑道：&amp;quot;原来是个大肚婆娘，居然还敢冒充移花官的……&amp;quot;话末说完，那少妇身子突然飞了出来，黑面君还未弄清是怎么回事，脸上已&amp;quot;□□啪啪&amp;quot;被她掴了几个耳光。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　那少妇身子又已掠回，轻笑道：&amp;quot;这大肚婆如何？&amp;quot;黑面君怒吼一声，道：&amp;quot;暗算偷袭，又算得了什么？&amp;quot;一拳击了出去，这身子虽臃肿，但这一拳击出，却是又狠、又快、又辣！那少妇面上仍带着微笑，纤手轻轻一引、一拨，也不知她用了什么手法，黑面君这一拳竟被她拨了，&amp;quot;砰&amp;quot;的一拳，竟打在自己肩头上，竞偏偏不能收住，也不能闪避，他一拳击碎车门，是何等气力，这一拳竞自己将自己打得痛吼着跃倒在地上。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　鸡冠鸡尾本也跃跃欲试，但此刻却又不禁怔住了，目瞪口呆地瞧着这少妇，连手指都不敢动一动。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君颤声道：&amp;quot;移花接玉，神鬼莫敌……&amp;quot;那少妇道：&amp;quot;你既然知道，便也该知道我是不是冒充的。&amp;quot;黑面君道：&amp;quot;小……小人该死，该死！……&amp;quot;抡起手来，正反掴了自己十几个耳括子，打得他那张脸更黑胖了。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　那少妇叹了口气，道：&amp;quot;我要为孩子积点阴德，你们……你们快走吧。&amp;quot;这一次他们自然逃得更快，眨眼间便逃得踪影不见，但暮色苍茫中，远处却有条鬼魅般的人影一闪，向他们追了过去。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江柯瞧见他们去远，才又松了口气，叹道，&amp;quot;幸亏你还有这一手，又将他们骇佳，否则……&amp;quot;突然发现那少妇面上已变了颜色，身子颤抖着，满头冷汗。滚滚而落，竟似已疼得不能忍受。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　江枫大惊道：&amp;quot;你怎么了&amp;quot;那少妇道：&amp;quot;我……发动了胎气……只怕……只怕已……快要……&amp;quot;她话还没说完，江柯已慌得乱了手脚，跺足道&amp;quot;这如何是好？&amp;quot;那少妇嘶声道：&amp;quot;你快将车子赶到路旁……快……快……快！&amp;quot;江枫手忙脚乱地将车子赶到路旁长草里，健马不住长嘶着，江枫不停地抹汗，终于一头钻进车厢里,破了的车门，被长衫挡了起来。大约数盏茶的时间，车厢中突然传出婴儿嘹亮的哭声。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　过了半响，又听到江枫狂喜呼道：&amp;quot;两个……是双胞胎！。&amp;quot;又过了两盏茶时分，满头大汗，满面兴奋的江枫，一头钻出车厢，但目光所及，整个人却又被惊得呆住了！方才鼠窜而逃的黑面君、司晨客，此刻竟又站在车厢前，六只冷冰冰的目光，正眨也不眨地瞧着他！江枫想再作镇定，但面容也不禁骤然变了颜色，失声道：&amp;quot;你……你们又回来了？&amp;quot;鸡冠人诡笑道：&amp;quot;公子吃惊了了么&amp;quot;江枫大声道：&amp;quot;你们莫非要送死不成？！&amp;quot;黑面君哈哈大笑道：&amp;quot;送死？…&amp;quot;江枫厉声道：&amp;quot;瞧你们并非孤陋寡闻之辈，绣玉谷，移花官的厉害，你们难道不知道？！&amp;quot;他平日虽然风流蕴藉，温文尔雅，但此刻却连眼睛都红了。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君大笑道：&amp;quot;姓江的，你还装什么蒜？你知道，我也知道，移花宫的两位宫主，此刻想要的是你们两人的命，可不是我们。&amp;quot;汗珠，已沿着江枫那挺秀的鼻子流到嘴角，但他的嘴唇却干得发裂，他舐了舐嘴唇，纵声大笑道，&amp;quot;我瞧你倒真是疯了，移花官的宫主会想要我的命？……哈哈，你可知道现在车子里的人是谁？&amp;quot;鸡冠人冷冷道：&amp;quot;现在车子里的，不过是移花官的花奴、丫头，只不过是自移花宫逃出来的叛徒！&amp;quot;江枫身子一震，虽然想强作笑声，但再也笑不出了。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君格格笑道，&amp;quot;江公子又吃惊了吧？江公子又怕还要问，这种事咱们又怎会知道的？嘿嘿，这可是件秘密，你可永远也猜不到&amp;quot;这的确是件秘密，江枫弃家而逃，为的正是要逃避移花官那二位宫主的追魂毒手！但这件秘密除了他和他妻子外，绝无别人知道，此刻这些人偏偏知道了，他们是怎会知道的？江枫想不出，也不能再想了，车厢中产妇在呻吟，婴儿在啼哭，车厢外站者的却是些杀人不眨限的恶徒！他身子突然箭一般窜了出去，只见眼前刀光一闪，黄衣鸡胸掌中一对快刀，已挡住了他去路！江枫不避反迎，咬了咬牙，自刀光中穿过去，闪电般托住黄衣人的手腕，一拧一扭，一柄刀已到了他手中。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　他飞起一脚，踢向黄衣人的下腹，反手一刀，格开了鸡冠人的钢刀，身子却从鸡爪镰窜了过去，刀光直劈黑面君！这几招使得当真是又狠又准，又快又险！刀光、钢啄、鸡爪，无一件不是擦着他衣衫而过。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　黑面君虽拧身避过了这一刀，但也不禁惊出了一身冷汗，抽空还击二拳，口中大喝：&amp;quot;留神！这小子拼上命了！&amp;quot;这些身经百战的恶徒，自然知道一个人若是拼起命来，任何人也难撄其锋，瞧见江枫刀光，竟不硬接，只是游斗！江枫左劈一刀，右击一招，虽然刀刀狠辣，刀刀拼命，但却刀刀落空，黑面君不住狂笑，黄衣人双刀虽只是剩下一柄，但左手刀专走偏锋，不时削来一刀，叫人难以避内，四对鸡爪镰配合无间，攻击时锐不可当，防守时密如蛛网，就只这些已足以让人魂魄！更何况还有那红衣鸡冠，身法更是快如鬼魅，红衣飘飘，倏来忽去，钢啄闪闪，所取处无一不是江枫的要穴！江枫发髻已蓬乱，吼声已嘶裂，为了他心爱人的生命，这风流公子此刻看来已如疯狂的野兽！但他纵然拼命，却也无用了，狮已入陷，虎已被困，纵然拼命，也不过只是无用的挣扎而已。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　暮云四合，暮色凄迷。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　这一场恶战虽然惊心动魄，却也悲惨得令人不忍卒睹，他流汗！流血！换来的不过是敌人疯狂的讪笑。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　车厢中又传出人语，呻吟着呼道：&amp;quot;玉郎，你小心些……只要你小心些，他们绝不是你的敌手！&amp;quot;黑面君突然一步窜过去，一把撕开衣，狞笑道：唷，这小子福气不错，居然还是个双胞胎！&amp;quot;江枫嘶声呼道：&amp;quot;恶贼，滚开！&amp;quot;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　他冲过去，被挡回来，又冲过去，又被挡回来，再冲过去，再被挡回来，他目毗尽裂，已裂出鲜血！那少妇紧拥着她的两个小孩子，嘶声道：&amp;quot;恶贼，你……你……&amp;quot;黑面君格格笑过：&amp;quot;小美人儿，你放心，现在我不会对你怎样的，但等你好了，我却要……哈哈，哈哈……一江枫狂吼道：&amp;quot;恶贼，只要你敢动她……&amp;quot;黑而君突然伸手在那少妇脸上摸了摸，狞笑道：&amp;quot;我就动她，你又能怎样？&amp;quot;江枫狂吼一声，刀法一乱，快刀、利爪、尖啄，立刻乘隙攻进。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 15.3333px; background-color: rgb(255, 255, 255);&quot;&gt;　　他肩头、前胸、后背，立刻多了无数条血口！那少妇颤声道：&amp;quot;玉郎，你小心些！&amp;quot;黑面君大笑道：&amp;quot;你的玉朗就要变成玉鬼了！&amp;quot;江枫满身鲜血，狂吼道：&amp;quot;恶贼，我纵成厉鬼，也不挠你&amp;quot;充满忿怒的喝声，得意的笑声，悲惨的狂叫，婴儿的啼哭，混成一种令铁石人也要心碎的声音。&lt;/span&gt;&lt;/p&gt;', 10, 0),
(9, '关雎', '先秦诗歌', './Public/Uploads/2018-05-27/5b0a1ed9d33a7.jpg', '关关雎鸠，在河之洲。窈窕淑女，君子好逑。&lt;br/&gt;参差荇菜，左右流之。窈窕淑女，寤寐求之。&lt;br/&gt;求之不得，寤寐思服。悠哉悠哉，辗转反侧。&lt;br/&gt;参差荇菜，左右采之。窈窕淑女，琴瑟友之。&lt;br/&gt;参差荇菜，左右芼之。窈窕淑女，钟鼓乐之。', 13, 0),
(10, '拭血为殇，只如初见', '作者：匆客 | 散文吧首发', './Public/Uploads/2018-05-27/5b0a1f13968aa.jpg', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;一盏不&lt;a href=&quot;http://www.sanwen8.cn/z/ye/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;夜&lt;/a&gt;，目光候尽了谁的清风？一曲离骚，挽指弹断了谁的情弦？一纸残念，念碎了谁的此去经年？落英纷纷，逝&lt;a href=&quot;http://www.sanwen8.cn/z/xiaxue/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;雪&lt;/a&gt;漫漫！瑶琴谁抚，羌管何续，夜凄凉。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;煮酒青梅，平生谁任，曲水无觞，钟期寞！蒹葭苍苍，谁染白霜？伊人一方不在水！空楼飞燕，比翼饮霜，凤囚凰，谁指孔南飞 ？&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;蜉蝣一&lt;a href=&quot;http://www.sanwen8.cn/z/meng/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;梦&lt;/a&gt;三生写，枕上花开，朝夕画。红尘千劫，浮屠谁祷，木鱼游！谁人借梦神话写，天地孤影笑我行！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;飞花杳杳，&lt;a href=&quot;http://www.sanwen8.cn/z/tianya/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;天涯&lt;/a&gt;瑟瑟！月下，我为你破茧成蝶，寻着你的脉络，越过沧海桑田，只是不愿你一人花下摇琴，独舞月下！而你的淡漠眉间，朱砂含泪，至此淋湿了我一场数不尽烟&lt;a href=&quot;http://www.sanwen8.cn/z/xiayu/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;雨&lt;/a&gt;&lt;a href=&quot;http://www.sanwen8.cn/z/qiutian/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;秋天&lt;/a&gt;！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;舞剑挽月，阑珊不语，横萧引，醉里捏花知是谁？尘世离散，步步皆殇！你可听见，我那躲在流年尽头，都是歇斯底里的留挽？你可看见，我那走在天涯末路，都是一路追随的足印？你又可触到，我那埋于心间苦涩冰凉，都是欲言又止，不可说！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;你红唇轻语，华美了夜的誓言，却负它沧海桑田！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;你随手轻点，解开了花的芬芳，却任它风中留殇！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;曾，&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;以为，与你月下相拥，从此便可如影随形，不离不弃。后来&lt;a href=&quot;http://www.sanwen8.cn/z/yueliang/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;残月&lt;/a&gt;笑我，形单影只！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;以为，与你花下执手，从此便可握住季节，花开盛世。后来四季轮回，繁花尽逝！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;以为，与你流星许愿，从此便可天荒地老，&lt;a href=&quot;http://www.sanwen8.cn/z/meng/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;梦想&lt;/a&gt;成真。后来梦中惊醒，两行深泪！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;以为，与你孟汤打翻，从此便可三生不忘，三世相约。后来忘情苦水，永不相思！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;浮世事，殇思量，故来情字断人肠！你以一段&lt;a href=&quot;http://www.sanwen8.cn/z/likai/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;离别&lt;/a&gt;的倾世温柔，桎梏我一人在这世间，看尽所有浮花落寞，不予言语！恋你是你，念你忘你，之中，请许我带一点点恨，带一丝丝殇……&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;若，自古多情空余恨！那么，就让我与轮回交杯，歃血为契，饮下这场万劫不复，遗世长眠！只许一场，来生，只如&lt;a href=&quot;http://www.sanwen8.cn/z/renzhengchujian/&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); text-decoration-line: none;&quot;&gt;初见&lt;/a&gt;！&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;月下，我以泪为祭，拭血为殇，萧刹这一世梦里&lt;a href=&quot;http://www.sanwen8.cn/z/chuntian/&quot; target=&quot;_blank&quot; style=&quot;color: red; text-decoration-line: none;&quot;&gt;春&lt;/a&gt;暖花开！来生，当星点天阑，月升末路，那么落红深处，谁可愿为我燃一盏温情，照亮，一世花开......&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 12, 0),
(11, '蒹葭', '先秦：佚名', './Public/Uploads/2018-05-27/5b0a61ea05379.jpg', '蒹葭苍苍，白露为霜。所谓伊人，在水一方。&lt;br/&gt;溯洄从之，道阻且长。溯游从之，宛在水中央。&lt;br/&gt;蒹葭萋萋，白露未晞。所谓伊人，在水之湄。&lt;br/&gt;溯洄从之，道阻且跻。溯游从之，宛在水中坻。&lt;br/&gt;蒹葭采采，白露未已。所谓伊人，在水之涘。&lt;br/&gt;溯洄从之，道阻且右。溯游从之，宛在水中沚。', 13, 1527407082);

-- --------------------------------------------------------

--
-- 表的结构 `blog_cate`
--

CREATE TABLE IF NOT EXISTS `blog_cate` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `catename` varchar(60) NOT NULL COMMENT '栏目名称',
  `sort` mediumint(9) NOT NULL DEFAULT '20' COMMENT '栏目排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `blog_cate`
--

INSERT INTO `blog_cate` (`id`, `catename`, `sort`) VALUES
(10, '小说', 2),
(12, '散文', 5),
(13, '诗歌', 20);

-- --------------------------------------------------------

--
-- 表的结构 `blog_link`
--

CREATE TABLE IF NOT EXISTS `blog_link` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `title` varchar(50) NOT NULL COMMENT '链接标题',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `desc` varchar(255) NOT NULL COMMENT '链接描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `blog_link`
--

INSERT INTO `blog_link` (`id`, `title`, `url`, `desc`) VALUES
(5, '百度', 'http://www.baidu.com', '百度一下就知道'),
(6, 'github', 'https://github.com', '大型同性交友网站'),
(7, '豆瓣FM', 'https://douban.fm', '倾听你的音乐');

-- --------------------------------------------------------

--
-- 表的结构 `blog_message`
--

CREATE TABLE IF NOT EXISTS `blog_message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `blog_message`
--

INSERT INTO `blog_message` (`message_id`, `content`, `create_at`, `user_id`) VALUES
(1, '123\r\n', 1527582711, 1),
(3, 'qqq', 1527582906, 1),
(7, '狗宝', 1527601873, 4),
(22, 'qqqq', 1528007813, 5),
(23, '1111', 1528012539, 6),
(25, '&lt;script&gt;alert(/xss/)&lt;/script&gt;', 1528013907, 7),
(26, '&lt;script&gt;alert(/xsss/)&lt;/script&gt;', 1528686867, 8);

-- --------------------------------------------------------

--
-- 表的结构 `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(40) NOT NULL,
  `password` char(32) NOT NULL,
  `create_at` int(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `blog_user`
--

INSERT INTO `blog_user` (`user_id`, `username`, `password`, `create_at`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1527581464),
(2, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 1527582978),
(3, '1234', '81dc9bdb52d04dc20036dbd8313ed055', 1527583037),
(4, '家宝', '202cb962ac59075b964b07152d234b70', 1527600718),
(5, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', 1527930192),
(6, 'who', '53d670af9bb16ea82e7ef41ee23ec6df', 1528012527),
(7, 'eee', '670da91be64127c92faac35c8300e814', 1528013868),
(8, 'ccc', '9df62e693988eb4e1e1444ece0578579', 1528686839);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;