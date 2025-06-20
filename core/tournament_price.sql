SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tournament_priceテーブルの作成
DROP TABLE IF EXISTS tournament_price;

CREATE TABLE tournament_price (
    tournament_no INT NOT NULL,
    price_type VARCHAR(20) NOT NULL COMMENT 'entry, reentry, addon',
    unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    price INT DEFAULT NULL,
    stack INT DEFAULT NULL,
    remark VARCHAR(20) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (tournament_no, price_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
