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

-- owner_no 1-20まで、各カテゴリに2-3枚の写真を登録
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

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
