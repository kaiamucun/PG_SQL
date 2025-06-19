SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- room_pickup_itemテーブルの作成
DROP TABLE IF EXISTS room_pickup_item;

CREATE TABLE room_pickup_item (
    room_no INT NOT NULL,
    pickup_item_no INT NOT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (room_no, pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE INDEX idx_room_pickup_item_room_id ON room_pickup_item(room_no);
CREATE INDEX idx_room_pickup_item_pickup_item_id ON room_pickup_item(pickup_item_no); 