SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- brand_eventテーブルの作成
DROP TABLE IF EXISTS brand_event;

CREATE TABLE brand_event (
    brand_no INT NOT NULL,
    event_no INT NOT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (brand_no, event_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- brand_event table
CREATE TABLE brand_event (
    id BIGSERIAL PRIMARY KEY,
    brand_id BIGINT NOT NULL,
    event_id BIGINT NOT NULL,
    partnership_type VARCHAR(100), -- 'sponsor', 'organizer', 'partner', etc.
    contribution_level VARCHAR(50), -- 'platinum', 'gold', 'silver', 'bronze'
    sponsorship_amount DECIMAL(12,2),
    benefits TEXT,
    contract_start_date DATE,
    contract_end_date DATE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (brand_id) REFERENCES brand(id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE
);

CREATE INDEX idx_brand_event_brand_id ON brand_event(brand_id);
CREATE INDEX idx_brand_event_event_id ON brand_event(event_id);
CREATE INDEX idx_brand_event_partnership_type ON brand_event(partnership_type); 