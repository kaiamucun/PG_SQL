SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_category_photoテーブルの作成
DROP TABLE IF EXISTS owner_category_photo;

CREATE TABLE owner_category_photo (
    owner_no INT NOT NULL,
    category_no INT NOT NULL,
    order_no INT NOT NULL,
    img_no INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, category_no, order_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
