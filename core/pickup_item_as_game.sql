SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS pickup_item_as_game;

CREATE TABLE pickup_item_as_game (
    pickup_item_no INT NOT NULL,
    game_time TIME DEFAULT NULL COMMENT 'hh:mm (24h)',
    game_title VARCHAR(10) DEFAULT 'リングゲーム' COMMENT 'default = "リングゲーム"',
    game_price INT DEFAULT NULL COMMENT '宣伝用リング参加費',
    game_price_unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    game_player_count INT DEFAULT NULL COMMENT '手動更新（リング総人数）',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(5,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(6,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(7,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(8,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(13,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(14,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(15,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(16,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(21,'17:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(22,'17:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(23,'17:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(24,'17:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(29,'13:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(30,'13:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(31,'13:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(32,'13:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(37,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(38,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(39,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(40,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(45,'16:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(46,'16:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(47,'16:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(48,'16:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(53,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(54,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(55,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(56,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(61,'13:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(62,'13:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(63,'13:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(64,'13:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(69,'13:30:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(70,'13:30:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(71,'13:30:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(72,'13:30:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(77,'21:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(78,'21:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(79,'21:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(80,'21:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(85,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(86,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(87,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(88,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(93,'17:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(94,'17:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(95,'17:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(96,'17:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(101,'18:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(102,'18:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(103,'18:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(104,'18:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(109,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(110,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(111,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(112,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(117,'13:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(118,'13:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(119,'13:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(120,'13:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(125,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(126,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(127,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(128,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(133,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(134,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(135,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(136,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(141,'20:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(142,'20:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(143,'20:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(144,'20:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(149,'15:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(150,'15:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(151,'15:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(152,'15:00:00','ブラックジャック',2000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(157,'18:00:00','リングゲーム',3000,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(158,'18:00:00','ルーレット',1500,'円',10);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(159,'18:00:00','大富豪',1000,'円',8);
INSERT INTO pickup_item_as_game(pickup_item_no,game_time,game_title,game_price,game_price_unit,game_player_count) VALUES(160,'18:00:00','ブラックジャック',2000,'円',10);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;