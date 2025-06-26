SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- newsテーブルの作成
DROP TABLE IF EXISTS news;

CREATE TABLE news (
    news_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    news_type VARCHAR(20) DEFAULT NULL COMMENT 'news, interview',
    news_kind VARCHAR(20) DEFAULT NULL COMMENT 'room, event, topic',
    news_name VARCHAR(60) DEFAULT NULL,
    publish_dt DATETIME DEFAULT NULL COMMENT '公開日時',
    html_no INT DEFAULT NULL COMMENT '（from RFT）',
    status VARCHAR(10) DEFAULT NULL COMMENT 'draft, published',
    main_img_id VARCHAR(20) DEFAULT NULL COMMENT 'prefix + img_no',
    thumbnail_img_no INT DEFAULT NULL COMMENT '0:サムネイル無し',
    owner_no INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (news_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
