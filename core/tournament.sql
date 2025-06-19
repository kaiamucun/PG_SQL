SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tournamentテーブルの作成
DROP TABLE IF EXISTS tournament;

CREATE TABLE tournament (
    tournament_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    tournament_name VARCHAR(60) DEFAULT NULL,
    start_dt DATETIME DEFAULT NULL,
    late_dt DATETIME DEFAULT NULL,
    end_dt DATETIME DEFAULT NULL,
    blind_min INT DEFAULT NULL COMMENT '非表示：structure存在',
    detail_html_no INT DEFAULT NULL COMMENT '0:非表示：空文字。（RFT）',
    entry_price INT DEFAULT NULL COMMENT 'エントリー費用',
    entry_price_unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    owner_no INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (tournament_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- tournament table
CREATE TABLE tournament (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    tournament_type VARCHAR(100), -- 'poker', 'blackjack', 'mahjong', etc.
    format VARCHAR(100), -- 'single_elimination', 'double_elimination', 'round_robin', etc.
    buy_in DECIMAL(10,2),
    entry_fee DECIMAL(10,2),
    rebuy_amount DECIMAL(10,2),
    addon_amount DECIMAL(10,2),
    prize_pool DECIMAL(12,2),
    guaranteed_prize DECIMAL(12,2),
    currency VARCHAR(10) DEFAULT 'JPY',
    max_participants INTEGER,
    current_participants INTEGER DEFAULT 0,
    min_participants INTEGER DEFAULT 2,
    registration_start TIMESTAMP,
    registration_end TIMESTAMP,
    start_time TIMESTAMP NOT NULL,
    estimated_end_time TIMESTAMP,
    actual_end_time TIMESTAMP,
    venue_id BIGINT,
    organizer_id BIGINT,
    status VARCHAR(50) DEFAULT 'scheduled', -- 'scheduled', 'registration_open', 'registration_closed', 'in_progress', 'completed', 'cancelled'
    rules TEXT,
    blind_structure TEXT,
    payout_structure TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_tournament_name ON tournament(name);
CREATE INDEX idx_tournament_tournament_type ON tournament(tournament_type);
CREATE INDEX idx_tournament_start_time ON tournament(start_time);
CREATE INDEX idx_tournament_status ON tournament(status);
CREATE INDEX idx_tournament_organizer_id ON tournament(organizer_id); 