SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- admin_userテーブルの作成
DROP TABLE IF EXISTS admin_user;

CREATE TABLE admin_user (
    user_id VARCHAR(20) NOT NULL COMMENT 'Operator decided',
    password VARCHAR(191) DEFAULT NULL COMMENT '非可逆暗号文字列',
    user_name VARCHAR(20) DEFAULT NULL COMMENT 'for display',
    ua VARCHAR(191) DEFAULT NULL COMMENT 'user agent, hints',
    login_dt DATETIME(3) DEFAULT NULL COMMENT 'ログイン日時',
    access_dt DATETIME(3) DEFAULT NULL COMMENT '最終アクセス日時',
    access_org_no INT DEFAULT NULL COMMENT '最終アクセス組織',
    announce_check_dt DATETIME DEFAULT NULL COMMENT '未読件数の表示用',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- 既存のmasterユーザー
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, announce_check_dt) VALUES ('master', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'master', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 1, '2025-05-27 09:08:35');

-- ROOM操作ができるadminユーザー3名を追加
-- パスワードは全て 'password123' をSHA256ハッシュ化した値: ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f

-- 1. room_admin_01 - ROOM管理者1
INSERT INTO admin_user (user_id,password,user_name,ua,login_dt,access_dt,access_org_no,enabled,created_at,updated_at
) VALUES (
    'room_admin_01',
    'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', -- SHA256('password123')
    'ROOM管理者01',
    '',
    '2025-06-19 01:35:03.872',
    '2025-06-19 03:27:07.503',
    20,
    1,
    NOW(),
    NOW()
);

-- 2. room_admin_02 - ROOM管理者2
INSERT INTO admin_user (user_id,password,user_name,ua,login_dt,access_dt,access_org_no,enabled,created_at,updated_at) VALUES (
    'room_admin_02',
    'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', -- SHA256('password123')
    'ROOM管理者02',
    '',
    '2025-06-19 01:35:03.872',
    '2025-06-19 03:27:07.503',
    20,
    1,
    NOW(),
    NOW()
);

-- 3. room_admin_03 - ROOM管理者3
INSERT INTO admin_user (user_id,password,user_name,ua,login_dt,access_dt,access_org_no,enabled,created_at,updated_at) VALUES (
    'room_admin_03',    
    'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', -- SHA256('password123')
    'ROOM管理者03',
    '',
    '2025-06-19 01:35:03.872',
    '2025-06-19 03:27:07.503',
    18,
    1,
    NOW(),
    NOW()
);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;