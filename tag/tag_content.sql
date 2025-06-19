SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tag_contentテーブルの作成
DROP TABLE IF EXISTS tag_content;

CREATE TABLE tag_content (
    search_type VARCHAR(20) NOT NULL COMMENT 'tournament, news',
    ref_no INT NOT NULL COMMENT '{search_type}_no',
    tag_no INT NOT NULL,
    PRIMARY KEY (search_type, ref_no, tag_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 必要に応じてインデックスを追加
CREATE INDEX idx_tag_content_tag_no ON tag_content(tag_no);
CREATE INDEX idx_tag_content_search_type ON tag_content(search_type);

SET FOREIGN_KEY_CHECKS = 1; 