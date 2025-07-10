SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS owner;

CREATE TABLE owner (
    owner_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    owner_type VARCHAR(20) DEFAULT NULL COMMENT 'room, event, media',
    ref_no INT DEFAULT NULL COMMENT 'room_no, event_no, media_no',
    lat BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    lon BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(1,'room',1,35699457,139771018);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(2,'room',2,35729510,139715600);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(3,'room',3,35701030,139771290);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(4,'room',4,35694630,139700630);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(5,'room',5,35661538,139698189);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(6,'room',6,35167430,136903870);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(7,'room',7,34701700,135502310);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(8,'room',8,35661562,139697939);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(9,'room',9,35693968,139700955);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(10,'room',10,35676060,139736800);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(11,'room',11,35693968,139700955);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(12,'room',12,35168752,136880589);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(13,'room',13,36558922,136651425);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(14,'room',14,35697771,139771579);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(15,'room',15,35709410,139771340);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(16,'room',16,35732110,139729460);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(17,'room',17,35662700,139735290);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(18,'room',18,35541410,139447170);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(19,'room',19,35676440,139735920);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(20,'room',20,35665670,139755080);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(21,'room',21,35626446,139723915);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(22,'room',22,35690921,139700258);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(23,'room',23,35702669,139744843);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(24,'room',24,35665498,139758877);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(25,'room',25,35777682,139720381);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(26,'room',26,35668686,139763585);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(27,'room',27,35703056,139579814);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(28,'room',28,35661777,139668006);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(29,'room',29,36560909,139883717);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(30,'room',30,35697778,139786667);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(31,'room',31,36560909,139883717);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(32,'room',32,34728169,135481842);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(33,'room',33,35670168,139737071);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(34,'room',34,35728926,139710388);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(35,'room',35,35694351,139703064);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(36,'room',36,35712785,139704946);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(37,'room',37,35661777,139700775);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(38,'room',38,35646774,139710388);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(39,'room',39,35662836,139731750);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(40,'room',40,35713056,139774167);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(41,'room',41,35906667,139623056);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(42,'room',42,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(43,'room',43,35628391,139740356);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(44,'room',44,35712785,139704946);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(45,'room',45,35655890,139753479);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(46,'room',46,35646774,139710388);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(47,'room',47,35444837,139640074);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(48,'room',48,35665498,139758877);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(49,'room',49,34669444,135501389);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(50,'room',50,35713056,139774167);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(51,'room',51,35700000,139730000);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(52,'room',52,34702778,135496389);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(53,'room',53,35562222,139715833);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(54,'room',54,34702778,135496389);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(55,'room',55,35662836,139731750);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(56,'room',56,35661777,139700775);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(57,'room',57,35562222,139715833);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(58,'room',58,35662836,139731750);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(59,'room',59,35705556,139635833);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(60,'room',60,35626446,139723915);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(61,'room',61,35649444,139698889);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(62,'room',62,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(63,'room',63,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(64,'room',64,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(65,'room',65,35690921,139700258);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(66,'room',66,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(67,'room',67,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(68,'room',68,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(69,'room',69,35691944,140018889);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(70,'room',70,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(71,'room',71,35728926,139710388);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(72,'room',72,35256944,139156389);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(73,'room',73,35508611,139617500);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(74,'room',74,35488056,139457222);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(75,'room',75,35546944,139446389);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(76,'room',76,35465833,139622222);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(77,'room',77,35676111,139480556);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(78,'room',78,35664722,139858889);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(79,'room',79,35668686,139763585);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(80,'room',80,35661777,139700775);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(81,'room',81,35665498,139758877);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(82,'room',82,35690921,139700258);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(83,'room',83,35728926,139710388);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(84,'room',84,35705556,139635833);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(85,'room',85,35658584,139745433);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(86,'room',86,35676944,139640556);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(87,'room',87,35662836,139731750);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(88,'event',1,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(89,'event',2,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(90,'event',3,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(91,'event',4,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(92,'event',5,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(93,'event',6,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(94,'event',7,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(95,'event',8,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(96,'event',9,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(97,'event',10,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(98,'event',11,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(99,'event',12,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(100,'event',13,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(101,'event',14,,);

COMMIT;