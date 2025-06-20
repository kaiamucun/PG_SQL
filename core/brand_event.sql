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

INSERT INTO brand_event(brand_no, event_no) VALUES(1, 1);
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 2);
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 3);
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 4);
INSERT INTO brand_event(brand_no, event_no) VALUES(1, 5);
INSERT INTO brand_event(brand_no, event_no) VALUES(2, 6);
INSERT INTO brand_event(brand_no, event_no) VALUES(4, 7);
INSERT INTO brand_event(brand_no, event_no) VALUES(5, 8);
INSERT INTO brand_event(brand_no, event_no) VALUES(7, 9);
INSERT INTO brand_event(brand_no, event_no) VALUES(8, 10);
INSERT INTO brand_event(brand_no, event_no) VALUES(8, 11);
INSERT INTO brand_event(brand_no, event_no) VALUES(9, 12);
INSERT INTO brand_event(brand_no, event_no) VALUES(10, 13);
INSERT INTO brand_event(brand_no, event_no) VALUES(20, 14);

COMMIT;