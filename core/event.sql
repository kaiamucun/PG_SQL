SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- eventテーブルの作成
DROP TABLE IF EXISTS event;

CREATE TABLE event (
    event_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    event_kind VARCHAR(20) DEFAULT NULL COMMENT 'japan, global',
    event_name VARCHAR(60) DEFAULT NULL COMMENT 'イベント名',
    start_date DATE DEFAULT NULL COMMENT '開始日 : YYYYMMDD',
    end_date DATE DEFAULT NULL COMMENT '終了日 : YYYYMMDD',
    main_price INT DEFAULT NULL COMMENT '-1: 権利者のみ',
    main_price_unit VARCHAR(3) DEFAULT NULL COMMENT 'JPY, USD, PHP,,,',
    venue_name VARCHAR(10) DEFAULT NULL COMMENT '会場施設名',
    PRIMARY KEY (event_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

-- event table
CREATE TABLE event (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    event_type VARCHAR(100), -- 'tournament', 'workshop', 'promotion', etc.
    venue_name VARCHAR(255),
    venue_address TEXT,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    registration_start TIMESTAMP,
    registration_end TIMESTAMP,
    max_participants INTEGER,
    current_participants INTEGER DEFAULT 0,
    entry_fee DECIMAL(10,2),
    prize_pool DECIMAL(12,2),
    status VARCHAR(50) DEFAULT 'scheduled', -- 'scheduled', 'ongoing', 'completed', 'cancelled'
    organizer_id BIGINT,
    contact_email VARCHAR(255),
    contact_phone VARCHAR(50),
    rules_url VARCHAR(512),
    stream_url VARCHAR(512),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_event_name ON event(name);
CREATE INDEX idx_event_event_type ON event(event_type);
CREATE INDEX idx_event_dates ON event(start_date, end_date);
CREATE INDEX idx_event_status ON event(status);
CREATE INDEX idx_event_organizer_id ON event(organizer_id); 