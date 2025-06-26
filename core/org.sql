SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- orgテーブルの作成
DROP TABLE IF EXISTS org;

CREATE TABLE org (
    org_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    org_type VARCHAR(20) DEFAULT NULL COMMENT 'pg, brand, room, media',
    ref_no INT DEFAULT NULL COMMENT 'pg = 0, brand_no, room_no, media_no',
    org_prefix VARCHAR(4) DEFAULT NULL COMMENT 'prefix for userId',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (org_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (1 , 'pg'  ,  0 , 'pg');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (2 , 'room',  1 , 'AG');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (3 , 'room',  2 , 'IG');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (4 , 'room',  3 , 'QC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (5 , 'room',  4 , 'GGSJ');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (6 , 'room',  5 , 'GGSB');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (7 , 'room',  6 , 'GGNG');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (8 , 'room',  7 , 'GGOS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (9 , 'room',  8 , 'KKSB');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (10, 'room',  9 , 'KKSJ');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (11, 'room', 10 , 'SAP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (12, 'room', 11 , 'CLT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (13, 'room', 12 , 'NG');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (14, 'room', 13 , 'Rela');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (15, 'room', 14 , 'NCA');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (16, 'room', 15 , 'Gut');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (17, 'room', 16 , 'RGS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (18, 'room', 17 , 'NCS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (19, 'room', 18 , '8YH');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (20, 'room', 19 , 'BBEB');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (21, 'room', 20 , 'BKNK');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (22, 'brand', 1 , 'JOPT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (23, 'brand',  2 , 'U30');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (24, 'brand',  3 , 'USTD');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (25, 'brand',  4 , 'MSTS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (26, 'brand',  5 , 'SPL');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (27, 'brand',  6 , 'SGKT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (28, 'brand',  7 , 'SBPF');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (29, 'brand',  8 , 'SJPF');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (30, 'brand',  9 , 'TOPC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (31, 'brand', 10 , 'HKRR');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (32, 'brand', 11 , 'XPT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (33, 'brand', 12 , 'FRKZ');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (34, 'brand', 13 , 'MJSN');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (35, 'brand', 14 , 'JPF');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (36, 'brand', 15 , 'POIS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (37, 'brand', 16 , 'AJPC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (38, 'brand', 17 , 'WSOP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (39, 'brand', 18 , 'OST');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (40, 'brand', 19 , 'GOLD');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (41, 'brand', 20 , 'NPS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (42, 'brand', 21 , 'WSP');


COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
