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

-- 各roomごとの管理者を作成（org_no 2-21に対応）
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_01', 2, 122);   -- AG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_02', 3, 122);   -- IG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_03', 4, 122);  -- QC
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_04', 5, 122);  -- GGSJ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_05', 6, 122);   -- GGSB
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_06', 7, 122);   -- GGNG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_07', 8, 122);   -- GGOS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_08', 9, 122);   -- KKSB
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_09', 10, 122);  -- KKSJ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_10', 11, 122);  -- SAP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_11', 12, 122);  -- CLT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_12', 13, 122);  -- NG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_13', 14, 122);  -- Rela
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_14', 15, 122);  -- NCA
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_15', 16, 122);  -- Gut
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_16', 17, 122);  -- RGS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_17', 18, 122);  -- NCS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_18', 19, 122);  -- 8YH
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_19', 20, 122);  -- BBEB
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_20', 21, 122);  -- BKNK

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 