SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_ring_priceテーブルの作成
DROP TABLE IF EXISTS owner_ring_price;

CREATE TABLE owner_ring_price (
    owner_no INT NOT NULL,
    seq INT NOT NULL,
    stack INT DEFAULT NULL,
    price INT DEFAULT NULL,
    remark VARCHAR(40) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- owner_ring_price table
CREATE TABLE owner_ring_price (
    id BIGSERIAL PRIMARY KEY,
    owner_id BIGINT NOT NULL,
    ring_type VARCHAR(100) NOT NULL, -- 'standard', 'premium', 'vip', etc.
    ring_name VARCHAR(255),
    hourly_rate DECIMAL(10,2),
    daily_rate DECIMAL(10,2),
    weekly_rate DECIMAL(10,2),
    monthly_rate DECIMAL(10,2),
    deposit_amount DECIMAL(10,2),
    currency VARCHAR(10) DEFAULT 'JPY',
    capacity INTEGER,
    amenities TEXT,
    equipment_included TEXT,
    booking_rules TEXT,
    cancellation_policy TEXT,
    is_available BOOLEAN DEFAULT TRUE,
    effective_from DATE,
    effective_until DATE,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES owner(id) ON DELETE CASCADE
);

CREATE INDEX idx_owner_ring_price_owner_id ON owner_ring_price(owner_id);
CREATE INDEX idx_owner_ring_price_ring_type ON owner_ring_price(ring_type);
CREATE INDEX idx_owner_ring_price_is_available ON owner_ring_price(is_available);
CREATE INDEX idx_owner_ring_price_effective_dates ON owner_ring_price(effective_from, effective_until); 