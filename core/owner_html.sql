SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_htmlテーブルの作成
DROP TABLE IF EXISTS owner_html;

CREATE TABLE owner_html (
    owner_no INT NOT NULL,
    section VARCHAR(10) NOT NULL COMMENT 'casino, intro, other',
    html_no INT DEFAULT NULL COMMENT 'from RFT（非表示：空文字）',
    PRIMARY KEY (owner_no, section)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- owner_html table
CREATE TABLE owner_html (
    id BIGSERIAL PRIMARY KEY,
    owner_id BIGINT NOT NULL,
    page_type VARCHAR(100) NOT NULL, -- 'homepage', 'about', 'services', 'contact', etc.
    page_title VARCHAR(255),
    page_slug VARCHAR(255),
    html_content TEXT,
    css_content TEXT,
    js_content TEXT,
    meta_description TEXT,
    meta_keywords TEXT,
    is_published BOOLEAN DEFAULT FALSE,
    is_template BOOLEAN DEFAULT FALSE,
    template_name VARCHAR(255),
    seo_score INTEGER DEFAULT 0,
    last_seo_check TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES owner(id) ON DELETE CASCADE
);

CREATE INDEX idx_owner_html_owner_id ON owner_html(owner_id);
CREATE INDEX idx_owner_html_page_type ON owner_html(page_type);
CREATE INDEX idx_owner_html_page_slug ON owner_html(page_slug);
CREATE INDEX idx_owner_html_is_published ON owner_html(is_published); 