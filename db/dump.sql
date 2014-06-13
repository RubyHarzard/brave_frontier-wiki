# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.15)
# Database: bf_wiki_development
# Generation Time: 2557-06-03 11:58:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table evolution_recipes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `evolution_recipes`;

CREATE TABLE `evolution_recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `before_evo_unit_id` int(11) DEFAULT NULL,
  `after_evo_unit_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unit_1_id` int(11) DEFAULT NULL,
  `unit_2_id` int(11) DEFAULT NULL,
  `unit_3_id` int(11) DEFAULT NULL,
  `unit_4_id` int(11) DEFAULT NULL,
  `unit_5_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table leader_skills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `leader_skills`;

CREATE TABLE `leader_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `leader_skills` WRITE;
/*!40000 ALTER TABLE `leader_skills` DISABLE KEYS */;

INSERT INTO `leader_skills` (`id`, `title`, `details`)
VALUES
	(1,'Fire Spirit\'s Power','25% boost to Atk Power of Fire Types'),
	(2,'Fire God\'s Power','50% boost to Atk Power of Fire Types'),
	(3,'Water Spirit\'s Power','25% boost to Atk Power of Water Types'),
	(4,'Water God\'s Power','50% boost to Atk Power of Water Types'),
	(5,'Earth Spirit\'s Power','25% boost to Atk Power of Earth Types'),
	(6,'Earth God\'s Power','50% boost to Atk Power of Earth Types'),
	(7,'Thunder Spirit\'s Power','25% boost to Atk Power of Thunder Types'),
	(8,'Thunder God\'s Power','50% boost to Atk Power of Thunder Types'),
	(9,'Light Spirit\'s Power','25% boost to Atk Power of Light Types'),
	(10,'Light God\'s Power','50% boost to Atk Power of Light Types'),
	(11,'Dark Spirit\'s Power','25% boost to Atk Power of Dark Types'),
	(12,'Dark God\'s Power','50% boost to Atk Power of Dark Types');

/*!40000 ALTER TABLE `leader_skills` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `statuses`;

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `unit_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit_point` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `recovery` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;

INSERT INTO `statuses` (`id`, `unit_id`, `unit_type`, `hit_point`, `attack`, `defense`, `recovery`)
VALUES
	(1,1,'Base',1030,500,410,320),
	(2,1,'Lord',1948,700,574,448),
	(3,1,'Anima',2031,700,574,426),
	(4,1,'Breaker',1948,721,547,448),
	(5,1,'Guardian',1948,677,595,448),
	(6,1,'Oracle',1872,700,574,470),
	(7,2,'Base',1484,630,517,404),
	(8,2,'Lord',2517,917,806,620),
	(9,2,'Anima',2820,917,806,620),
	(10,2,'Breaker',2517,987,720,702),
	(11,2,'Guardian',2517,843,885,702),
	(12,2,'Oracle',2221,917,806,768),
	(13,3,'Base',1995,826,725,632),
	(14,3,'Lord',3201,1130,1113,845),
	(15,3,'Anima',3608,1130,1113,723),
	(16,3,'Breaker',3201,1226,885,845),
	(17,3,'Guardian',3201,987,1111,845),
	(18,3,'Oracle',2764,1130,1113,960),
	(19,4,'Base',2466,946,841,718),
	(20,4,'Lord',3917,1364,1230,1082),
	(21,4,'Anima',4534,1364,1230,911),
	(22,4,'Breaker',3917,1532,1068,1082),
	(23,4,'Guardian',3917,1202,1384,1082),
	(24,4,'Oracle',3679,1364,1230,1321),
	(25,5,'Base',1000,490,360,420),
	(26,5,'Lord',1830,706,468,693),
	(27,5,'Anima',1916,706,468,671),
	(28,5,'Breaker',1830,731,452,693),
	(29,5,'Guardian',1830,682,487,693),
	(30,5,'Oracle',1748,706,468,716),
	(31,7,'Base',1928,826,661,743),
	(32,7,'Lord',3055,1170,901,1195),
	(33,7,'Anima',3504,1170,901,1079),
	(34,7,'Breaker',3055,1346,826,1195),
	(35,7,'Guardian',3055,1052,1024,1195),
	(36,7,'Oracle',2612,1170,901,1306),
	(37,8,'Base',2342,994,766,1016),
	(38,8,'Lord',3815,1355,1127,1461),
	(39,8,'Anima',4396,1355,1127,1179),
	(40,8,'Breaker',4396,1355,1127,1179),
	(41,8,'Guardian',3815,1199,1290,1461),
	(42,8,'Oracle',3574,1355,1127,1713),
	(43,9,'Base',1010,500,500,150),
	(44,9,'Lord',1876,720,700,248),
	(45,9,'Anima',1963,720,700,231),
	(46,9,'Breaker',1876,743,711,248),
	(47,9,'Guardian',1876,704,723,248),
	(48,9,'Oracle',1794,720,700,266),
	(49,10,'Base',1419,648,630,223),
	(50,10,'Lord',2500,924,938,454),
	(51,10,'Anima',2806,924,938,378),
	(52,10,'Breaker',2500,1001,860,454),
	(53,10,'Guardian',2500,840,1012,454),
	(54,10,'Oracle',2209,924,938,530),
	(55,11,'Base',1980,832,844,410),
	(56,11,'Lord',3173,1188,1162,612),
	(57,11,'Anima',3594,1188,1162,489),
	(58,11,'Breaker',3173,1308,1045,612),
	(59,11,'Guardian',3173,1065,1281,612),
	(60,11,'Oracle',2727,1188,1162,729),
	(61,12,'Base',2442,1010,987,522),
	(62,12,'Lord',3894,1373,1378,805),
	(63,12,'Anima',4476,1373,1378,652),
	(64,12,'Breaker',3894,1525,1219,805),
	(65,12,'Guardian',3894,1223,1538,805),
	(66,12,'Oracle',3301,1373,1378,960),
	(67,13,'Base',1180,580,320,120),
	(68,13,'Lord',2070,811,420,210),
	(69,13,'Anima',2151,811,420,187),
	(70,13,'Breaker',2070,839,398,210),
	(71,13,'Guardian',2070,811,443,210),
	(72,13,'Oracle',1992,811,420,234),
	(73,14,'Base',1593,731,378,189),
	(74,14,'Lord',2749,1007,687,426),
	(75,14,'Anima',3053,1007,687,350),
	(76,14,'Breaker',2749,1085,615,426),
	(77,14,'Guardian',2749,930,765,426),
	(78,14,'Oracle',2453,1007,687,504),
	(79,15,'Base',2205,906,618,384),
	(80,15,'Lord',3509,1294,838,565),
	(81,15,'Anima',3950,1294,838,452),
	(82,15,'Breaker',3509,1417,733,565),
	(83,15,'Guardian',3509,1184,951,565),
	(84,15,'Oracle',3335,1294,838,756),
	(85,16,'Base',2728,1100,712,480),
	(86,16,'Lord',4233,1460,1006,770),
	(87,16,'Anima',4812,1460,1006,611),
	(88,16,'Breaker',4233,1618,849,770),
	(89,16,'Guardian',4233,1296,1160,770),
	(90,16,'Oracle',3624,1460,1006,937),
	(91,17,'Base',970,500,500,500),
	(92,17,'Lord',1852,700,700,700),
	(93,17,'Anima',2081,700,700,640),
	(94,17,'Breaker',1852,755,642,700),
	(95,17,'Guardian',1852,642,758,700),
	(96,17,'Oracle',1639,700,700,759),
	(97,18,'Base',1397,630,630,630),
	(98,18,'Lord',2397,910,910,910),
	(99,18,'Anima',2675,910,910,828),
	(100,18,'Breaker',2397,987,827,910),
	(101,18,'Guardian',2397,834,998,910),
	(102,18,'Oracle',2105,910,910,983),
	(103,19,'Base',1887,819,819,819),
	(104,19,'Lord',3014,1104,1104,1104),
	(105,19,'Anima',3453,1104,1104,983),
	(106,19,'Breaker',3014,1217,989,1104),
	(107,19,'Guardian',3014,988,1227,1104),
	(108,19,'Oracle',2591,1104,1104,1211),
	(109,20,'Base',2307,939,939,939),
	(110,20,'Lord',3730,1325,1325,1325),
	(111,20,'Anima',4314,1325,1325,1146),
	(112,20,'Breaker',3730,1488,1176,1325),
	(113,20,'Guardian',3730,1178,1497,1325),
	(114,20,'Oracle',3142,1325,1325,1485),
	(115,21,'Base',1500,430,530,120),
	(116,21,'Lord',2775,602,795,216),
	(117,21,'Anima',2992,602,795,155),
	(118,21,'Breaker',2775,662,739,216),
	(119,21,'Guardian',2775,543,858,216),
	(120,21,'Oracle',2690,602,795,302),
	(121,22,'Base',2228,542,715,195),
	(122,22,'Lord',3245,826,956,422),
	(123,22,'Anima',3533,826,956,339),
	(124,22,'Breaker',3245,894,879,422),
	(125,22,'Guardian',3245,746,1045,422),
	(126,22,'Oracle',3129,826,956,539),
	(127,23,'Base',2651,743,860,381),
	(128,23,'Lord',3979,995,1190,572),
	(129,23,'Anima',4439,995,1190,453),
	(130,23,'Breaker',3979,1118,1067,572),
	(131,23,'Guardian',3979,882,1304,572),
	(132,23,'Oracle',3545,995,1190,747),
	(133,24,'Base',3127,845,1011,487),
	(134,24,'Lord',4875,1198,1400,755),
	(135,24,'Anima',5457,1198,1400,597),
	(136,24,'Breaker',4875,1358,1240,755),
	(137,24,'Guardian',4875,1042,1557,755),
	(138,24,'Oracle',4649,1198,1400,989);

/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table unit_leader_skills
# ------------------------------------------------------------

DROP TABLE IF EXISTS `unit_leader_skills`;

CREATE TABLE `unit_leader_skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `leader_skill_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `unit_leader_skills` WRITE;
/*!40000 ALTER TABLE `unit_leader_skills` DISABLE KEYS */;

INSERT INTO `unit_leader_skills` (`id`, `unit_id`, `leader_skill_id`)
VALUES
	(1,1,1),
	(2,2,1),
	(3,3,2),
	(4,4,2),
	(5,5,3),
	(6,6,3),
	(7,7,4),
	(8,8,4),
	(9,9,5),
	(10,10,5),
	(11,11,6),
	(12,12,6),
	(13,13,7),
	(14,14,7),
	(15,15,8),
	(16,16,8),
	(17,17,9),
	(18,18,9),
	(19,19,10),
	(20,20,10),
	(21,21,11),
	(22,22,11),
	(23,23,12),
	(24,24,12);

/*!40000 ALTER TABLE `unit_leader_skills` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table units
# ------------------------------------------------------------

DROP TABLE IF EXISTS `units`;

CREATE TABLE `units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_level` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `hit_count` int(11) DEFAULT NULL,
  `brave_burst_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Offense',
  `brave_burst_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brave_burst_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `super_brave_burst_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `super_brave_burst_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;

INSERT INTO `units` (`id`, `number`, `star`, `element`, `name`, `max_level`, `cost`, `hit_count`, `brave_burst_type`, `brave_burst_title`, `brave_burst_details`, `super_brave_burst_title`, `super_brave_burst_details`, `biography`)
VALUES
	(1,1,2,'fire','Fencer Vargas',12,2,3,'Offense','Flare Ride','5 combo Fire elemental attack on all enemies',NULL,NULL,'A swordsman from the ruined Agni Empire, he later became one of the Six Heroes. Proud of his late father, a Knight in the Order of Agni, he trained in the long sword, becoming a formidable knight. Although he is well-known for his countless victories over other warriors, he still considers himself inexperienced and continues to train with great zeal.'),
	(2,2,3,'fire','Burning Vargas',40,4,3,'Offense','Flare Ride Plus','5 combo Fire elemental attack on all enemies',NULL,NULL,'A swordsman from the ruined Agni Empire, he later became one of the Six Heroes. Vargas achieved strength through countless battles, eventually joining the Order of Agni like his father before him. Soon after, however, he was defeated by a swordswoman of the Order of Lava. Ashamed, he then left to train again and intensify his technique.'),
	(3,3,4,'fire','Fire King Vargas',60,8,NULL,'Offense','Infinity Burst','6 combo Fire elemental power attack on all enemies',NULL,NULL,'A swordsman from the ruined Agni Empire, he later became one of the Six Heroes. Through harsh training, he mastered the use of a fire-encased long sword to make himself an even match to Lava, the swordswoman he once lost to. He\'s since become a drifter, not returning to the Order of Agni, but he still remains a legend.'),
	(4,4,5,'fire','Fire God Vargas',80,10,NULL,'Offense','Infinity Nova','6 combo Fire elemental power attack on all enemies',NULL,NULL,'A swordsman from the ruined Agni Empire. As the battle with the gods began, he was at the front, cutting them down. His presence encouraged those terrified by the gods\' strength, giving the humans a chance to counterattack. Continuing to lead the attack, Vargas, the savior of many, was counted as one of the Six Heroes and was feared by even the gods.'),
	(5,5,2,'water','Selena',12,2,NULL,'Offense','Estreal Blade','4 combo Water elemental attack on all enemies',NULL,NULL,'A swordswoman from the ruined Sama Kingdom, she later became one of the Six Heroes. Born from a line of chiefs of the wandering sea people of Savat, she was raised in traditional long sword techniques. She stood out so much that she was offered the treasured sword Lexida as proof of her chiefdom at age 14. She refused it at the time, claiming she was inexperienced.'),
	(6,6,3,'water','Ice Selena',40,4,NULL,'Offense','Divine Hale','5 combo Water elemental attack on all enemies',NULL,NULL,'A swordswoman from the ruined Sama Kingdom, she later became one of the Six Heroes. At 18, she folded to the pressure around her and took up the treasured sword Lexida as proof of her chiefdom. She had always rejected the sword, but it was a good fit for her quick and ice cold style. Those who faced her are said to have felt a freezing cold before battle.'),
	(7,7,4,'water','Ice Queen Selena',60,8,NULL,'Offense','Blizzard Pain','7 combo Water elemental power attack on all enemies',NULL,NULL,'A swordswoman from the ruined Sama Kingdom, she later became one of the Six Heroes. During a civil war in the Sama Kingdom, she aided the king and as chief of the Savat people, led them to many military victories. The king granted her the title Gilles De Lava, meaning savior of the kingdom. The Savat were pleased, but it\'s rumored she was always looking for a reason to quit.'),
	(8,8,5,'water','Ice God Selena',80,10,NULL,'Offense','Cocytus Zero','8 combo Water elemental power attack on all enemies',NULL,NULL,'A swordswoman from the ruined Sama Kingdom. She is the savior of her kingdom, and one of the six heroes. During the great war she refused Sama Kingdom\'s call and led the Savat people to save the masses. Her sword, Lexida, showed its true power in response to her skill, cutting down the gods with a cold pale blue strike. She gave the people courage and terrified the gods.'),
	(9,9,2,'earth','Pikeman Lance',12,2,NULL,'Offense','Flash Gale','4 combo Earth elemental attack on all enemies',NULL,NULL,'A pikeman from the ruined Principality of Vriksha, he eventually became one of the Six Heroes. He was a quiet, noble boy, but one day he saw the Demon Pike Drevas, lying in a storehouse on his estate. Suddenly, he informed his family he was leaving to train. His parents strongly opposed, but in the end he ran away, Drevas in hand. Rumors are that the spear spoke to him.'),
	(10,10,3,'earth','Vine Pike Lance',40,4,NULL,'Offense','Flash Tornado','5 combo Earth elemental attack on all enemies',NULL,NULL,'A pikeman from the ruined Principality of Vriksha, he later became one of the Six Heroes. Those who faced Lance during his training not only saw the power of Drevas, but were also in awe of his superior technique. Seeing such beautiful technique from such an inexperienced pikeman made him seem almost genius, but he hated being referred to in this way.'),
	(11,11,4,'earth','Earth Pike Lance',60,8,NULL,'Offense','Mystral Rage','5 combo Earth elemental power attack on all enemies',NULL,NULL,'A pikeman from the ruined Principality of Vriksha, wielder of the Demon Pike, Drevas. Later, he became one of the Six Heroes. During his travels, he managed to free the sealed away World Tree Altro. Though unconfirmed, it is said that freeing Altro was his objective from the very beginning.'),
	(12,12,5,'earth','Nature God Lance',80,10,NULL,'Offense','Eternal Zephyr','6 combo Earth elemental power attack on all enemies',NULL,NULL,'A pikeman from the ruined Principality of Vriksha, and one of the six heroes. After releasing the World Tree he wasn\'t seen until the battle with the gods began. His Demon Pike Drevas had awoken, and its blade now carried the strength of the World Tree. He took on the gods with his own might, refusing to align himself with any military entity.'),
	(13,13,2,'thunder','Warrior Eze',12,2,NULL,'Offense','Thunder Expulsion','2 combo Thunder elemental attack on all enemies',NULL,NULL,'A warrior from the ruined Atharva Republic, he later became one of the Six Heroes. Raised in an old mine, he worked from the time he was a child. At one point he grew tired and left to become a demon bounty hunter. His swordsmanship was tempered through his mine work, and he could obliterate a normal demon in one blow. He spoke rough, but was polite to women.'),
	(14,14,3,'thunder','Thunder Eze',40,4,NULL,'Offense','Thunder Execution','2 combo Thunder elemental attack on all enemies',NULL,NULL,'A warrior from the ruined Atharva Republic, he later became one of the Six Heroes. He trained hard until he developed the confidence to defeat large demons on his own. However, when he saw Princess Emilia fighting a demon, he realized how inexperienced he really was. After that, Eze sought out fights with other masters, hoping to unlock his own hidden powers.'),
	(15,15,4,'thunder','Thunder King Eze',60,8,NULL,'Offense','Thunder Retribution','5 combo Thunder elemental power attack on all enemies',NULL,NULL,'A warrior from the ruined Atharva Republic, he later became one of the Six Heroes. While training, he found the Thunder Sword Batootha among the treasure he received when he defeated Behemoth. It held the power of lighting, bringing Eze\'s skill to a whole new level. He could tear through armor like paper, and people call him the Thunder King. They still talk of his bravery.'),
	(16,16,5,'thunder','Thunder God Eze',80,10,NULL,'Offense','Heavenly Thunder','7 combo Thunder elemental power attack on all enemies',NULL,NULL,'A warrior from the ruined Atharva Republic. One of the six heroes and said to have fought the gods wielding Thunder Sword Batootha, during the great war with the gods he decimated his enemies with elusive speed and devistating thunder blows despite the ridiculous odds he was up against. The epic tale of him saving Goddess Emilia is still held as a timeless tale.'),
	(17,17,2,'light','Squire Atro',12,2,NULL,'Offense','Divine Sword','2 combo Light elemental attack on all enemies',NULL,NULL,'A swordsman from the ruined La Veda Republic, he later became one of the Six Heroes. Raised as an orphan in a monastery, he originally wanted to become a monk. However one day, bandits attacked the monastery. After Atro repelled them with just a tree branch, the Friar recommended he seek a Vedan fencing expert. Atro followed the Friar\'s words and began his journey.'),
	(18,18,3,'light','Knight Atro',40,4,NULL,'Offense','Cardinal Judgement','3 combo Light elemental attack on all enemies',NULL,NULL,'A swordsman from the ruined La Veda Republic, later he became one of the Six Heroes. As advised by the Friar that raised him, Atro trained with a fencing master, quickly becoming a gifted swordsman. His technique was keen, and he had integrity thanks to his monastery childhood. He earned the title of \"Sword Saint.\" Unaware of this, he continued to train daily.'),
	(19,19,4,'light','Holy Knight Atro',60,8,NULL,'Offense','Thousand Nemesis','4 combo Light elemental attack on all enemies',NULL,NULL,'A swordsman from the ruined La Veda Republic, he later became one of the Six Heroes. He received the never before drawn legendary Light Sword Urias from its holy resting place, becoming a master swordsman in name and deed. Urias, tempered by the gods, was extremely powerful. It\'s said that Atro never drew it in fights with swordsmen who sought fame.'),
	(20,20,5,'light','God Atro',80,10,NULL,'Offense','Messiah Hazzard','5 combo Light elemental power attack on all enemies',NULL,NULL,'A swordsman from the ruined La Veda Republic. One of the Six Heroes, he faced the great battle with the gods wielding the Light Sword Urias. He struggled with whether or not to fight the gods, but finally decided to when they destroyed the monastery he grew up in. He cut down the gods in a rage, breaking with his former reputation as a graceful master swordsman.'),
	(21,21,2,'dark','Iron Magress',12,2,NULL,'Offense','Guilty Ash','3 combo Dark elemental attack on all enemies',NULL,NULL,'A knight from the utterly devastated Bariura Empire, he later became one of the Six Heroes. As a cavalry leader\'s son, from childhood he knew of the empire\'s wish of unifying the continent. He joined the cavalry at 16 intent on gaining the skills necessary to defeat anything that stood in his way. His talent grew quickly and he was soon considered for promotion.'),
	(22,22,3,'dark','Heavy Magress',40,4,NULL,'Offense','Gravity Eclipse','4 combo Dark elemental attack on all enemies',NULL,NULL,'A knight from the utterly devastated Bariura Empire, he later became one of the Six Heroes. Rumor was he\'d be the next cavalry leader, but when he lost to his father, he left his family and the empire. He trained hard, using his anger to hone his skills. He was even able to pierce heavy armor. Rumors of him reached the capital and angered the knights whom he abandoned.'),
	(23,23,4,'dark','Black Magress',60,8,NULL,'Offense','Void Pillar','4 combo Dark elemental power attack on all enemies',NULL,NULL,'A former knight from the utterly devastated Bariura Empire, he later became one of the Six Heroes. He was the strongest in Bariura, but while he was gone, his parents were murdered. Enraged, he went on to mercilessly kill the knights he thought to be responsible. The image of him fighting encouraged the people and frightened the knights.'),
	(24,24,5,'dark','Death Magress',80,10,NULL,'Offense','Vermillion Tower','6 combo Dark elemental power attack on all enemies',NULL,NULL,'A former knight from the utterly devastated Bariura Empire, he wielded a giant lance as one of the Six Heroes. He headed to the capital once he found out who had killed his parents in fear of his power. However, the war with the gods soon began. He killed countless gods on his way to face the emperor, earning him even more praise. It is, however, yet unknown as to whether or not he got his revenge.');

/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
