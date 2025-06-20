SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- app_infoテーブルの作成
DROP TABLE IF EXISTS app_info;

CREATE TABLE app_info (
    info_key VARCHAR(40) NOT NULL COMMENT 'アプリ情報キー',
    info_value VARCHAR(191) DEFAULT NULL COMMENT 'アプリ情報値',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (info_key)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 