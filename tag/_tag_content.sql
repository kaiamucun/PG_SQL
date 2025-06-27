SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tag_contentテーブルの作成
DROP TABLE IF EXISTS tag_content;

CREATE TABLE tag_content (
    search_type VARCHAR(20) NOT NULL COMMENT 'tournament, news',
    ref_no INT NOT NULL COMMENT '{search_type}_no',
    tag_no INT NOT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (search_type, ref_no, tag_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO tag_content (search_type, ref_no, tag_no, enabled, created_at, updated_at) VALUES

COMMIT;



SET FOREIGN_KEY_CHECKS = 1; 