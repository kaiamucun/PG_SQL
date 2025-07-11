SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_category_photoテーブルの作成
DROP TABLE IF EXISTS owner_category_photo;

CREATE TABLE owner_category_photo (
    owner_no INT NOT NULL,
    category_no INT NOT NULL,
    order_no INT NOT NULL,
    img_no INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, category_no, order_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- owner_no 1-87まで、各カテゴリに写真を登録
-- owner_no = 1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 1, 1, 101); -- 店内の様子
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 1, 2, 102);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 2, 1, 103); -- キャスト
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 2, 2, 104);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 2, 3, 105);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 3, 1, 106); -- フード
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 3, 2, 107);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 4, 1, 108); -- トーナメントA優勝者
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 5, 1, 109); -- トーナメントB優勝者
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 6, 1, 110); -- その他
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 6, 2, 111);

-- owner_no = 2
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 1, 1, 201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 1, 2, 202);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 2, 1, 203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 2, 2, 204);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 2, 3, 205);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 3, 1, 206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 3, 2, 207);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 4, 1, 208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 5, 1, 209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 6, 1, 210);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 6, 2, 211);

-- owner_no = 3
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 1, 1, 301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 1, 2, 302);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 2, 1, 303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 2, 2, 304);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 2, 3, 305);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 3, 1, 306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 3, 2, 307);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 4, 1, 308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 5, 1, 309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 6, 1, 310);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 6, 2, 311);

-- owner_no = 4-20についても同様のパターンで追加（img_noは適切に設定）
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 1, 1, 401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 1, 2, 402);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 2, 1, 403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 2, 2, 404);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 2, 3, 405);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 3, 1, 406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 3, 2, 407);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 4, 1, 408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 5, 1, 409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 6, 1, 410);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 6, 2, 411);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 1, 1, 501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 1, 2, 502);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 2, 1, 503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 2, 2, 504);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 2, 3, 505);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 3, 1, 506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 3, 2, 507);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 4, 1, 508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 5, 1, 509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 6, 1, 510);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 6, 2, 511);

-- owner_no 6-20まで同様のパターンで追加
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 1, 1, 601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 2, 1, 603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 3, 1, 606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 4, 1, 608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 5, 1, 609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 6, 1, 610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 1, 1, 701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 2, 1, 703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 3, 1, 706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 4, 1, 708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 5, 1, 709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 6, 1, 710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 1, 1, 801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 2, 1, 803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 3, 1, 806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 4, 1, 808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 5, 1, 809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 6, 1, 810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 1, 1, 901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 2, 1, 903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 3, 1, 906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 4, 1, 908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 5, 1, 909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 6, 1, 910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 1, 1, 1001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 2, 1, 1003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 3, 1, 1006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 4, 1, 1008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 5, 1, 1009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 6, 1, 1010);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 1, 1, 1101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 2, 1, 1103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 3, 1, 1106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 4, 1, 1108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 5, 1, 1109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 6, 1, 1110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 1, 1, 1201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 2, 1, 1203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 3, 1, 1206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 4, 1, 1208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 5, 1, 1209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 6, 1, 1210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 1, 1, 1301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 2, 1, 1303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 3, 1, 1306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 4, 1, 1308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 5, 1, 1309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 6, 1, 1310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 1, 1, 1401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 2, 1, 1403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 3, 1, 1406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 4, 1, 1408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 5, 1, 1409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 6, 1, 1410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 1, 1, 1501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 2, 1, 1503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 3, 1, 1506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 4, 1, 1508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 5, 1, 1509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 6, 1, 1510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 1, 1, 1601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 2, 1, 1603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 3, 1, 1606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 4, 1, 1608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 5, 1, 1609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 6, 1, 1610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 1, 1, 1701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 2, 1, 1703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 3, 1, 1706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 4, 1, 1708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 5, 1, 1709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 6, 1, 1710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 1, 1, 1801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 2, 1, 1803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 3, 1, 1806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 4, 1, 1808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 5, 1, 1809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 6, 1, 1810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 1, 1, 1901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 2, 1, 1903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 3, 1, 1906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 4, 1, 1908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 5, 1, 1909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 6, 1, 1910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 1, 1, 2001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 2, 1, 2003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 3, 1, 2006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 4, 1, 2008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 5, 1, 2009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 6, 1, 2010);

