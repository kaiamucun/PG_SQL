SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_categoryテーブルの作成
DROP TABLE IF EXISTS owner_category;

CREATE TABLE owner_category (
    owner_no INT NOT NULL,
    category_no INT NOT NULL,
    order_no INT DEFAULT NULL,
    category_name VARCHAR(40) DEFAULT NULL,
    PRIMARY KEY (owner_no, category_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- owner_no 1-20まで、各店舗に6つのカテゴリを作成
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(1, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(2, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(3, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(4, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(5, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(6, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(7, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(8, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(9, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(10, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(11, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(12, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(13, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(14, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(15, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(16, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(17, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(18, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(19, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(20, 6, 6, 'その他');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
