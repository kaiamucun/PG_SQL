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

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- owner_category_photo table
CREATE TABLE owner_category_photo (
    id BIGSERIAL PRIMARY KEY,
    owner_category_id BIGINT NOT NULL,
    photo_url VARCHAR(512) NOT NULL,
    photo_title VARCHAR(255),
    photo_description TEXT,
    alt_text VARCHAR(255),
    file_size BIGINT,
    file_type VARCHAR(50),
    width INTEGER,
    height INTEGER,
    display_order INTEGER DEFAULT 0,
    is_primary BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_category_id) REFERENCES owner_category(id) ON DELETE CASCADE
);

CREATE INDEX idx_owner_category_photo_owner_category_id ON owner_category_photo(owner_category_id);
CREATE INDEX idx_owner_category_photo_is_primary ON owner_category_photo(is_primary);
CREATE INDEX idx_owner_category_photo_is_active ON owner_category_photo(is_active);
CREATE INDEX idx_owner_category_photo_display_order ON owner_category_photo(display_order); 