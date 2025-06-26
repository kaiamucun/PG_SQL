SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

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

-- Japan Open Poker Tour関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 1); -- 2025 Tokyo #02
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 2); -- 2025 Sapporo #02
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 3); -- 2025 Tokyo #03
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 4); -- 2025 Osaka #02
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 5); -- 2026 Tokyo #01

-- 学生ポーカー選手権 U-30関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(2, 6); -- U-30 2025 SUMMER

-- Spadie Poker League関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(4, 7); -- SPADIE POKER LEAGUE FINAL Season38th

-- 戦国ポーカーツアー関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(5, 8); -- 戦国ポーカーツアー2025-秋の陣-

-- SHINJUKU POKER FES関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(7, 9); -- SHINJUKU POKER FES

-- Top of Poker Championship関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(8, 10); -- TPC Season 14
INSERT INTO brand_event(brand_no, event_no) VALUES(8, 11); -- TPC Season 15

-- 百花繚乱関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(9, 12); -- 百花繚乱

-- XPT関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(10, 13); -- XPT

-- World Series of Poker関連イベント
INSERT INTO brand_event(brand_no, event_no) VALUES(20, 14); -- WSOP2025

COMMIT;