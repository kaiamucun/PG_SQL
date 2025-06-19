SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- room_book_pickup_itemテーブルの作成
DROP TABLE IF EXISTS room_book_pickup_item;

CREATE TABLE room_book_pickup_item (
    room_no INT NOT NULL,
    book_start_date DATE NOT NULL COMMENT '予約開始日：{YYYYMMDD}',
    display_no INT NOT NULL COMMENT '表示番号(1, 2)',
    book_end_date DATE DEFAULT NULL COMMENT '予約終了日：{YYYYMMDD}',
    pickup_item_no INT DEFAULT NULL COMMENT '(pickup_item_no = 0) = データなし',
    PRIMARY KEY (room_no, book_start_date, display_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 