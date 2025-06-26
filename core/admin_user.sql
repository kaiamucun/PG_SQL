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

-- 各roomごとのadmin管理者ユーザー（room_admin_01～20）を追加
-- パスワードは全て 'password123' をSHA256ハッシュ化した値: ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f

INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_01', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者01(AG)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 2, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_02', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者02(IG)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 3, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_03', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者03(QC)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 4, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_04', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者04(GGSJ)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 5, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_05', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者05(GGSB)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 6, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_06', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者06(GGNG)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 7, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_07', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者07(GGOS)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 8, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_08', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者08(KKSB)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 9, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_09', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者09(KKSJ)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 10, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_10', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者10(SAP)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 11, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_11', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者11(CLT)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 12, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_12', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者12(NG)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 13, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_13', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者13(Rela)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 14, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_14', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者14(NCA)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 15, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_15', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者15(Gut)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 16, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_16', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者16(RGS)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 17, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_17', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者17(NCS)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 18, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_18', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者18(8YH)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 19, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_19', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者19(BBEB)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 20, 1, NOW(), NOW());
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('room_admin_20', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'ROOM管理者20(BKNK)', '', '2025-06-19 01:35:03.872', '2025-06-19 03:27:07.503', 21, 1, NOW(), NOW());

-- EVENT管理用adminユーザーを追加
-- パスワードは 'password123' をSHA256ハッシュ化した値: ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f
INSERT INTO admin_user (user_id, password, user_name, ua, login_dt, access_dt, access_org_no, enabled, created_at, updated_at) VALUES ('event_admin', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', 'EVENT管理者', '', '2025-06-25 01:35:03.872', '2025-06-25 03:27:07.503', 22, 1, NOW(), NOW());




COMMIT;

SET FOREIGN_KEY_CHECKS = 1;