SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- brandテーブルの作成
DROP TABLE IF EXISTS brand;

CREATE TABLE brand (
    brand_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    brand_name VARCHAR(60) DEFAULT NULL COMMENT 'ブランド名',
    PRIMARY KEY (brand_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- brand table
CREATE TABLE brand (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    display_name VARCHAR(255),
    description TEXT,
    logo_url VARCHAR(512),
    website_url VARCHAR(512),
    contact_email VARCHAR(255),
    contact_phone VARCHAR(50),
    established_date DATE,
    country VARCHAR(100),
    category VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    priority INTEGER DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_brand_name ON brand(name);
CREATE INDEX idx_brand_category ON brand(category);
CREATE INDEX idx_brand_is_active ON brand(is_active);
CREATE INDEX idx_brand_priority ON brand(priority); 