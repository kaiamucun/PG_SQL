SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_categoryテーブルの作成
DROP TABLE IF EXISTS owner_category;

CREATE TABLE owner_category (
    owner_no INT NOT NULL,
    category_no INT NOT NULL,
    order_no INT DEFAULT NULL,
    category_name VARCHAR(40) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, category_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;



COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
