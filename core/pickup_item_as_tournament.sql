SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- pickup_item_as_tournamentテーブルの作成
DROP TABLE IF EXISTS pickup_item_as_tournament;

CREATE TABLE pickup_item_as_tournament (
    pickup_item_no INT NOT NULL,
    tournament_name VARCHAR(60) DEFAULT NULL,
    start_dt DATETIME DEFAULT NULL,
    late_dt DATETIME DEFAULT NULL,
    entry_price INT DEFAULT NULL COMMENT 'エントリー費用',
    entry_price_unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 