SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS pickup_item_as_tournament;

CREATE TABLE pickup_item_as_tournament (
    pickup_item_no INT NOT NULL,
    tournament_name VARCHAR(60) DEFAULT NULL,
    start_dt DATETIME DEFAULT NULL,
    late_dt DATETIME DEFAULT NULL,
    entry_price INT DEFAULT NULL COMMENT 'エントリー費用',
    entry_price_unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(1,'♠SPADIE『昼下がりのポーカー』【昼ポ】','2025-07-01 15:15:00','2025-07-01 17:25:00',2500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(2,'HYPER TURBO','2025-07-01 21:00:00','2025-07-01 22:00:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(9,'【19時20分までにエントリーで1000円割引】Ikebukuro Daily 4K','2025-07-02 18:00:00','2025-07-02 20:30:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(10,'HYPER TURBO','2025-07-02 21:00:00','2025-07-02 22:00:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(17,'Daily NLH 3.5K','2025-07-03 18:00:00','2025-07-03 20:30:00',3500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(18,'Daily Turbo 1K','2025-07-03 20:55:00','2025-07-03 22:00:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(25,'Daily NLH 4K','2025-07-04 17:45:00','2025-07-04 22:55:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(26,'GG Hyper 2K','2025-07-04 20:55:00','2025-07-04 22:00:00',2000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(33,'Speed Racer 1K','2025-07-05 16:00:00','2025-07-05 17:10:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(34,'SHIBUYA SCRAMBLE','2025-07-05 18:00:00','2025-07-05 21:00:00',2500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(41,'Speed Racer 1K','2025-07-06 17:00:00','2025-07-06 18:10:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(42,'BIG Stack','2025-07-06 19:00:00','2025-07-06 20:55:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(49,'GGPL Daily Tournament','2025-07-07 18:00:00','2025-07-07 21:00:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(50,'OSAKA MEGAMAX','2025-07-07 13:00:00','2025-07-07 17:00:00',10000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(57,'KKLIVE DAILY','2025-07-08 19:00:00','2025-07-08 22:00:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(58,'KK KINGDOM SATELLITE','2025-07-08 15:00:00','2025-07-08 18:30:00',6000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(65,'KKLIVE DAILY','2025-07-09 18:30:00','2025-07-09 21:30:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(66,'KK ULTIMATE SATELLITE','2025-07-09 14:00:00','2025-07-09 17:30:00',7000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(73,'Weekday Tournament','2025-07-10 22:00:00','2025-07-11 04:00:00',10000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(74,'Weekend Special','2025-07-10 14:00:00','2025-07-10 17:30:00',15000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(81,'Daily Tournament','2025-07-11 18:00:00','2025-07-11 21:00:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(82,'CLT Championship Satellite','2025-07-11 13:00:00','2025-07-11 17:00:00',6000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(89,'SPADIE quotidienne','2025-07-12 19:00:00','2025-07-12 22:30:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(90,'ナゴヤ最強戦','2025-07-12 13:00:00','2025-07-12 17:30:00',10000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(97,'リレイズデイリー','2025-07-13 19:00:00','2025-07-13 22:00:00',3500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(98,'DEEP"RAISE"STACK','2025-07-13 15:00:00','2025-07-13 18:30:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(105,'ネコカジデイリー','2025-07-14 18:30:00','2025-07-14 21:30:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(106,'ネコカジトーナメント','2025-07-14 14:00:00','2025-07-14 17:30:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(113,'GUTSHOT DAILY TOURNAMENT','2025-07-15 19:00:00','2025-07-15 22:00:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(114,'GUTSHOT CHAMPIONSHIP','2025-07-15 13:00:00','2025-07-15 17:00:00',8000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(121,'RIC Daily Tournament','2025-07-16 18:00:00','2025-07-16 21:00:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(122,'RIC WEEKEND SPECIAL','2025-07-16 15:00:00','2025-07-16 18:00:00',6000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(129,'ネコカジデイリー','2025-07-17 19:00:00','2025-07-17 22:00:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(130,'週末ねこカップ','2025-07-17 14:00:00','2025-07-17 17:30:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(137,'EIGHT Daily','2025-07-18 18:30:00','2025-07-18 21:30:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(138,'EIGHT KINGDOM','2025-07-18 13:00:00','2025-07-18 17:00:00',7000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(145,'BUBBLE Nightly','2025-07-19 19:00:00','2025-07-19 22:00:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(146,'BUBBLE FESTA','2025-07-19 14:00:00','2025-07-19 18:00:00',10000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(153,'BAKENEKO NIGHT','2025-07-20 19:30:00','2025-07-20 22:30:00',3500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(154,'BAKENEKO WEEKEND','2025-07-20 15:00:00','2025-07-20 18:30:00',6000,'円');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 