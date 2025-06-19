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
    PRIMARY KEY (org_no, action_type, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE INDEX idx_admin_org_action_org_id ON admin_org_action(org_no);
CREATE INDEX idx_admin_org_action_action_type ON admin_org_action(action_type);
CREATE INDEX idx_admin_org_action_seq ON admin_org_action(seq);
CREATE INDEX idx_admin_org_action_user_id ON admin_org_action(user_id); 