SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_htmlテーブルの作成
DROP TABLE IF EXISTS owner_html;

CREATE TABLE owner_html (
    owner_no INT NOT NULL,
    section VARCHAR(10) NOT NULL COMMENT 'casino, intro, other',
    html_no INT DEFAULT NULL COMMENT 'from RFT（非表示：空文字）',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, section)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
