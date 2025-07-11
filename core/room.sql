/* ---------- 文字コード設定 ---------- */
SET NAMES utf8mb4;

/* ---------- トランザクション開始 ---------- */
START TRANSACTION;

/* ---------- 外部キー制約を一時的に無効化 ---------- */
SET FOREIGN_KEY_CHECKS = 0;

/* ---------- 既存テーブルを削除 ---------- */
DROP TABLE IF EXISTS room;

/* ---------- テーブル再作成 ---------- */
CREATE TABLE room (
  room_no           INT AUTO_INCREMENT COMMENT '[auto increment]',
  room_name         VARCHAR(60) DEFAULT NULL COMMENT 'ルーム名',
  order_no          INT DEFAULT NULL COMMENT '並び順',
  service_tag_no    INT DEFAULT 0 COMMENT '一覧のサービスタグ / 非表示:0 (default)',
  has_license_fuei  TINYINT DEFAULT NULL COMMENT '風営法５号',
  has_license_yukyo TINYINT DEFAULT NULL COMMENT '特定遊興',
  is_partner        TINYINT DEFAULT NULL COMMENT '提携店舗フラグ',
  access            VARCHAR(50) DEFAULT NULL COMMENT '行き方',
  enabled           TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
  created_at        DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  updated_at        DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (room_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店舗ルームマスタ';
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(1,'アキバギルド',1,305,1,1,1,'秋葉原駅徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(2,'イケブクロギルド',1,306,1,1,1,'池袋駅徒歩4分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(3,'カジクエ',1,307,1,1,1,'秋葉原駅徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(4,'GGPL新宿',1,308,1,1,1,'西武新宿駅徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(5,'GGPL渋谷',1,309,1,1,1,'渋谷駅ハチ公口徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(6,'GGPL名古屋',1,310,1,1,1,'栄駅徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(7,'GGPL梅田',1,311,1,1,1,'大阪駅徒歩8分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(8,'KKLP渋谷',1,312,1,1,1,'渋谷駅徒歩4分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(9,'KKLP新宿',1,313,1,1,1,'新宿駅東口徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(10,'赤坂デポ',1,314,1,1,1,'赤坂見附駅徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(11,'CLT',1,315,1,1,1,'西武新宿駅徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(12,'ナゴヤギルド',1,316,1,1,1,'名駅西口徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(13,'金沢ポーカーSPARKL',1,317,1,1,1,'北鉄バス 片町駅（パシオン前）徒歩30秒');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(14,'ネコカジ秋葉原',1,318,1,1,1,'秋葉原駅電気街口徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(15,'ガットショット上野池之端',1,319,1,1,1,'京成上野駅徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(16,'大塚 RABBIT GIRLS',1,320,1,1,1,'大塚駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(17,'BACKDOOR六本木',1,321,1,1,1,'六本木交差点から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(18,'ENPOKER町田',1,322,1,1,1,'町田駅徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(19,'BUBBLE赤坂',1,323,1,1,1,'赤坂見附駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(20,'化猫ポーカー倶楽部',1,324,1,1,1,'新橋駅徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(21,'【五反田】Queen Pocket',1,325,1,1,1,'JR五反田駅東口から徒歩4分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(22,'【新宿】ALL IN POKER CLUB',1,326,1,1,1,'西武新宿駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(23,'【飯田橋】BIG BOSS JAPAN',1,327,1,1,1,'JR・東京メトロ飯田橋駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(24,'Amusement Shisha＆Poker Bar PukuPuku 新橋',1,328,1,1,1,'JR・メトロ新橋駅西口から徒歩すぐ');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(25,'ASOBIBAR Lecoeur 赤羽店',1,329,1,1,1,'JR赤羽駅南改札東口から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(26,'BACKDOOR GINZA',1,330,1,1,1,'銀座駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(27,'BACKDOOR KICHIJOJI',1,331,1,1,1,'JR・京王井の頭線吉祥寺駅南口から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(28,'BACKDOOR SHIMOKITA',1,332,1,1,1,'小田急・京王井の頭線下北沢駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(29,'BACKDOOR 宇都宮',1,333,1,1,1,'東武宇都宮駅 徒歩4分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(30,'BACKDOOR 浅草橋',1,334,1,1,1,'JR総武線浅草橋駅A3出口から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(31,'BACKDOOR宇都宮東',1,335,1,1,1,'宇都宮駅から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(32,'BACKDOOR十三',1,336,1,1,1,'十三駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(33,'BARRLE AKASAKA',1,337,1,1,1,'赤坂駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(34,'BARRLE IKEBUKURO',1,338,1,1,1,'池袋駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(35,'BARRLE LasVegas',1,339,1,1,1,'新宿駅 徒歩7分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(36,'BARRLE NEST 高田馬場',1,340,1,1,1,'高田馬場駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(37,'BLOW 渋谷',1,341,1,1,1,'渋谷駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(38,'BUBBLE 恵比寿店',1,342,1,1,1,'恵比寿駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(39,'BUBBLE六本木',1,343,1,1,1,'六本木駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(40,'casa 上野店',1,344,1,1,1,'上野駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(41,'casa 大宮',1,345,1,1,1,'JR大宮駅東口から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(42,'Casino Lounge Egg',1,346,1,1,1,'中目黒駅から徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(43,'Casino THE CLASS',1,347,1,1,1,'品川駅港南口より徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(44,'DDPT/PMJ',1,348,1,1,1,'JR高田馬場駅早稲田口から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(45,'DOUBLE BELLY BUSTER',1,349,1,1,1,'大門駅A３出口より徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(46,'EGP EBISU',1,350,1,1,1,'恵比寿駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(47,'Family Pot YOKOHAMA',1,351,1,1,1,'関内駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(48,'FELLOWS',1,352,1,1,1,'新橋駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(49,'GoodGame & Bluff',1,353,1,1,1,'なんば駅 徒歩4分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(50,'Gutshot',1,354,1,1,1,'上野御徒町駅A4出口より徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(51,'JAPAN OPEN POKER TOUR',1,355,1,1,1,'市ヶ谷駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(52,'JERRYS POKER',1,356,1,1,1,'梅田駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(53,'KAMATA BACKDOOR',1,357,1,1,1,'JR蒲田駅東口から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(54,'KK UNIVERSE',1,358,1,1,1,'梅田駅 徒歩7分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(55,'Luck Spider 六本木',1,359,1,1,1,'六本木駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(56,'MUSASHI POKER ROOM',1,360,1,1,1,'渋谷駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(57,'Nuts&Star 蒲田',1,361,1,1,1,'蒲田駅 徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(58,'POKER JUNKIE ROPPONGI',1,362,1,1,1,'六本木駅 徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(59,'poker room GRAVITY',1,363,1,1,1,'阿佐ヶ谷駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(60,'PokerLeague五反田',1,364,1,1,1,'五反田駅徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(61,'PokerRoom P3',1,365,1,1,1,'代官山駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(62,'Pool&Darts STELLA',1,366,1,1,1,'恵比寿駅西口から徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(63,'RALLYs CASINO',1,367,1,1,1,'中目黒駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(64,'ResPo',1,368,1,1,1,'下北沢駅南西口から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(65,'RIC GAMES SHINJUKU',1,369,1,1,1,'新宿三丁目駅から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(66,'starry eye',1,370,1,1,1,'恵比寿駅西口から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(67,'Tha Bullets',1,371,1,1,1,'高田馬場駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(68,'THE CROWN',1,372,1,1,1,'恵比寿駅東口から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(69,'Tsudanuma Poker House POM',1,373,1,1,1,'JR津田沼駅から徒歩1分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(70,'WARUPURU',1,374,1,1,1,'恵比寿駅西口から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(71,'ZEAL8池袋',1,375,1,1,1,'池袋駅東口から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(72,'ポーカースポットMy room 小田原店',1,376,1,1,1,'JR小田原駅から徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(73,'ポーカースポットMy room 新横浜店',1,377,1,1,1,'JR新横浜駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(74,'ポーカースポットMy room 大和店',1,378,1,1,1,'小田急・相鉄大和駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(75,'ポーカースポットMy room 町田店',1,379,1,1,1,'JR町田駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(76,'ライブエース横浜→横浜駅西口',1,380,1,1,1,'横浜駅西口から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(77,'我龍ポーカースタジアム BIG BOSS国分寺店',1,381,1,1,1,'JR国分寺駅南口から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(78,'葛西カジノバーH3AL',1,382,1,1,1,'東京メトロ東西線葛西駅から徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(79,'銀座パラハ倶楽部',1,383,1,1,1,'銀座駅から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(80,'渋谷 SOS POKER',1,384,1,1,1,'渋谷駅ハチ公口から徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(81,'新橋 ナインスリー',1,385,1,1,1,'新橋駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(82,'新宿ネオパラハ',1,386,1,1,1,'新宿駅東口から徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(83,'池袋 ベガス',1,387,1,1,1,'池袋駅東口から徒歩3分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(84,'中野TRIGGER',1,388,1,1,1,'JR中野駅北口から徒歩5分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(85,'猫遊技場',1,389,1,1,1,'恵比寿駅から徒歩7分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(86,'明大前EDGE',1,390,1,1,1,'京王・小田急明大前駅から徒歩2分');
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner,access) VALUES(87,'六本木 ナインスリー',1,391,1,1,1,'六本木駅から徒歩2分');

/* ---------- 外部キー制約を再有効化 ---------- */
SET FOREIGN_KEY_CHECKS = 1;

COMMIT;