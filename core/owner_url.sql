SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_urlテーブルの作成
DROP TABLE IF EXISTS owner_url;

CREATE TABLE owner_url (
    owner_no INT NOT NULL,
    url_type VARCHAR(10) NOT NULL COMMENT 'site, twitter, instagram',
    url VARCHAR(191) DEFAULT NULL,
    PRIMARY KEY (owner_no, url_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- owner_url table
CREATE TABLE owner_url (
    id BIGSERIAL PRIMARY KEY,
    owner_id BIGINT NOT NULL,
    url_type VARCHAR(100) NOT NULL, -- 'website', 'social', 'booking', 'menu', etc.
    url VARCHAR(1024) NOT NULL,
    title VARCHAR(255),
    description TEXT,
    display_order INTEGER DEFAULT 0,
    is_primary BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    click_count INTEGER DEFAULT 0,
    last_clicked TIMESTAMP,
    last_verified TIMESTAMP,
    is_verified BOOLEAN DEFAULT FALSE,
    verification_status VARCHAR(50), -- 'pending', 'verified', 'failed', 'broken'
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES owner(id) ON DELETE CASCADE
);

CREATE INDEX idx_owner_url_owner_id ON owner_url(owner_id);
CREATE INDEX idx_owner_url_url_type ON owner_url(url_type);
CREATE INDEX idx_owner_url_is_primary ON owner_url(is_primary);
CREATE INDEX idx_owner_url_is_active ON owner_url(is_active);
CREATE INDEX idx_owner_url_verification_status ON owner_url(verification_status); 