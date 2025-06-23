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
  enabled           TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
  created_at        DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  updated_at        DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
  PRIMARY KEY (room_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='店舗ルームマスタ';
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(1,'アキバギルド',1,305,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(2,'イケブクロギルド',1,306,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(3,'カジクエ',1,307,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(4,'GGPL新宿',1,308,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(5,'GGPL渋谷',1,309,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(6,'GGPL名古屋',1,310,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(7,'GGPL梅田',1,311,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(8,'KKLP渋谷',1,312,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(9,'KKLP新宿',1,313,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(10,'赤坂デポ',1,314,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(11,'CLT',1,315,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(12,'ナゴヤギルド',1,316,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(13,'金沢ポーカーSPARKL',1,317,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(14,'ネコカジ秋葉原',1,318,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(15,'ガットショット上野池之端',1,319,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(16,'大塚 RABBIT GIRL''S',1,320,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(17,'BACKDOOR六本木',1,321,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(18,'ENPOKER町田',1,322,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(19,'BUBBLE赤坂',1,323,1,1,1);
INSERT INTO room(room_no,room_name,order_no,service_tag_no,has_license_fuei,has_license_yukyo,is_partner) VALUES(20,'化猫ポーカー倶楽部',1,324,1,1,1);

/* ---------- 外部キー制約を再有効化 ---------- */
SET FOREIGN_KEY_CHECKS = 1;

COMMIT;