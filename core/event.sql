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
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (event_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(1, 'japan', '2025 Tokyo #02', 20250717, 20250721, 100000, 'JPY', 'ベルサール高田馬場');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(2, 'japan', '2025 Sapporo #02', 20250912, 20250915, 100000, 'JPY', 'サッポロファクトリー');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(3, 'japan', '2025 Tokyo #03', 20251009, 20251013, 100000, 'JPY', 'ベルサール高田馬場');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(4, 'japan', '2025 Osaka #02', 20251030, 20251103, 100000, 'JPY', '堂島リバーフォーラム');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(5, 'japan', '2026 Tokyo #01', 20251227, 20260104, 100000, 'JPY', 'ベルサール高田馬場');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(6, 'japan', 'U-30 2025 SUMMER', 20250822, 20250824, 60000, 'JPY', 'ベルサール飯田橋');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(7, 'japan', 'SPADIE POKER LEAGUE FINAL Season38th', 20250808, 20250817, -1, 'JPY', 'ベルサール新宿');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(8, 'japan', '戦国ポーカーツアー2025-秋の陣-', 20250912, 20250915, 60000, 'JPY', 'ベルサール新宿');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(9, 'japan', 'SHINJUKU POKER FES ', 20250627, 20250627, 1000000, 'JPY', 'Humax新宿');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(10, 'japan', 'TPC Season 14', 20250724, 20250727, 1500000, 'JPY', '難波御堂筋ホール');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(11, 'japan', 'TPC Season 15', 20251211, 20251214, 1500000, 'JPY', '難波御堂筋ホール');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(12, 'japan', '百花繚乱', 20250607, 20250608, 1000000, 'JPY', 'DEER GOLD');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(13, 'japan', 'XPT', 20251121, 20251124, 2500000, 'JPY', 'NTTクレドホール');

INSERT INTO event(event_no, event_kind, event_name, start_date, end_date, main_price, main_price_unit, venue_name) 
VALUES(14, 'global', 'WSOP2025', 20250527, 20250716, 10000, 'USD', 'LasVegas');

COMMIT;