SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- brandテーブルの作成
DROP TABLE IF EXISTS brand;

CREATE TABLE brand (
    brand_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    brand_name VARCHAR(60) DEFAULT NULL COMMENT 'ブランド名',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (brand_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO brand(brand_no, brand_name) VALUES(1, 'Japan Open Poker Tour');
INSERT INTO brand(brand_no, brand_name) VALUES(2, '学生ポーカー選手権 U-30');
INSERT INTO brand(brand_no, brand_name) VALUES(3, 'MASTERS S-1');
INSERT INTO brand(brand_no, brand_name) VALUES(4, 'Spadie Poker League');
INSERT INTO brand(brand_no, brand_name) VALUES(5, '戦国ポーカーツアー');
INSERT INTO brand(brand_no, brand_name) VALUES(6, 'SHIBUYA POKER FES');
INSERT INTO brand(brand_no, brand_name) VALUES(7, 'SHINJUKU POKER FES');
INSERT INTO brand(brand_no, brand_name) VALUES(8, 'Top of Poker Championship');
INSERT INTO brand(brand_no, brand_name) VALUES(9, '百花繚乱');
INSERT INTO brand(brand_no, brand_name) VALUES(10, 'XPT');
INSERT INTO brand(brand_no, brand_name) VALUES(11, '風林火山');
INSERT INTO brand(brand_no, brand_name) VALUES(12, '名人戦');
INSERT INTO brand(brand_no, brand_name) VALUES(13, 'JAPAN POKER FESTIVAL');
INSERT INTO brand(brand_no, brand_name) VALUES(14, 'ポーカー王位戦');
INSERT INTO brand(brand_no, brand_name) VALUES(15, 'AJPC');
INSERT INTO brand(brand_no, brand_name) VALUES(16, 'WOLF SERIES of POKER');
INSERT INTO brand(brand_no, brand_name) VALUES(17, 'Osaka Super Tournament');
INSERT INTO brand(brand_no, brand_name) VALUES(18, 'GOLD DRAGON');
INSERT INTO brand(brand_no, brand_name) VALUES(19, 'NIPPON SERIES');
INSERT INTO brand(brand_no, brand_name) VALUES(20, 'World Series of Poker');

COMMIT;