SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- room_pickupテーブルの作成（データなし＝当日の直近トーナメント）
DROP TABLE IF EXISTS room_pickup;

CREATE TABLE room_pickup (
    room_no INT NOT NULL,
    display_no INT NOT NULL COMMENT '表示番号(1, 2)',
    pickup_item_no INT DEFAULT NULL COMMENT '(pickup_item_no = 0) = データなし',
    PRIMARY KEY (room_no, display_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 