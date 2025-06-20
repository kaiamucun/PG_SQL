SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- room_pickupテーブルの作成（データなし＝当日の直近トーナメント）
DROP TABLE IF EXISTS room_pickup;

CREATE TABLE room_pickup (
    room_no INT NOT NULL,
    display_no INT NOT NULL COMMENT '表示番号(1, 2)',
    pickup_item_no INT DEFAULT NULL COMMENT '(pickup_item_no = 0) = データなし',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (room_no, display_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(1,1,1);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(1,2,3);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(2,3,9);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(2,4,11);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(3,5,17);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(3,6,19);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(4,7,25);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(4,8,27);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(5,9,33);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(5,10,35);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(6,11,41);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(6,12,43);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(7,13,49);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(7,14,51);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(8,15,57);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(8,16,59);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(9,17,65);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(9,18,67);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(10,19,73);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(10,20,75);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(11,21,81);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(11,22,83);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(12,23,89);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(12,24,91);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(13,25,97);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(13,26,99);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(14,27,105);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(14,28,107);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(15,29,113);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(15,30,115);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(16,31,121);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(16,32,123);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(17,33,129);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(17,34,131);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(18,35,137);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(18,36,139);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(19,37,145);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(19,38,147);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(20,39,153);
INSERT INTO room_pickup(room_no,display_no,pickup_item_no) VALUES(20,40,155);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 