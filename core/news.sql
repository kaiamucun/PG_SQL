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
    thumbnail_img_no INT DEFAULT NULL COMMENT '0:サムネイル無し',
    owner_no INT DEFAULT NULL,
    PRIMARY KEY (news_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- news table
CREATE TABLE news (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) UNIQUE,
    summary TEXT,
    content TEXT,
    featured_image_url VARCHAR(512),
    author_id BIGINT,
    category VARCHAR(100), -- 'tournament', 'promotion', 'general', 'update', etc.
    tags TEXT,
    status VARCHAR(50) DEFAULT 'draft', -- 'draft', 'published', 'archived'
    is_featured BOOLEAN DEFAULT FALSE,
    is_breaking BOOLEAN DEFAULT FALSE,
    priority INTEGER DEFAULT 0,
    view_count INTEGER DEFAULT 0,
    like_count INTEGER DEFAULT 0,
    share_count INTEGER DEFAULT 0,
    published_at TIMESTAMP,
    expires_at TIMESTAMP,
    seo_title VARCHAR(255),
    seo_description TEXT,
    seo_keywords TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_news_title ON news(title);
CREATE INDEX idx_news_slug ON news(slug);
CREATE INDEX idx_news_author_id ON news(author_id);
CREATE INDEX idx_news_category ON news(category);
CREATE INDEX idx_news_status ON news(status);
CREATE INDEX idx_news_published_at ON news(published_at);
CREATE INDEX idx_news_is_featured ON news(is_featured);
CREATE INDEX idx_news_priority ON news(priority); 