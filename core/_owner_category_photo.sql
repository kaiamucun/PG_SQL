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

-- アキバギルド(owner_no:1)のカテゴリ写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 266, 1, 1);  -- トーナメント写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 266, 2, 2);  -- トーナメント写真2
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 267, 1, 3);  -- リングゲーム写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 269, 1, 4);  -- 初心者講習写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(1, 271, 1, 5);  -- フード提供写真1

-- イケブクロギルド(owner_no:2)のカテゴリ写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 266, 1, 6);  -- トーナメント写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 267, 1, 7);  -- リングゲーム写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 269, 1, 8);  -- 初心者講習写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(2, 272, 1, 9);  -- アルコール提供写真1

-- カジノクエスト(owner_no:3)のカテゴリ写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 266, 1, 10); -- トーナメント写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 267, 1, 11); -- リングゲーム写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 268, 1, 12); -- カジノゲーム写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 268, 2, 13); -- カジノゲーム写真2
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(3, 271, 1, 14); -- フード提供写真1

-- GGPL新宿(owner_no:4)のカテゴリ写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 266, 1, 15); -- トーナメント写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 266, 2, 16); -- トーナメント写真2
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 266, 3, 17); -- トーナメント写真3
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 267, 1, 18); -- リングゲーム写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 269, 1, 19); -- 初心者講習写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(4, 271, 1, 20); -- フード提供写真1

-- GGPL渋谷(owner_no:5)のカテゴリ写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 266, 1, 21); -- トーナメント写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 267, 1, 22); -- リングゲーム写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 270, 1, 23); -- 貸しテーブル写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 272, 1, 24); -- アルコール提供写真1
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(5, 274, 1, 25); -- 飲み放題プラン写真1

-- 他のオーナー（owner_no:6-10）の写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 266, 1, 26);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(6, 267, 1, 27);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 266, 1, 28);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 267, 1, 29);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(7, 269, 1, 30);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 266, 1, 31);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(8, 267, 1, 32);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 266, 1, 33);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(9, 267, 1, 34);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 266, 1, 35);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(10, 267, 1, 36);

-- 他のオーナー（owner_no:11-15）の写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 266, 1, 37);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(11, 267, 1, 38);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 266, 1, 39);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(12, 267, 1, 40);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 266, 1, 41);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(13, 267, 1, 42);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 266, 1, 43);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(14, 267, 1, 44);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 266, 1, 45);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(15, 267, 1, 46);

-- 他のオーナー（owner_no:16-20）の写真
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 266, 1, 47);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(16, 267, 1, 48);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 266, 1, 49);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(17, 267, 1, 50);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 266, 1, 51);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(18, 267, 1, 52);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 266, 1, 53);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(19, 267, 1, 54);

INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 266, 1, 55);
INSERT INTO owner_category_photo(owner_no, category_no, order_no, img_no) VALUES(20, 267, 1, 56);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
