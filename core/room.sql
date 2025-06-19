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
  PRIMARY KEY (room_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店舗ルームマスタ';

/* ---------- データ再投入（room_name の余計な空白なし） ---------- */
INSERT INTO room
  (room_no, room_name, order_no, service_tag_no,
   has_license_fuei, has_license_yukyo, is_partner)
VALUES
  (1,'アキバギルド',1,305,1,1,0),
  (2,'イケブクロギルド',1,306,1,1,0),
  (3,'カジクエ',1,307,1,1,0),
  (4,'GGPL新宿',1,308,1,1,0),
  (5,'GGPL渋谷',1,309,1,1,0),
  (6,'GGPL名古屋',1,310,1,1,0),
  (7,'GGPL梅田',1,311,1,1,0),
  (8,'KKLP渋谷',1,312,1,1,0),
  (9,'KKLP新宿',1,313,1,1,0),
  (10,'赤坂デポ',1,314,1,1,0),
  (11,'CLT',1,315,1,1,0),
  (12,'ナゴヤギルド',1,316,1,1,0),
  (13,'池袋リレイズ',1,317,1,1,0),
  (14,'ネコカジ秋葉原',1,318,1,1,0),
  (15,'ガットショット上野池之端',1,319,1,1,0),
  (16,'RIC GAMES SHINJUKU',1,320,1,1,0),
  (17,'ネコカジ新宿',1,321,1,1,0),
  (18,'横浜eight',1,322,1,1,0),
  (19,'BUBBLE 恵比寿',1,323,1,1,0),
  (20,'化猫ポーカー倶楽部',1,324,1,1,0);

/* ---------- 外部キー制約を元に戻す ---------- */
SET FOREIGN_KEY_CHECKS = 1;

/* ---------- コミット ---------- */
COMMIT;