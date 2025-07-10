SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS owner;

CREATE TABLE owner (
    owner_no INT AUTO_INCREMENT COMMENT '[auto increment]',
    owner_type VARCHAR(20) DEFAULT NULL COMMENT 'room, event, media',
    ref_no INT DEFAULT NULL COMMENT 'room_no, event_no, media_no',
    lat BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    lon BIGINT DEFAULT NULL COMMENT '小数点以下6桁までサポート',
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(1,'room',1,35699457,139771018);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(2,'room',2,35729510,139715600);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(3,'room',3,35701030,139771290);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(4,'room',4,35694630,139700630);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(5,'room',5,35661538,139698189);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(6,'room',6,35167430,136903870);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(7,'room',7,34701700,135502310);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(8,'room',8,35661562,139697939);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(9,'room',9,35693968,139700955);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(10,'room',10,35676060,139736800);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(11,'room',11,35693968,139700955);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(12,'room',12,35168752,136880589);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(13,'room',13,36558922,136651425);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(14,'room',14,35697771,139771579);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(15,'room',15,35709410,139771340);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(16,'room',16,35732110,139729460);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(17,'room',17,35662700,139735290);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(18,'room',18,35541410,139447170);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(19,'room',19,35676440,139735920);
INSERT INTO owner(owner_no,owner_type,ref_no,lat,lon) VALUES(20,'room',20,35665670,139755080);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(21,'event',1,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(22,'event',2,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(23,'event',3,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(24,'event',4,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(25,'event',5,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(26,'event',6,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(27,'event',7,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(28,'event',8,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(29,'event',9,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(30,'event',10,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(31,'event',11,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(32,'event',12,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(33,'event',13,,);
INSERT INTO owner(owner_no,owner_type,ref_no) VALUES(34,'event',14,,);
,,
COMMIT;,,