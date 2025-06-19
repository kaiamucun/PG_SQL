SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- ownerテーブルの作成 (care by SearchEngine)
DROP TABLE IF EXISTS owner;

CREATE TABLE owner (
    owner_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    owner_type VARCHAR(20) DEFAULT NULL COMMENT 'room, event, media',
    ref_no INT DEFAULT NULL COMMENT 'room_no, event_no, media_no',
    PRIMARY KEY (owner_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- owner table (care by SearchEngine)
CREATE TABLE owner (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    display_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(50),
    address TEXT,
    business_type VARCHAR(100),
    license_number VARCHAR(100),
    tax_id VARCHAR(50),
    website_url VARCHAR(512),
    social_media JSONB,
    verification_status VARCHAR(50) DEFAULT 'pending', -- 'pending', 'verified', 'rejected'
    is_active BOOLEAN DEFAULT TRUE,
    search_engine_indexed BOOLEAN DEFAULT FALSE,
    search_keywords TEXT,
    seo_description TEXT,
    last_search_update TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_owner_email ON owner(email);
CREATE INDEX idx_owner_name ON owner(name);
CREATE INDEX idx_owner_verification_status ON owner(verification_status);
CREATE INDEX idx_owner_is_active ON owner(is_active);
CREATE INDEX idx_owner_search_engine_indexed ON owner(search_engine_indexed);
CREATE INDEX idx_owner_search_keywords ON owner USING GIN(to_tsvector('english', search_keywords)); 