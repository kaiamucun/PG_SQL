SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- admin_user_orgテーブルの作成
DROP TABLE IF EXISTS admin_user_org;

CREATE TABLE admin_user_org (
    user_id VARCHAR(20) NOT NULL,
    org_no INT NOT NULL,
    permission_bit_flag INT DEFAULT NULL COMMENT 'ENUM user, event, info, tournament, news',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (user_id, org_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('master', 1, 929);

INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) SELECT 'room_admin_01', org_no, 122 FROM org WHERE org_type = 'room' AND enabled = 1;

INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) SELECT 'room_admin_02', org_no, 122 FROM org WHERE org_type = 'room' AND enabled = 1;

INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) SELECT 'room_admin_03', org_no, 122 FROM org WHERE org_type = 'room' AND enabled = 1;

COMMIT;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 