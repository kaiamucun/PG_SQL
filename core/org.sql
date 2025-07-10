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
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (14, 'room', 13 , 'KZSP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (15, 'room', 14 , 'NCA');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (16, 'room', 15 , 'GUT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (17, 'room', 16 , 'RGS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (18, 'room', 17 , 'BDRP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (19, 'room', 18 , 'ENMC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (20, 'room', 19 , 'BBAK');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (21, 'room', 20 , 'BKNP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (22, 'room', 21 , 'QPKT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (23, 'room', 22 , 'AIPC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (24, 'room', 23 , 'BBJA');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (25, 'room', 24 , 'PUKU');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (26, 'room', 25 , 'LECO');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (27, 'room', 26 , 'BDGZ');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (28, 'room', 27 , 'BDKJ');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (29, 'room', 28 , 'BDSK');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (30, 'room', 29 , 'BDUT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (31, 'room', 30 , 'BDAS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (32, 'room', 31 , 'BDUE');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (33, 'room', 32 , 'BDJS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (34, 'room', 33 , 'BRAK');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (35, 'room', 34 , 'BRIK');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (36, 'room', 35 , 'BRLV');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (37, 'room', 36 , 'BRNT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (38, 'room', 37 , 'BLOW');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (39, 'room', 38 , 'BBEB');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (40, 'room', 39 , 'BBRP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (41, 'room', 40 , 'CASU');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (42, 'room', 41 , 'CASO');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (43, 'room', 42 , 'CAGE');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (44, 'room', 43 , 'CTCL');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (45, 'room', 44 , 'DDPT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (46, 'room', 45 , 'DBBR');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (47, 'room', 46 , 'EGPE');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (48, 'room', 47 , 'FAMY');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (49, 'room', 48 , 'FELL');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (50, 'room', 49 , 'GGBF');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (51, 'room', 50 , 'GUTS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (52, 'room', 51 , 'JOPT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (53, 'room', 52 , 'JERR');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (54, 'room', 53 , 'KABD');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (55, 'room', 54 , 'KKUV');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (56, 'room', 55 , 'LUCK');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (57, 'room', 56 , 'MUSH');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (58, 'room', 57 , 'NUTS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (59, 'room', 58 , 'PJRP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (60, 'room', 59 , 'GRVY');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (61, 'room', 60 , 'PLGT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (62, 'room', 61 , 'PRP3');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (63, 'room', 62 , 'PDST');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (64, 'room', 63 , 'RALY');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (65, 'room', 64 , 'RESP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (66, 'room', 65 , 'RIGS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (67, 'room', 66 , 'STAR');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (68, 'room', 67 , 'BULL');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (69, 'room', 68 , 'CROW');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (70, 'room', 69 , 'TPOM');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (71, 'room', 70 , 'WARU');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (72, 'room', 71 , 'ZEAL');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (73, 'room', 72 , 'PSOD');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (74, 'room', 73 , 'PSSY');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (75, 'room', 74 , 'PSYM');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (76, 'room', 75 , 'PSMC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (77, 'room', 76 , 'LACE');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (78, 'room', 77 , 'GRYU');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (79, 'room', 78 , 'H3AL');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (80, 'room', 79 , 'GNZP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (81, 'room', 80 , 'SOSS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (82, 'room', 81 , 'SB93');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (83, 'room', 82 , 'SJNP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (84, 'room', 83 , 'IBVG');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (85, 'room', 84 , 'NKTR');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (86, 'room', 85 , 'NEKO');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (87, 'room', 86 , 'MDED');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (88, 'room', 87 , 'RP93');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (89, 'brand', 1 , 'JOPT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (90, 'brand',  2 , 'U30');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (91, 'brand',  3 , 'USTD');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (92, 'brand',  4 , 'MSTS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (93, 'brand',  5 , 'SPL');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (94, 'brand',  6 , 'SGKT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (95, 'brand',  7 , 'SBPF');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (96, 'brand',  8 , 'SJPF');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (97, 'brand',  9 , 'TOPC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (98, 'brand', 10 , 'HKRR');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (99, 'brand', 11 , 'XPT');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (100, 'brand', 12 , 'FRKZ');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (101, 'brand', 13 , 'MJSN');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (102, 'brand', 14 , 'JPF');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (103, 'brand', 15 , 'POIS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (104, 'brand', 16 , 'AJPC');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (105, 'brand', 17 , 'WSOP');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (106, 'brand', 18 , 'OST');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (107, 'brand', 19 , 'GOLD');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (108, 'brand', 20 , 'NPS');
INSERT INTO org (org_no, org_type, ref_no, org_prefix) VALUES (109, 'brand', 21 , 'WSP');


COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
