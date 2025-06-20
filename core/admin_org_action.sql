SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- admin_org_actionテーブルの作成
DROP TABLE IF EXISTS admin_org_action;

CREATE TABLE admin_org_action (
    org_no INT NOT NULL,
    action_type VARCHAR(20) NOT NULL COMMENT 'for formatter selection',
    seq BIGINT NOT NULL COMMENT '連番',
    user_id VARCHAR(20) DEFAULT NULL,
    action_json TEXT DEFAULT NULL COMMENT 'json',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (org_no, action_type, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
