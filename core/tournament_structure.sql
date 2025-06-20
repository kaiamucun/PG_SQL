SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tournament_structureテーブルの作成
DROP TABLE IF EXISTS tournament_structure;

CREATE TABLE tournament_structure (
    tournament_no INT NOT NULL,
    seq INT NOT NULL,
    level INT DEFAULT NULL COMMENT '-1=Break',
    small_blind INT DEFAULT NULL,
    big_blind INT DEFAULT NULL,
    giant_blind INT DEFAULT NULL,
    ante INT DEFAULT NULL,
    blind_min INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (tournament_no, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;