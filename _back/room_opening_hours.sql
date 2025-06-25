SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- room_opening_hoursテーブルの作成
DROP TABLE IF EXISTS room_opening_hours;

CREATE TABLE room_opening_hours (
    room_no INT NOT NULL,
    dayofweek_no INT NOT NULL COMMENT '1=Mon,7=Sun,8=Pub',
    open_time TIME DEFAULT NULL COMMENT 'hh:mm (24h)',
    close_time TIME DEFAULT NULL COMMENT 'hh:mm (24h)',
    off TINYINT DEFAULT NULL COMMENT '0:営業日, 1:定休日',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (room_no, dayofweek_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,1,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,2,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,3,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,4,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,5,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,6,'11:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,7,'11:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(1,8,'11:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,1,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,2,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,3,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,4,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,5,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,6,'12:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,7,'12:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(2,8,'12:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,1,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,2,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,3,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,4,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,5,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,6,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,7,'13:00','22:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(3,8,'13:00','22:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,1,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,2,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,3,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,4,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,5,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,6,'11:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,7,'11:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(4,8,'11:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,1,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,2,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,3,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,4,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,5,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,6,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,7,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(5,8,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,1,'16:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,2,'16:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,3,'16:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,4,'16:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,5,'16:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,6,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,7,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(6,8,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,1,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,2,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,3,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,4,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,5,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,6,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,7,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(7,8,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,1,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,2,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,3,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,4,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,5,'13:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,6,'13:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,7,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(8,8,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,1,'13:30','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,2,'13:30','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,3,'13:30','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,4,'13:30','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,5,'13:30','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,6,'11:30','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,7,'11:30','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(9,8,'11:30','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,1,'21:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,2,'21:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,3,'21:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,4,'21:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,5,'21:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,6,'21:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,7,NULL,NULL,1);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(10,8,NULL,NULL,1);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,1,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,2,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,3,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,4,'15:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,5,'15:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,6,'12:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,7,'12:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(11,8,'12:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,1,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,2,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,3,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,4,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,5,'17:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,6,'13:00','22:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,7,'13:00','22:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(12,8,'13:00','22:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,1,'18:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,2,'18:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,3,'18:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,4,'18:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,5,'18:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,6,'13:00','23:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,7,'13:00','22:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(13,8,'13:00','22:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,1,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,2,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,3,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,4,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,5,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,6,'11:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,7,'11:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(14,8,'11:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,1,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,2,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,3,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,4,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,5,'13:00','23:30',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,6,'13:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,7,'13:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(15,8,'13:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,1,'15:00','25:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,2,'15:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,3,'15:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,4,'15:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,5,'15:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,6,'15:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,7,'13:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(16,8,NULL,NULL,0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,1,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,2,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,3,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,4,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,5,'15:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,6,'11:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,7,'11:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(17,8,'11:00','24:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,1,'20:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,2,'20:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,3,'20:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,4,'20:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,5,'20:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,6,'20:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,7,'20:00','5:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(18,8,NULL,NULL,1);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,1,'15:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,2,'15:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,3,'15:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,4,'15:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,5,'15:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,6,'13:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,7,'13:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(19,8,'13:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,1,'18:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,2,'18:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,3,'18:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,4,'18:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,5,'18:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,6,'13:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,7,'13:00','1:00',0);
INSERT INTO room_opening_hours(room_no,dayofweek_no,open_time,close_time,off) VALUES(20,8,'13:00','1:00',0);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1; 