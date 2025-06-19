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

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- owner_category table
CREATE TABLE owner_category (
    id BIGSERIAL PRIMARY KEY,
    owner_id BIGINT NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    category_type VARCHAR(100), -- 'business', 'service', 'game', 'event', etc.
    description TEXT,
    parent_category_id BIGINT,
    display_order INTEGER DEFAULT 0,
    icon_url VARCHAR(512),
    color_code VARCHAR(20),
    is_active BOOLEAN DEFAULT TRUE,
    is_featured BOOLEAN DEFAULT FALSE,
    seo_keywords TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES owner(id) ON DELETE CASCADE,
    FOREIGN KEY (parent_category_id) REFERENCES owner_category(id) ON DELETE SET NULL
);

CREATE INDEX idx_owner_category_owner_id ON owner_category(owner_id);
CREATE INDEX idx_owner_category_category_type ON owner_category(category_type);
CREATE INDEX idx_owner_category_parent_category_id ON owner_category(parent_category_id);
CREATE INDEX idx_owner_category_is_active ON owner_category(is_active);
CREATE INDEX idx_owner_category_display_order ON owner_category(display_order); 