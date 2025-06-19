SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- room_opening_hoursテーブルの作成
DROP TABLE IF EXISTS room_opening_hours;

CREATE TABLE room_opening_hours (
    room_no INT NOT NULL,
    dayofweek_no INT NOT NULL COMMENT '1=Mon,7=Sun,8=Pub',
    open_time TIME DEFAULT NULL COMMENT 'hh:mm (24h)',
    close_time TIME DEFAULT NULL COMMENT 'hh:mm (24h)',
    off TINYINT DEFAULT NULL COMMENT '0:営業日, 1:定休日',
    PRIMARY KEY (room_no, dayofweek_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 