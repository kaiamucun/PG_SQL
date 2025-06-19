SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- admin_announceテーブルの作成
DROP TABLE IF EXISTS admin_announce;

CREATE TABLE admin_announce (
    announce_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    publish_dt DATETIME DEFAULT NULL COMMENT '公開日時',
    announce_text TEXT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (announce_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- admin_announce table
CREATE TABLE admin_announce (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    announce_type VARCHAR(100) NOT NULL, -- 'system', 'maintenance', 'promotion', 'warning', 'info'
    priority VARCHAR(50) DEFAULT 'normal', -- 'low', 'normal', 'high', 'critical'
    target_audience VARCHAR(100), -- 'all', 'admin', 'owner', 'user', 'org_specific'
    target_org_id BIGINT,
    is_active BOOLEAN DEFAULT TRUE,
    is_dismissible BOOLEAN DEFAULT TRUE,
    display_from TIMESTAMP NOT NULL,
    display_until TIMESTAMP,
    created_by BIGINT,
    updated_by BIGINT,
    read_count INTEGER DEFAULT 0,
    dismiss_count INTEGER DEFAULT 0,
    click_count INTEGER DEFAULT 0,
    action_url VARCHAR(512),
    action_text VARCHAR(100),
    style_config JSONB,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (target_org_id) REFERENCES org(id) ON DELETE CASCADE,
    FOREIGN KEY (created_by) REFERENCES admin_user(id) ON DELETE SET NULL,
    FOREIGN KEY (updated_by) REFERENCES admin_user(id) ON DELETE SET NULL
);

CREATE INDEX idx_admin_announce_announce_type ON admin_announce(announce_type);
CREATE INDEX idx_admin_announce_priority ON admin_announce(priority);
CREATE INDEX idx_admin_announce_target_audience ON admin_announce(target_audience);
CREATE INDEX idx_admin_announce_target_org_id ON admin_announce(target_org_id);
CREATE INDEX idx_admin_announce_is_active ON admin_announce(is_active);
CREATE INDEX idx_admin_announce_display_dates ON admin_announce(display_from, display_until);
CREATE INDEX idx_admin_announce_created_by ON admin_announce(created_by); 