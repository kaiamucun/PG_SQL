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

INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('master', 1, 1023);

-- 各roomごとの管理者を作成（org_no 2-88に対応）
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_01', 2, 122);   -- AG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_02', 3, 122);   -- IG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_03', 4, 122);   -- QC
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_04', 5, 122);   -- GGSJ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_05', 6, 122);   -- GGSB
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_06', 7, 122);   -- GGNG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_07', 8, 122);   -- GGOS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_08', 9, 122);   -- KKSB
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_09', 10, 122);  -- KKSJ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_10', 11, 122);  -- SAP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_11', 12, 122);  -- CLT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_12', 13, 122);  -- NG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_13', 14, 122);  -- KZSP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_14', 15, 122);  -- NCA
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_15', 16, 122);  -- GUT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_16', 17, 122);  -- RGS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_17', 18, 122);  -- BDRP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_18', 19, 122);  -- ENMC
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_19', 20, 122);  -- BBAK
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_20', 21, 122);  -- BKNP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_21', 22, 122);  -- QPKT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_22', 23, 122);  -- AIPC
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_23', 24, 122);  -- BBJA
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_24', 25, 122);  -- PUKU
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_25', 26, 122);  -- LECO
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_26', 27, 122);  -- BDGZ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_27', 28, 122);  -- BDKJ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_28', 29, 122);  -- BDSK
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_29', 30, 122);  -- BDUT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_30', 31, 122);  -- BDAS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_31', 32, 122);  -- BDUE
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_32', 33, 122);  -- BDJS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_33', 34, 122);  -- BRAK
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_34', 35, 122);  -- BRIK
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_35', 36, 122);  -- BRLV
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_36', 37, 122);  -- BRNT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_37', 38, 122);  -- BLOW
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_38', 39, 122);  -- BBEB
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_39', 40, 122);  -- BBRP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_40', 41, 122);  -- CASU
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_41', 42, 122);  -- CASO
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_42', 43, 122);  -- CAGE
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_43', 44, 122);  -- CTCL
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_44', 45, 122);  -- DDPT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_45', 46, 122);  -- DBBR
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_46', 47, 122);  -- EGPE
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_47', 48, 122);  -- FAMY
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_48', 49, 122);  -- FELL
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_49', 50, 122);  -- GGBF
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_50', 51, 122);  -- GUTS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_51', 52, 122);  -- JOPT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_52', 53, 122);  -- JERR
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_53', 54, 122);  -- KABD
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_54', 55, 122);  -- KKUV
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_55', 56, 122);  -- LUCK
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_56', 57, 122);  -- MUSH
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_57', 58, 122);  -- NUTS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_58', 59, 122);  -- PJRP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_59', 60, 122);  -- GRVY
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_60', 61, 122);  -- PLGT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_61', 62, 122);  -- PRP3
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_62', 63, 122);  -- PDST
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_63', 64, 122);  -- RALY
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_64', 65, 122);  -- RESP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_65', 66, 122);  -- RIGS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_66', 67, 122);  -- STAR
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_67', 68, 122);  -- BULL
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_68', 69, 122);  -- CROW
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_69', 70, 122);  -- TPOM
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_70', 71, 122);  -- WARU
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_71', 72, 122);  -- ZEAL
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_72', 73, 122);  -- PSOD
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_73', 74, 122);  -- PSSY
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_74', 75, 122);  -- PSYM
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_75', 76, 122);  -- PSMC
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_76', 77, 122);  -- LACE
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_77', 78, 122);  -- GRYU
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_78', 79, 122);  -- H3AL
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_79', 80, 122);  -- GNZP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_80', 81, 122);  -- SOSS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_81', 82, 122);  -- SB93
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_82', 83, 122);  -- SJNP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_83', 84, 122);  -- IBVG
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_84', 85, 122);  -- NKTR
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_85', 86, 122);  -- NEKO
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_86', 87, 122);  -- MDED
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('room_admin_87', 88, 122);  -- RP93

-- 各brandごとの管理者を作成（org_no 89-109に対応）
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_01', 89, 122);   -- JOPT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_02', 90, 122);   -- U30
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_03', 91, 122);   -- USTD
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_04', 92, 122);   -- MSTS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_05', 93, 122);   -- SPL
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_06', 94, 122);   -- SGKT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_07', 95, 122);   -- SBPF
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_08', 96, 122);   -- SJPF
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_09', 97, 122);   -- TOPC
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_10', 98, 122);   -- HKRR
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_11', 99, 122);   -- XPT
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_12', 100, 122);  -- FRKZ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_13', 101, 122);  -- MJSN
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_14', 102, 122);  -- JPF
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_15', 103, 122);  -- POIS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_16', 104, 122);  -- AJPC
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_17', 105, 122);  -- WSOP
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_18', 106, 122);  -- OST
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_19', 107, 122);  -- GOLD
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_20', 108, 122);  -- NPS
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('brand_admin_21', 109, 122);  -- WSP

-- EVENT管理者はorg_no=1（全体組織）に対して適切な権限を持つ
INSERT INTO admin_user_org (user_id, org_no, permission_bit_flag) VALUES ('event_admin', 1, 1023);  -- EVENT管理権限

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 