SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- mediaテーブルの作成
DROP TABLE IF EXISTS media;

CREATE TABLE media (
    media_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    media_name VARCHAR(40) DEFAULT NULL COMMENT 'メディア名（PokerGuild運営）',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (media_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- media table
CREATE TABLE media (
    id BIGSERIAL PRIMARY KEY,
    filename VARCHAR(255) NOT NULL,
    original_filename VARCHAR(255),
    file_path VARCHAR(1024) NOT NULL,
    file_url VARCHAR(1024),
    file_type VARCHAR(100), -- 'image', 'video', 'audio', 'document', etc.
    mime_type VARCHAR(100),
    file_size BIGINT,
    width INTEGER,
    height INTEGER,
    duration_seconds INTEGER,
    title VARCHAR(255),
    description TEXT,
    alt_text VARCHAR(255),
    caption TEXT,
    metadata JSONB,
    uploader_id BIGINT,
    upload_source VARCHAR(100), -- 'web', 'api', 'admin', 'import', etc.
    is_public BOOLEAN DEFAULT TRUE,
    is_processed BOOLEAN DEFAULT FALSE,
    processing_status VARCHAR(50), -- 'pending', 'processing', 'completed', 'failed'
    storage_provider VARCHAR(50), -- 'local', 'aws_s3', 'cloudinary', etc.
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_media_filename ON media(filename);
CREATE INDEX idx_media_file_type ON media(file_type);
CREATE INDEX idx_media_mime_type ON media(mime_type);
CREATE INDEX idx_media_uploader_id ON media(uploader_id);
CREATE INDEX idx_media_is_public ON media(is_public);
CREATE INDEX idx_media_processing_status ON media(processing_status);
CREATE INDEX idx_media_created_at ON media(created_at); 