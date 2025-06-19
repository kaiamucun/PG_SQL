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

INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(1,'03-6206-8948','東京都千代田区外神田1-11-6 小暮ビル4F7,35.6994575,139.7710186,'JR秋葉原駅から徒歩3分、末広町駅から徒歩5分',6);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(2,'03-6912-7815','東京都豊島区東池袋1丁目22-5 サンケエビルB17,35.7284,139.7152,'池袋駅から徒歩4分、東池袋駅から徒歩6分',7);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(3,'03-5244-4193','東京都千代田区外神田3-14-9 第26東ビル7F7,35.701008,139.771273,'JR秋葉原駅から徒歩5分、東京メトロ末広町駅より徒歩2分',5);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(4,'03-6233-8879','東京都新宿区歌舞伎町1-25-3 西武新宿駅前ビルWAMALL 3F7,35.692865,139.70303,'西武新宿駅より徒歩1分、JR新宿駅東口より徒歩5分',8);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(5,'03-6427-8010','東京都渋谷区宇田川町12-9 JouleShibuya 10F7,35.6615385,139.6981893,'渋谷駅ハチ公口から徒歩約5分',9);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(6,'052-253-9721','愛知県名古屋市中区栄3丁目9-2 GEMS栄6階7,35.1595,136.9066,'名古屋市営地下鉄栄駅より徒歩5分',8);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(7,'06-6809-2388','大阪府大阪市北区太融寺町8-17 プラザ梅田ビル5F7,34.7024,135.5023,'JR大阪駅より徒歩8分、地下鉄梅田駅より徒歩5分',6);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(8,'03-6452-5290','東京都渋谷区宇田川町12-7 エメラルドビル6F7,35.661562,139.697939,'渋谷駅から徒歩4分',8);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(9,'03-4363-3620','東京都新宿区歌舞伎町1-23-15 SUZUYAビル3F7,35.693968,139.700955,'JR新宿駅東口より徒歩3分、西武新宿駅より徒歩2分',9);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(10,'080-7180-9888','東京都港区赤坂3-10-4 月世界ビル4F BaneBAGUS赤坂見附店内7,35.6738,139.737,'赤坂見附駅から徒歩1分、赤坂駅から徒歩5分',4);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(11,'03-6205-6155','東京都新宿区歌舞伎町1-23-15 SUZUYAビル9F7,35.693968,139.700955,'西武新宿駅より徒歩約2分、JR新宿駅東口より徒歩約4分',8);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(12,'052-452-5778','愛知県名古屋市中村区椿町14-6 11CUBESビル6F7,35.1706,136.8816,'名駅西口から徒歩1分',7);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(13,'050-3590-6011','東京都豊島区東池袋1-7-7 鳥駒総本店ビル3F7,35.7284,139.7152,'池袋駅東口から徒歩2分',5);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(14,'03-3526-2282','東京都千代田区外神田1-15-18 奥山ビル4F7,35.6977,139.7716,'秋葉原駅電気街口より徒歩1分',8);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(15,'03-5826-4246','東京都台東区上野2-11-20 タンポポビル2F7,35.7089,139.774,'京成上野駅より徒歩3分、JR上野駅より徒歩5分',7);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(16,'03-6380-3666','東京都新宿区歌舞伎町2-38-3 Stella.K 2F7,35.6939,139.7009,'新宿駅より徒歩6分、西武新宿駅より徒歩3分',7);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(17,'03-6228-0366','東京都新宿区歌舞伎町1-22-9 Jゴールドビル6F7,35.6939,139.7009,'西武新宿駅より徒歩1分、JR新宿駅より徒歩4分',7);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(18,'045-900-4087','神奈川県横浜市中区伊勢佐木町2丁目10-4 第三泰信ビル 1F7,35.4437,139.638,'関内駅より徒歩5分',8);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(19,'03-6459-3286','東京都渋谷区恵比寿1-10-7 TIB恵比寿 7F7,35.6466,139.7102,'恵比寿駅から徒歩30秒',8);
INSERT INTO owner_as_info(owner_no,tel,address,lat,lon,access,table_count) VALUES(20,'03-6205-7622','東京都港区新橋3丁目7-3 新橋フォディアビルB1F7,35.6654,139.7585,'新橋駅より徒歩5分、内幸町駅より徒歩5分',8);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE INDEX idx_owner_as_info_owner_id ON owner_as_info(owner_id);
CREATE INDEX idx_owner_as_info_info_type ON owner_as_info(info_type);
CREATE INDEX idx_owner_as_info_is_public ON owner_as_info(is_public);
CREATE INDEX idx_owner_as_info_display_order ON owner_as_info(display_order); 