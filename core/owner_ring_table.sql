SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_ring_tableテーブルの作成
DROP TABLE IF EXISTS owner_ring_table;

CREATE TABLE owner_ring_table (
    owner_no INT NOT NULL,
    table_no INT NOT NULL,
    game_tag_no INT DEFAULT NULL COMMENT 'NLH, PLO, MIX, etc..',
    small_blind INT DEFAULT NULL,
    big_blind INT DEFAULT NULL,
    giant_blind INT DEFAULT NULL,
    ante INT DEFAULT NULL,
    max_buyin INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, table_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
