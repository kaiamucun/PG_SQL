SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS owner;

CREATE TABLE owner (
    owner_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    owner_type VARCHAR(20) DEFAULT NULL COMMENT 'room, event, media',
    ref_no INT DEFAULT NULL COMMENT 'room_no, event_no, media_no',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(1,'room',1);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(2,'room',2);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(3,'room',3);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(4,'room',4);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(5,'room',5);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(6,'room',6);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(7,'room',7);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(8,'room',8);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(9,'room',9);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(10,'room',10);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(11,'room',11);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(12,'room',12);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(13,'room',13);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(14,'room',14);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(15,'room',15);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(16,'room',16);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(17,'room',17);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(18,'room',18);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(19,'room',19);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(20,'room',20);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(21,'event',1);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(22,'event',2);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(23,'event',3);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(24,'event',4);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(25,'event',5);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(26,'event',6);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(27,'event',7);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(28,'event',8);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(29,'event',9);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(30,'event',10);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(31,'event',11);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(32,'event',12);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(33,'event',13);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(34,'event',14);

COMMIT;