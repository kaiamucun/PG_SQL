SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tournament_priceテーブルの作成
DROP TABLE IF EXISTS tournament_price;

CREATE TABLE tournament_price (
    tournament_no INT NOT NULL,
    price_type VARCHAR(20) NOT NULL COMMENT 'entry, reentry, addon, jopt_entry',
    unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    price INT DEFAULT NULL,
    stack INT DEFAULT NULL,
    remark VARCHAR(30) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (tournament_no, price_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- Tournament 1-15: メイントーナメント(詳細構造)
-- Tournament 1: 昼ポーカー 2.5K / JOPT 120K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(1,'entry','JPY',2500,15000,'昼ポーカー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(1,'reentry','JPY',2500,15000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(1,'addon','JPY',2000,12000,'アドオン',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(1,'jopt_entry','JPY',120000,50000,'JOPTチケットでの参加も可能',1);

-- Tournament 2: 夜ポーカー 3K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(2,'entry','JPY',3000,20000,'夜ポーカー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(2,'reentry','JPY',3000,20000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(2,'addon','JPY',2500,15000,'アドオン',1);

-- Tournament 3: 深夜ポーカー 4K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(3,'entry','JPY',4000,25000,'深夜ポーカー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(3,'reentry','JPY',4000,25000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(3,'addon','JPY',3000,20000,'アドオン',1);

-- Tournament 4: 週末スペシャル 5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(4,'entry','JPY',5000,30000,'週末スペシャル',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(4,'reentry','JPY',5000,30000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(4,'addon','JPY',4000,25000,'アドオン',1);

-- Tournament 5: ディープスタック 6K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(5,'entry','JPY',6000,40000,'ディープスタック',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(5,'reentry','JPY',6000,40000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(5,'addon','JPY',5000,30000,'アドオン',1);

-- Tournament 6: ターボ 1K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(6,'entry','JPY',1000,10000,'ターボ',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(6,'reentry','JPY',1000,10000,'リエントリー',1);

-- Tournament 7: フリーズアウト 3.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(7,'entry','JPY',3500,25000,'フリーズアウト',1);

-- Tournament 8: Double Stack 4.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(8,'entry','JPY',4500,50000,'ダブルスタック',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(8,'reentry','JPY',4500,50000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(8,'addon','JPY',3500,40000,'アドオン',1);

-- Tournament 9: Super Turbo 800
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(9,'entry','JPY',800,8000,'スーパーターボ',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(9,'reentry','JPY',800,8000,'リエントリー',1);

-- Tournament 10: Hyper Turbo 600
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(10,'entry','JPY',600,6000,'ハイパーターボ',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(10,'reentry','JPY',600,6000,'リエントリー',1);

-- Tournament 11: Sunday Special 7K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(11,'entry','JPY',7000,50000,'サンデースペシャル',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(11,'reentry','JPY',7000,50000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(11,'addon','JPY',5000,35000,'アドオン',1);

-- Tournament 12: Knockout 2.8K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(12,'entry','JPY',2800,15000,'ノックアウト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(12,'reentry','JPY',2800,15000,'リエントリー',1);

-- Tournament 13: Progressive KO 3.2K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(13,'entry','JPY',3200,18000,'プログレッシブKO',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(13,'reentry','JPY',3200,18000,'リエントリー',1);

-- Tournament 14: Satellite 1.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(14,'entry','JPY',1500,12000,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(14,'reentry','JPY',1500,12000,'リエントリー',1);

-- Tournament 15: Mystery Bounty 3.8K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(15,'entry','JPY',3800,22000,'ミステリーバウンティ',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(15,'reentry','JPY',3800,22000,'リエントリー',1);

-- Tournament 16-18: 早朝・モーニング系
-- Tournament 16: 早朝ポーカー 1.2K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(16,'entry','JPY',1200,10000,'早朝ポーカー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(16,'reentry','JPY',1200,10000,'リエントリー',1);

-- Tournament 17: Morning Glory 2K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(17,'entry','JPY',2000,15000,'モーニンググローリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(17,'reentry','JPY',2000,15000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(17,'addon','JPY',1500,10000,'アドオン',1);

-- Tournament 18: Morning Breaker 1.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(18,'entry','JPY',1500,12000,'モーニングブレイカー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(18,'reentry','JPY',1500,12000,'リエントリー',1);

-- Tournament 19-20: 深夜高額系
-- Tournament 19: High Roller Midnight 10K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(19,'entry','JPY',10000,60000,'ハイローラー深夜',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(19,'reentry','JPY',10000,60000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(19,'addon','JPY',8000,50000,'アドオン',1);

-- Tournament 20: Super High Roller 15K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(20,'entry','JPY',15000,80000,'スーパーハイローラー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(20,'reentry','JPY',15000,80000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(20,'addon','JPY',12000,60000,'アドオン',1);

-- Tournament 21: CLT Evening Tournament 2.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(21,'entry','JPY',2500,15000,'CLT Evening Tournament',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(21,'reentry','JPY',2500,15000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(21,'addon','JPY',2000,12000,'アドオン',1);

-- Tournament 22: Milky Way tournament 2K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(22,'entry','JPY',2000,12000,'Milky Way tournament',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(22,'reentry','JPY',2000,12000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(22,'addon','JPY',1500,10000,'アドオン',1);

-- Tournament 23: フリーロール 1K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(23,'entry','JPY',1000,8000,'フリーロール',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(23,'reentry','JPY',1000,8000,'リエントリー',1);

-- Tournament 24: 夜のトーナメント『夜ぽ』 3K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(24,'entry','JPY',3000,20000,'夜のトーナメント『夜ぽ』',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(24,'reentry','JPY',3000,20000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(24,'addon','JPY',2500,15000,'アドオン',1);

-- Tournament 25: SPARKL DAILY TOURNAMENT 3.3K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(25,'entry','JPY',3300,22000,'SPARKL DAILY TOURNAMENT',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(25,'reentry','JPY',3300,22000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(25,'addon','JPY',2500,18000,'アドオン',1);

-- Tournament 26: SPARKL DAILY TOURNAMENT 2.2K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(26,'entry','JPY',2200,15000,'SPARKL DAILY TOURNAMENT',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(26,'reentry','JPY',2200,15000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(26,'addon','JPY',1800,12000,'アドオン',1);

-- Tournament 27: MILLION CHALLENGE DEEP 3K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(27,'entry','JPY',3000,20000,'MILLION CHALLENGE DEEP',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(27,'reentry','JPY',3000,20000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(27,'addon','JPY',2500,15000,'アドオン',1);

-- Tournament 28: 選べるマルチサテライト 4K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(28,'entry','JPY',4000,25000,'選べるマルチサテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(28,'reentry','JPY',4000,25000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(28,'addon','JPY',3000,20000,'アドオン',1);

-- Tournament 29: お昼のトーナメント 2K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(29,'entry','JPY',2000,15000,'お昼のトーナメント',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(29,'reentry','JPY',2000,15000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(29,'addon','JPY',1500,12000,'アドオン',1);

-- Tournament 30: 6Kプライズマッチ 6K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(30,'entry','JPY',6000,40000,'6Kプライズマッチ',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(30,'reentry','JPY',6000,40000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(30,'addon','JPY',5000,30000,'アドオン',1);

-- Tournament 31: ラビガチップマッチ 3K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(31,'entry','JPY',3000,20000,'ラビガチップマッチ',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(31,'reentry','JPY',3000,20000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(31,'addon','JPY',2500,15000,'アドオン',1);

-- Tournament 32: ラビガマッチターボ 2K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(32,'entry','JPY',2000,12000,'ラビガマッチターボ',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(32,'reentry','JPY',2000,12000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(32,'addon','JPY',1500,10000,'アドオン',1);

-- Tournament 33: フリーロール【BACKDOOR】
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(33,'entry','JPY',0,5000,'フリーロール【BACKDOOR】',1);

-- Tournament 34: 酒トナメ×ABPT大枠 3.3K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(34,'entry','JPY',3300,22000,'酒トナメ×ABPT大枠',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(34,'reentry','JPY',3300,22000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(34,'addon','JPY',2500,18000,'アドオン',1);

-- Tournament 35: START UP POKER 1.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(35,'entry','JPY',1500,12000,'START UP POKER',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(35,'reentry','JPY',1500,12000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(35,'addon','JPY',1200,10000,'アドオン',1);

-- Tournament 36: Daily POKERWEBCOINトーナメント 5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(36,'entry','JPY',5000,30000,'Daily POKERWEBCOINトーナメント',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(36,'reentry','JPY',5000,30000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(36,'addon','JPY',4000,25000,'アドオン',1);

-- Tournament 37: フリーロール【GRAND OPEN】
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(37,'entry','JPY',0,5000,'フリーロール【GRAND OPEN】',1);

-- Tournament 38: タッグ戦【GRAND OPEN】 13K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(38,'entry','JPY',13000,70000,'タッグ戦【GRAND OPEN】',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(38,'reentry','JPY',13000,70000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(38,'addon','JPY',10000,50000,'アドオン',1);

-- Tournament 39: プライズマッチ【化猫月間】 8.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(39,'entry','JPY',8500,50000,'プライズマッチ【化猫月間】',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(39,'reentry','JPY',8500,50000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(39,'addon','JPY',7000,40000,'アドオン',1);

-- Tournament 40: 終電まで【化猫月間】 8.5K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(40,'entry','JPY',8500,50000,'終電まで【化猫月間】',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(40,'reentry','JPY',8500,50000,'リエントリー',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(40,'addon','JPY',7000,40000,'アドオン',1);

-- Tournament 41-44: JOPT Day1A-D 120K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(41,'entry','JPY',120000,50000,'JOPTチケットでの参加も可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(41,'reentry','JPY',120000,50000,'同一Day1で3回までリエントリー可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(42,'entry','JPY',120000,50000,'JOPTチケットでの参加も可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(42,'reentry','JPY',120000,50000,'同一Day1で3回までリエントリー可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(43,'entry','JPY',120000,50000,'JOPTチケットでの参加も可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(43,'reentry','JPY',120000,50000,'同一Day1で3回までリエントリー可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(44,'entry','JPY',120000,50000,'JOPTチケットでの参加も可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(44,'reentry','JPY',120000,50000,'同一Day1で3回までリエントリー可能',1);

-- Tournament 47: 12K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(47,'entry','JPY',12000,30000,'',1);

-- Tournament 48-50: JOPT Side Event 40K
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(48,'entry','JPY',40000,30000,'JOPTチケットでの参加も可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(48,'reentry','JPY',40000,30000,'同一Day1で3回までリエントリー可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(49,'entry','JPY',40000,30000,'JOPTチケットでの参加も可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(49,'reentry','JPY',40000,30000,'同一Day1で3回までリエントリー可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(50,'entry','JPY',40000,30000,'JOPTチケットでの参加も可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(50,'reentry','JPY',40000,30000,'同一Day1で3回までリエントリー可能',1);

-- Tournament 52-100: Various tournaments
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(52,'entry','JPY',50000,300,'',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(53,'entry','JPY',10000,10000,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(54,'entry','JPY',10000,10000,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(55,'entry','JPY',8000,10000,'サテライト',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(56,'entry','JPY',80000,50000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(57,'entry','JPY',15000,30000,'',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(58,'entry','JPY',50000,50000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(58,'reentry','JPY',50000,50000,'同一Day1で3回までリエントリー可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(59,'entry','JPY',50000,50000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(59,'reentry','JPY',50000,50000,'同一Day1で3回までリエントリー可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(61,'entry','JPY',50000,50000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(62,'entry','JPY',20000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(63,'entry','JPY',20000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(64,'entry','JPY',15000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(65,'entry','JPY',12000,20000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(66,'entry','JPY',15000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(67,'entry','JPY',10000,15000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(68,'entry','JPY',12000,30000,'',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(69,'entry','JPY',10000,10000,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(70,'entry','JPY',20000,40000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(71,'entry','JPY',30000,40000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(72,'entry','JPY',10000,10000,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(73,'entry','JPY',100000,50000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(74,'entry','JPY',15000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(75,'entry','JPY',10000,10000,'サテライト',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(76,'entry','JPY',40000,40000,'リエントリー可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(76,'reentry','JPY',40000,40000,'リエントリー時にチーム組替可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(77,'entry','JPY',30000,30000,'',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(78,'entry','JPY',30000,30000,'リエントリー可能',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(78,'reentry','JPY',30000,30000,'リエントリー時にチーム組替可能',1);

INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(79,'entry','JPY',20000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(80,'entry','JPY',15000,40000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(81,'entry','JPY',15000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(82,'entry','JPY',10000,15000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(83,'entry','JPY',10000,10000,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(84,'entry','JPY',20000,40000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(85,'entry','JPY',30000,40000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(86,'entry','JPY',50000,20000,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(87,'entry','JPY',500000,100000,'ドリンク飲み放題',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(88,'entry','JPY',15000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(89,'entry','JPY',50000,50000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(90,'entry','JPY',30000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(91,'entry','JPY',100000,50000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(92,'entry','JPY',20000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(93,'entry','JPY',30000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(94,'entry','JPY',3000,0,'サテライト',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(95,'entry','JPY',0,20000,'Flipout Satelliteから通過',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(96,'entry','JPY',25000,40000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(97,'entry','JPY',12000,20000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(98,'entry','JPY',20000,30000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(99,'entry','JPY',10000,15000,'',1);
INSERT INTO tournament_price(tournament_no,price_type,unit,price,stack,remark,enabled) VALUES(100,'entry','JPY',15000,10000,'サテライト',1);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