-- owner_no 21-87の追加データ（各カテゴリに1枚ずつの写真）
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(21, 1, 1, 2101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(21, 2, 1, 2103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(21, 3, 1, 2106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(21, 4, 1, 2108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(21, 5, 1, 2109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(21, 6, 1, 2110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(22, 1, 1, 2201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(22, 2, 1, 2203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(22, 3, 1, 2206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(22, 4, 1, 2208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(22, 5, 1, 2209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(22, 6, 1, 2210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(23, 1, 1, 2301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(23, 2, 1, 2303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(23, 3, 1, 2306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(23, 4, 1, 2308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(23, 5, 1, 2309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(23, 6, 1, 2310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(24, 1, 1, 2401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(24, 2, 1, 2403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(24, 3, 1, 2406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(24, 4, 1, 2408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(24, 5, 1, 2409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(24, 6, 1, 2410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(25, 1, 1, 2501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(25, 2, 1, 2503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(25, 3, 1, 2506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(25, 4, 1, 2508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(25, 5, 1, 2509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(25, 6, 1, 2510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(26, 1, 1, 2601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(26, 2, 1, 2603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(26, 3, 1, 2606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(26, 4, 1, 2608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(26, 5, 1, 2609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(26, 6, 1, 2610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(27, 1, 1, 2701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(27, 2, 1, 2703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(27, 3, 1, 2706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(27, 4, 1, 2708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(27, 5, 1, 2709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(27, 6, 1, 2710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(28, 1, 1, 2801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(28, 2, 1, 2803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(28, 3, 1, 2806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(28, 4, 1, 2808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(28, 5, 1, 2809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(28, 6, 1, 2810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(29, 1, 1, 2901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(29, 2, 1, 2903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(29, 3, 1, 2906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(29, 4, 1, 2908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(29, 5, 1, 2909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(29, 6, 1, 2910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(30, 1, 1, 3001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(30, 2, 1, 3003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(30, 3, 1, 3006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(30, 4, 1, 3008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(30, 5, 1, 3009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(30, 6, 1, 3010);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(31, 1, 1, 3101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(31, 2, 1, 3103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(31, 3, 1, 3106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(31, 4, 1, 3108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(31, 5, 1, 3109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(31, 6, 1, 3110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(32, 1, 1, 3201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(32, 2, 1, 3203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(32, 3, 1, 3206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(32, 4, 1, 3208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(32, 5, 1, 3209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(32, 6, 1, 3210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(33, 1, 1, 3301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(33, 2, 1, 3303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(33, 3, 1, 3306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(33, 4, 1, 3308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(33, 5, 1, 3309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(33, 6, 1, 3310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(34, 1, 1, 3401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(34, 2, 1, 3403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(34, 3, 1, 3406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(34, 4, 1, 3408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(34, 5, 1, 3409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(34, 6, 1, 3410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(35, 1, 1, 3501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(35, 2, 1, 3503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(35, 3, 1, 3506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(35, 4, 1, 3508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(35, 5, 1, 3509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(35, 6, 1, 3510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(36, 1, 1, 3601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(36, 2, 1, 3603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(36, 3, 1, 3606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(36, 4, 1, 3608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(36, 5, 1, 3609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(36, 6, 1, 3610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(37, 1, 1, 3701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(37, 2, 1, 3703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(37, 3, 1, 3706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(37, 4, 1, 3708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(37, 5, 1, 3709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(37, 6, 1, 3710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(38, 1, 1, 3801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(38, 2, 1, 3803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(38, 3, 1, 3806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(38, 4, 1, 3808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(38, 5, 1, 3809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(38, 6, 1, 3810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(39, 1, 1, 3901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(39, 2, 1, 3903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(39, 3, 1, 3906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(39, 4, 1, 3908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(39, 5, 1, 3909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(39, 6, 1, 3910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(40, 1, 1, 4001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(40, 2, 1, 4003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(40, 3, 1, 4006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(40, 4, 1, 4008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(40, 5, 1, 4009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(40, 6, 1, 4010);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(41, 1, 1, 4101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(41, 2, 1, 4103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(41, 3, 1, 4106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(41, 4, 1, 4108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(41, 5, 1, 4109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(41, 6, 1, 4110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(42, 1, 1, 4201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(42, 2, 1, 4203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(42, 3, 1, 4206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(42, 4, 1, 4208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(42, 5, 1, 4209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(42, 6, 1, 4210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(43, 1, 1, 4301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(43, 2, 1, 4303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(43, 3, 1, 4306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(43, 4, 1, 4308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(43, 5, 1, 4309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(43, 6, 1, 4310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(44, 1, 1, 4401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(44, 2, 1, 4403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(44, 3, 1, 4406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(44, 4, 1, 4408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(44, 5, 1, 4409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(44, 6, 1, 4410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(45, 1, 1, 4501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(45, 2, 1, 4503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(45, 3, 1, 4506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(45, 4, 1, 4508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(45, 5, 1, 4509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(45, 6, 1, 4510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(46, 1, 1, 4601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(46, 2, 1, 4603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(46, 3, 1, 4606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(46, 4, 1, 4608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(46, 5, 1, 4609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(46, 6, 1, 4610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(47, 1, 1, 4701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(47, 2, 1, 4703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(47, 3, 1, 4706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(47, 4, 1, 4708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(47, 5, 1, 4709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(47, 6, 1, 4710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(48, 1, 1, 4801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(48, 2, 1, 4803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(48, 3, 1, 4806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(48, 4, 1, 4808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(48, 5, 1, 4809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(48, 6, 1, 4810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(49, 1, 1, 4901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(49, 2, 1, 4903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(49, 3, 1, 4906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(49, 4, 1, 4908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(49, 5, 1, 4909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(49, 6, 1, 4910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(50, 1, 1, 5001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(50, 2, 1, 5003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(50, 3, 1, 5006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(50, 4, 1, 5008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(50, 5, 1, 5009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(50, 6, 1, 5010);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(51, 1, 1, 5101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(51, 2, 1, 5103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(51, 3, 1, 5106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(51, 4, 1, 5108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(51, 5, 1, 5109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(51, 6, 1, 5110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(52, 1, 1, 5201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(52, 2, 1, 5203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(52, 3, 1, 5206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(52, 4, 1, 5208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(52, 5, 1, 5209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(52, 6, 1, 5210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(53, 1, 1, 5301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(53, 2, 1, 5303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(53, 3, 1, 5306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(53, 4, 1, 5308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(53, 5, 1, 5309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(53, 6, 1, 5310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(54, 1, 1, 5401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(54, 2, 1, 5403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(54, 3, 1, 5406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(54, 4, 1, 5408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(54, 5, 1, 5409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(54, 6, 1, 5410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(55, 1, 1, 5501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(55, 2, 1, 5503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(55, 3, 1, 5506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(55, 4, 1, 5508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(55, 5, 1, 5509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(55, 6, 1, 5510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(56, 1, 1, 5601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(56, 2, 1, 5603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(56, 3, 1, 5606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(56, 4, 1, 5608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(56, 5, 1, 5609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(56, 6, 1, 5610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(57, 1, 1, 5701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(57, 2, 1, 5703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(57, 3, 1, 5706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(57, 4, 1, 5708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(57, 5, 1, 5709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(57, 6, 1, 5710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(58, 1, 1, 5801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(58, 2, 1, 5803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(58, 3, 1, 5806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(58, 4, 1, 5808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(58, 5, 1, 5809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(58, 6, 1, 5810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(59, 1, 1, 5901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(59, 2, 1, 5903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(59, 3, 1, 5906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(59, 4, 1, 5908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(59, 5, 1, 5909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(59, 6, 1, 5910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(60, 1, 1, 6001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(60, 2, 1, 6003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(60, 3, 1, 6006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(60, 4, 1, 6008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(60, 5, 1, 6009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(60, 6, 1, 6010);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(61, 1, 1, 6101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(61, 2, 1, 6103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(61, 3, 1, 6106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(61, 4, 1, 6108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(61, 5, 1, 6109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(61, 6, 1, 6110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(62, 1, 1, 6201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(62, 2, 1, 6203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(62, 3, 1, 6206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(62, 4, 1, 6208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(62, 5, 1, 6209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(62, 6, 1, 6210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(63, 1, 1, 6301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(63, 2, 1, 6303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(63, 3, 1, 6306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(63, 4, 1, 6308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(63, 5, 1, 6309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(63, 6, 1, 6310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(64, 1, 1, 6401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(64, 2, 1, 6403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(64, 3, 1, 6406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(64, 4, 1, 6408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(64, 5, 1, 6409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(64, 6, 1, 6410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(65, 1, 1, 6501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(65, 2, 1, 6503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(65, 3, 1, 6506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(65, 4, 1, 6508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(65, 5, 1, 6509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(65, 6, 1, 6510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(66, 1, 1, 6601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(66, 2, 1, 6603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(66, 3, 1, 6606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(66, 4, 1, 6608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(66, 5, 1, 6609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(66, 6, 1, 6610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(67, 1, 1, 6701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(67, 2, 1, 6703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(67, 3, 1, 6706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(67, 4, 1, 6708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(67, 5, 1, 6709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(67, 6, 1, 6710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(68, 1, 1, 6801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(68, 2, 1, 6803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(68, 3, 1, 6806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(68, 4, 1, 6808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(68, 5, 1, 6809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(68, 6, 1, 6810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(69, 1, 1, 6901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(69, 2, 1, 6903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(69, 3, 1, 6906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(69, 4, 1, 6908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(69, 5, 1, 6909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(69, 6, 1, 6910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(70, 1, 1, 7001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(70, 2, 1, 7003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(70, 3, 1, 7006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(70, 4, 1, 7008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(70, 5, 1, 7009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(70, 6, 1, 7010);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(71, 1, 1, 7101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(71, 2, 1, 7103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(71, 3, 1, 7106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(71, 4, 1, 7108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(71, 5, 1, 7109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(71, 6, 1, 7110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(72, 1, 1, 7201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(72, 2, 1, 7203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(72, 3, 1, 7206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(72, 4, 1, 7208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(72, 5, 1, 7209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(72, 6, 1, 7210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(73, 1, 1, 7301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(73, 2, 1, 7303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(73, 3, 1, 7306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(73, 4, 1, 7308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(73, 5, 1, 7309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(73, 6, 1, 7310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(74, 1, 1, 7401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(74, 2, 1, 7403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(74, 3, 1, 7406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(74, 4, 1, 7408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(74, 5, 1, 7409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(74, 6, 1, 7410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(75, 1, 1, 7501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(75, 2, 1, 7503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(75, 3, 1, 7506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(75, 4, 1, 7508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(75, 5, 1, 7509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(75, 6, 1, 7510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(76, 1, 1, 7601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(76, 2, 1, 7603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(76, 3, 1, 7606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(76, 4, 1, 7608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(76, 5, 1, 7609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(76, 6, 1, 7610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(77, 1, 1, 7701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(77, 2, 1, 7703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(77, 3, 1, 7706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(77, 4, 1, 7708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(77, 5, 1, 7709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(77, 6, 1, 7710);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(78, 1, 1, 7801);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(78, 2, 1, 7803);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(78, 3, 1, 7806);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(78, 4, 1, 7808);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(78, 5, 1, 7809);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(78, 6, 1, 7810);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(79, 1, 1, 7901);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(79, 2, 1, 7903);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(79, 3, 1, 7906);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(79, 4, 1, 7908);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(79, 5, 1, 7909);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(79, 6, 1, 7910);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(80, 1, 1, 8001);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(80, 2, 1, 8003);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(80, 3, 1, 8006);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(80, 4, 1, 8008);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(80, 5, 1, 8009);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(80, 6, 1, 8010);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(81, 1, 1, 8101);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(81, 2, 1, 8103);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(81, 3, 1, 8106);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(81, 4, 1, 8108);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(81, 5, 1, 8109);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(81, 6, 1, 8110);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(82, 1, 1, 8201);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(82, 2, 1, 8203);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(82, 3, 1, 8206);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(82, 4, 1, 8208);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(82, 5, 1, 8209);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(82, 6, 1, 8210);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(83, 1, 1, 8301);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(83, 2, 1, 8303);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(83, 3, 1, 8306);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(83, 4, 1, 8308);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(83, 5, 1, 8309);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(83, 6, 1, 8310);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(84, 1, 1, 8401);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(84, 2, 1, 8403);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(84, 3, 1, 8406);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(84, 4, 1, 8408);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(84, 5, 1, 8409);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(84, 6, 1, 8410);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(85, 1, 1, 8501);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(85, 2, 1, 8503);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(85, 3, 1, 8506);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(85, 4, 1, 8508);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(85, 5, 1, 8509);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(85, 6, 1, 8510);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(86, 1, 1, 8601);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(86, 2, 1, 8603);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(86, 3, 1, 8606);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(86, 4, 1, 8608);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(86, 5, 1, 8609);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(86, 6, 1, 8610);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(87, 1, 1, 8701);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(87, 2, 1, 8703);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(87, 3, 1, 8706);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(87, 4, 1, 8708);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(87, 5, 1, 8709);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(87, 6, 1, 8710);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
