SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- admin_announceテーブルの作成
DROP TABLE IF EXISTS admin_announce;

CREATE TABLE admin_announce (
    announce_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    publish_dt DATETIME DEFAULT NULL COMMENT '公開日時',
    announce_text TEXT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (announce_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
