SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- pickup_itemテーブルの作成
DROP TABLE IF EXISTS pickup_item;

CREATE TABLE pickup_item (
    pickup_item_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    pickup_item_type VARCHAR(10) DEFAULT NULL COMMENT 'tournament, pr, game',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE pickup_item (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    content TEXT,
    image_url VARCHAR(512),
    link_url VARCHAR(512),
    item_type VARCHAR(50) NOT NULL, -- 'tournament', 'pr', 'game', etc.
    status VARCHAR(50) DEFAULT 'active',
    priority INTEGER DEFAULT 0,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    view_count INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_pickup_item_item_type ON pickup_item(item_type);
CREATE INDEX idx_pickup_item_status ON pickup_item(status);
CREATE INDEX idx_pickup_item_dates ON pickup_item(start_date, end_date);
CREATE INDEX idx_pickup_item_priority ON pickup_item(priority); 