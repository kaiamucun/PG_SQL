SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_as_infoテーブルの作成
DROP TABLE IF EXISTS owner_as_info;

CREATE TABLE owner_as_info (
    owner_no INT NOT NULL,
    tel VARCHAR(20) DEFAULT NULL COMMENT '非表示：空文字',
    address VARCHAR(191) DEFAULT NULL,
    lat BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    lon BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    access VARCHAR(20) DEFAULT NULL COMMENT '行き方',
    table_count INT DEFAULT NULL,
    payment_method VARCHAR(191) DEFAULT NULL COMMENT '現金、クレカ、PokerWebCoin',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(1,'03-6206-8948','東京都千代田区外神田1-11-6 小暮ビル4F',35.6994575,139.7710186,'秋葉原駅徒歩3分',6,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(2,'03-6912-7815','東京都豊島区東池袋1丁目22-5 サンケエビルB1',35.7284,139.7152,'池袋駅徒歩4分',7,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(3,'03-5244-4193','東京都千代田区外神田3-14-9 第26東ビル7F',35.701008,139.771273,'秋葉原駅徒歩5分',5,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(4,'03-6233-8879','東京都新宿区歌舞伎町1-25-3 西武新宿駅前ビルWAMALL 3F',35.692865,139.70303,'西武新宿駅徒歩1分',8,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(5,'03-6427-8010','東京都渋谷区宇田川町12-9 JouleShibuya 10F',35.6615385,139.6981893,'渋谷駅ハチ公口徒歩5分',9,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(6,'052-253-9721','愛知県名古屋市中区栄3丁目9-2 GEMS栄6階',35.1595,136.9066,'栄駅徒歩5分',8,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(7,'06-6809-2388','大阪府大阪市北区太融寺町8-17 プラザ梅田ビル5F',34.7024,135.5023,'大阪駅徒歩8分',6,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(8,'03-6452-5290','東京都渋谷区宇田川町12-7 エメラルドビル6F',35.661562,139.697939,'渋谷駅徒歩4分',8,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(9,'03-4363-3620','東京都新宿区歌舞伎町1-23-15 SUZUYAビル3F',35.693968,139.700955,'新宿駅東口徒歩3分',9,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(10,'080-7180-9888','東京都港区赤坂3-10-4 月世界ビル4F BaneBAGUS赤坂見附店内',35.6738,139.737,'赤坂見附駅徒歩1分',4,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(11,'03-6205-6155','東京都新宿区歌舞伎町1-23-15 SUZUYAビル9F',35.693968,139.700955,'西武新宿駅徒歩2分',8,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(12,'052-452-5778','愛知県名古屋市中村区椿町14-6 11CUBESビル6F',35.1706,136.8816,'名駅西口徒歩1分',7,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(13,'050-3590-6011','東京都豊島区東池袋1-7-7 鳥駒総本店ビル3F',35.7284,139.7152,'池袋駅東口徒歩2分',5,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(14,'03-3526-2282','東京都千代田区外神田1-15-18 奥山ビル4F',35.6977,139.7716,'秋葉原駅電気街口徒歩1分',8,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(15,'03-5826-4246','東京都台東区上野2-11-20 タンポポビル2F',35.7089,139.774,'京成上野駅徒歩3分',7,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(16,'03-6380-3666','東京都新宿区歌舞伎町2-38-3 Stella.K 2F',35.6939,139.7009,'新宿駅徒歩6分',7,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(17,'03-6228-0366','東京都新宿区歌舞伎町1-22-9 Jゴールドビル6F',35.6939,139.7009,'西武新宿駅徒歩1分',7,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(18,'045-900-4087','神奈川県横浜市中区伊勢佐木町2丁目10-4 第三泰信ビル 1F',35.4437,139.638,'関内駅徒歩5分',8,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(19,'03-6459-3286','東京都渋谷区恵比寿1-10-7 TIB恵比寿 7F',35.6466,139.7102,'恵比寿駅徒歩30秒',8,'現金、クレカ、PokerWebCoin');
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count,payment_method) VALUES(20,'03-6205-7622','東京都港区新橋3丁目7-3 新橋フォディアビルB1F',35.6654,139.7585,'新橋駅徒歩5分',8,'現金、クレカ、PokerWebCoin');

SET FOREIGN_KEY_CHECKS = 1;

COMMIT;