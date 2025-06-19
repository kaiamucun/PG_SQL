SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tournament_priceテーブルの作成
DROP TABLE IF EXISTS tournament_price;

CREATE TABLE tournament_price (
    tournament_no INT NOT NULL,
    price_type VARCHAR(20) NOT NULL COMMENT 'entry, reentry, addon',
    unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    price INT DEFAULT NULL,
    stack INT DEFAULT NULL,
    remark VARCHAR(20) DEFAULT NULL,
    PRIMARY KEY (tournament_no, price_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- tournament_price table
CREATE TABLE tournament_price (
    id BIGSERIAL PRIMARY KEY,
    tournament_id BIGINT NOT NULL,
    price_type VARCHAR(100) NOT NULL, -- 'buy_in', 'rebuy', 'addon', 'late_registration', etc.
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(10) DEFAULT 'JPY',
    description TEXT,
    early_bird_amount DECIMAL(10,2),
    early_bird_deadline TIMESTAMP,
    late_registration_amount DECIMAL(10,2),
    late_registration_start TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    effective_from TIMESTAMP,
    effective_until TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (tournament_id) REFERENCES tournament(id) ON DELETE CASCADE
);

CREATE INDEX idx_tournament_price_tournament_id ON tournament_price(tournament_id);
CREATE INDEX idx_tournament_price_price_type ON tournament_price(price_type);
CREATE INDEX idx_tournament_price_is_active ON tournament_price(is_active);
CREATE INDEX idx_tournament_price_effective_dates ON tournament_price(effective_from, effective_until); 