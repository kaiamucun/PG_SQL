SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- admin_user_orgテーブルの作成
DROP TABLE IF EXISTS admin_user_org;

CREATE TABLE admin_user_org (
    user_id VARCHAR(20) NOT NULL,
    org_no INT NOT NULL,
    permission_bit_flag INT DEFAULT NULL COMMENT 'ENUM user, event, info, tournament, news',
    PRIMARY KEY (user_id, org_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('master', 1, 929);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 