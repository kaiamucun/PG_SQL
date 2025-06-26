SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_categoryテーブルの作成
DROP TABLE IF EXISTS owner_category;

CREATE TABLE owner_category (
    owner_no INT NOT NULL,
    category_no INT NOT NULL,
    order_no INT DEFAULT NULL,
    category_name VARCHAR(40) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, category_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- アキバギルド(owner_no:1)のカテゴリ
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 269, 3, '初心者講習');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 271, 4, 'フード提供');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 276, 5, 'Wi-Fi');

-- イケブクロギルド(owner_no:2)のカテゴリ
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 269, 3, '初心者講習');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 272, 4, 'アルコール提供');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 275, 5, '近くに駐車場');

-- カジノクエスト(owner_no:3)のカテゴリ
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 268, 3, 'カジノゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 271, 4, 'フード提供');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 273, 5, 'スマホ充電');

-- GGPL新宿(owner_no:4)のカテゴリ
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 269, 3, '初心者講習');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 271, 4, 'フード提供');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 276, 5, 'Wi-Fi');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 277, 6, '喫煙所あり');

-- GGPL渋谷(owner_no:5)のカテゴリ
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 270, 3, '貸しテーブル');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 272, 4, 'アルコール提供');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 274, 5, '飲み放題プラン');

-- 他のオーナー（owner_no:6-20）にも基本的なカテゴリを設定
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 276, 3, 'Wi-Fi');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 269, 3, '初心者講習');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 271, 3, 'フード提供');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 272, 3, 'アルコール提供');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 273, 3, 'スマホ充電');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 269, 3, '初心者講習');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 275, 3, '近くに駐車場');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 271, 3, 'フード提供');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 276, 3, 'Wi-Fi');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 277, 3, '喫煙所あり');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 269, 3, '初心者講習');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 271, 3, 'フード提供');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 272, 3, 'アルコール提供');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 273, 3, 'スマホ充電');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 266, 1, 'トーナメント');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 267, 2, 'リングゲーム');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 276, 3, 'Wi-Fi');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
