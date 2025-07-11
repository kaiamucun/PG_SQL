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

-- owner_no 1-87まで、各店舗に6つのカテゴリを作成
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

-- owner_no 21-87の追加データ
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(21, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(21, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(21, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(21, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(21, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(21, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(22, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(22, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(22, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(22, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(22, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(22, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(23, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(23, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(23, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(23, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(23, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(23, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(24, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(24, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(24, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(24, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(24, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(24, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(25, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(25, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(25, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(25, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(25, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(25, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(26, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(26, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(26, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(26, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(26, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(26, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(27, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(27, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(27, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(27, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(27, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(27, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(28, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(28, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(28, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(28, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(28, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(28, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(29, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(29, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(29, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(29, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(29, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(29, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(30, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(30, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(30, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(30, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(30, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(30, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(31, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(31, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(31, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(31, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(31, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(31, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(32, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(32, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(32, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(32, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(32, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(32, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(33, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(33, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(33, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(33, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(33, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(33, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(34, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(34, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(34, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(34, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(34, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(34, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(35, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(35, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(35, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(35, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(35, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(35, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(36, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(36, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(36, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(36, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(36, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(36, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(37, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(37, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(37, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(37, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(37, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(37, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(38, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(38, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(38, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(38, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(38, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(38, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(39, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(39, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(39, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(39, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(39, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(39, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(40, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(40, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(40, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(40, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(40, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(40, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(41, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(41, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(41, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(41, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(41, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(41, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(42, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(42, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(42, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(42, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(42, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(42, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(43, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(43, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(43, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(43, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(43, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(43, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(44, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(44, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(44, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(44, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(44, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(44, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(45, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(45, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(45, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(45, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(45, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(45, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(46, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(46, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(46, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(46, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(46, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(46, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(47, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(47, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(47, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(47, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(47, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(47, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(48, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(48, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(48, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(48, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(48, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(48, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(49, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(49, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(49, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(49, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(49, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(49, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(50, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(50, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(50, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(50, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(50, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(50, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(51, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(51, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(51, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(51, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(51, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(51, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(52, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(52, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(52, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(52, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(52, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(52, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(53, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(53, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(53, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(53, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(53, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(53, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(54, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(54, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(54, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(54, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(54, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(54, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(55, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(55, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(55, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(55, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(55, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(55, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(56, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(56, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(56, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(56, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(56, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(56, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(57, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(57, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(57, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(57, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(57, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(57, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(58, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(58, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(58, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(58, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(58, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(58, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(59, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(59, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(59, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(59, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(59, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(59, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(60, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(60, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(60, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(60, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(60, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(60, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(61, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(61, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(61, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(61, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(61, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(61, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(62, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(62, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(62, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(62, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(62, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(62, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(63, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(63, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(63, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(63, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(63, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(63, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(64, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(64, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(64, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(64, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(64, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(64, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(65, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(65, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(65, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(65, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(65, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(65, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(66, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(66, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(66, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(66, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(66, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(66, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(67, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(67, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(67, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(67, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(67, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(67, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(68, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(68, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(68, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(68, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(68, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(68, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(69, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(69, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(69, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(69, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(69, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(69, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(70, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(70, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(70, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(70, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(70, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(70, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(71, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(71, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(71, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(71, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(71, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(71, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(72, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(72, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(72, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(72, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(72, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(72, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(73, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(73, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(73, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(73, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(73, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(73, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(74, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(74, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(74, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(74, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(74, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(74, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(75, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(75, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(75, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(75, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(75, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(75, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(76, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(76, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(76, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(76, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(76, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(76, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(77, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(77, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(77, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(77, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(77, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(77, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(78, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(78, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(78, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(78, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(78, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(78, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(79, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(79, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(79, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(79, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(79, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(79, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(80, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(80, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(80, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(80, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(80, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(80, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(81, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(81, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(81, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(81, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(81, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(81, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(82, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(82, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(82, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(82, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(82, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(82, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(83, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(83, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(83, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(83, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(83, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(83, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(84, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(84, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(84, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(84, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(84, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(84, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(85, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(85, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(85, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(85, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(85, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(85, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(86, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(86, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(86, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(86, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(86, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(86, 6, 6, 'その他');

INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(87, 1, 1, '店内の様子');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(87, 2, 2, 'キャスト');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(87, 3, 3, 'フード');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(87, 4, 4, 'トーナメントA優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(87, 5, 5, 'トーナメントB優勝者');
INSERT INTO owner_category(owner_no, category_no, order_no, category_name) VALUES(87, 6, 6, 'その他');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
