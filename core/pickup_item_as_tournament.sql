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
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(2,'♠SPADIE『平日夜のトーナメント』【夜ポ】','2025-07-01 18:00:00','2025-07-01 20:40:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(9,'1000円昼ポーカー【リング/カジノプランの方はFREEROLL！】','2025-07-01 16:00:00','2025-07-01 17:00:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(10,'【19時20分までにエントリーで1000円割引】Ikebukuro Daily 4K','2025-07-01 18:00:00','2025-07-01 20:30:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(17,'【IV AKIHABARA ドリチケつき】Daily NLH 4K【♠︎SPADIE】','2025-07-01 18:00:00','2025-07-01 20:30:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(18,'【♠︎SPADIE】Daily Turbo 1K','2025-07-01 20:55:00','2025-07-01 22:00:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(25,'【SPADIE】Daily Deep Stacks 3K','2025-07-01 13:45:00','2025-07-01 16:45:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(26,'【SPADIE】Thursday Double Stack 3K','2025-07-01 17:45:00','2025-07-01 20:55:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(33,'Speed Racer 1K','2025-07-01 16:00:00','2025-07-01 17:00:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(34,'Daily NLH 2.5K','2025-07-01 18:00:00','2025-07-01 21:00:00',2500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(41,'Speed Racer 1k','2025-07-01 17:00:00','2025-07-01 18:10:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(42,'Great Deal','2025-07-01 19:00:00','2025-07-01 20:55:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(49,'UMEDA DEEP','2025-07-01 15:00:00','2025-07-01 18:35:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(50,'Osaka Classic','2025-07-01 19:00:00','2025-07-01 21:10:00',2000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(57,'KK Genesis 5K','2025-07-01 14:00:00','2025-07-01 17:40:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(58,'KK Night Stack 6K','2025-07-01 17:30:00','2025-07-01 20:50:00',6000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(65,'KK Daily Deep 3.5k RFID Edition','2025-07-01 14:00:00','2025-07-01 17:40:00',3500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(66,'KK Daily Main 4k','2025-07-01 18:15:00','2025-07-01 20:45:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(73,'AKASAKA160 【総額40万Coin 相当】','2025-07-01 22:00:00','2025-07-02 2:10:00',16000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(74,'AKASAKA330 【総額100万Coin 相当】','2025-07-01 22:00:00','2025-07-02 1:10:00',33000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(81,'【優勝15,000コイン！】CLT Evening Tournament 2.5k【SPADIE】','2025-07-01 15:10:00','2025-07-01 17:50:00',2500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(82,'Milky Way tournament【SPADIE】','2025-07-01 20:55:00','2025-07-01 22:00:00',2000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(89,'フリーロール','2025-07-01 16:15:00','2025-07-01 18:25:00',1000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(90,'夜のトーナメント『夜ぽ』','2025-07-01 19:00:00','2025-07-01 20:40:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(97,'SPARKL DAILY TOURNAMENT','2025-07-01 18:00:00','2025-07-01 20:50:00',3300,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(98,'SPARKL DAILY TOURNAMENT','2025-07-01 21:00:00','2025-07-01 23:00:00',2200,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(105,'MILLION CHALLENGE DEEP　NSバウチャー対象','2025-07-01 15:00:00','2025-07-01 17:30:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(106,'選べるマルチサテライト【NSバウチャー対象】','2025-07-01 18:00:00','2025-07-01 20:30:00',4000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(113,'【優勝１万マイル】お昼のトーナメント','2025-07-01 13:00:00','2025-07-01 17:20:00',2000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(114,'6Kプライズマッチ【SHINOBI】','2025-07-01 17:00:00','2025-07-01 21:00:00',6000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(121,'ラビガチップマッチ','2025-07-01 19:00:00','2025-07-01 21:00:00',3000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(122,'【1卓限定】ラビガマッチターボ','2025-07-01 21:00:00','2025-07-01 22:30:00',2000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(129,'【六本木】フリーロール【BACKDOOR】','2025-07-01 18:00:00','2025-07-01 19:00:00',0,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(130,'【クライナーアドオンあり】酒トナメｘABPT大枠【プライズ:ニッカフロンティア】','2025-07-01 19:30:00','2025-07-01 22:10:00',3300,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(137,'6月度 START UP POKER(~16:30〆)','2025-07-01 13:30:00','2025-07-01 16:30:00',1500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(138,'【80000保証】Daily POKERWEBCOINトーナメント(~20:30〆)','2025-07-01 18:00:00','2025-07-01 20:30:00',5000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(145,'✨GRAND OPEN✨フリーロール‼️⚡️5万相当⚡️16時までアドオン無料‼️レイト17時半‼️','2025-07-01 15:00:00','2025-07-01 17:30:00',0,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(146,'✨GRAND OPEN✨#6 タッグ戦‼️500,000相当✨18時まで早割‼️レイト21時半‼️','2025-07-01 17:00:00','2025-07-01 21:30:00',13000,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(153,'21万保証❣️プライズマッチ❤化猫月間P‼','2025-07-01 18:00:00','2025-07-01 21:50:00',8500,'円');
INSERT INTO pickup_item_as_tournament(pickup_item_no,tournament_name,start_dt,late_dt,entry_price,entry_price_unit) VALUES(154,'6.5万保証❣終電まで❤️化猫月間P!!','2025-07-01 21:00:00','2025-07-01 22:50:00',8500,'円');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 