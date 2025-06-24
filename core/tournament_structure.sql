SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tournament_structureテーブルの作成
DROP TABLE IF EXISTS tournament_structure;

CREATE TABLE tournament_structure (
    tournament_no INT NOT NULL,
    seq INT NOT NULL,
    level INT DEFAULT NULL COMMENT '-1=Break',
    small_blind INT DEFAULT NULL,
    big_blind INT DEFAULT NULL,
    giant_blind INT DEFAULT NULL,
    ante INT DEFAULT NULL,
    blind_min INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (tournament_no, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- Tournament 1: blind_min=15
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,2,2,50,100,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,3,3,75,150,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,4,4,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,5,5,150,300,0,25,15);

-- Tournament 2: blind_min=15
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,2,2,50,100,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,3,3,75,150,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,4,4,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,5,5,150,300,0,25,15);

-- Tournament 3: blind_min=15
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,2,2,50,100,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,3,3,75,150,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,4,4,100,200,0,0,15);

-- Tournament 4: blind_min=15
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,2,2,50,100,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,3,3,75,150,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,4,4,100,200,0,0,15);

-- Tournament 5: blind_min=10
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,1,1,25,50,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,2,2,50,100,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,3,3,75,150,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,4,4,100,200,0,0,10);

-- Tournament 6-40: (残りのトーナメント)
-- NOTE: 詳細は tournament_structure_remaining.sql を参照
-- ここでは簡略化のため基本構造のみ記載

-- Tournament 6: blind_min=10
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,1,1,25,50,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,2,2,50,100,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,3,3,75,150,0,0,10);

-- Tournament 7: blind_min=10
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,1,1,25,50,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,2,2,50,100,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,3,3,75,150,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,4,4,100,200,0,0,10);

-- Tournament 8-40の基本構造も追加（簡略版）
-- より詳細な構造が必要な場合は tournament_structure_remaining.sql を使用

-- Tournament 8: blind_min=20
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,2,2,50,100,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,3,3,75,150,0,0,20);

-- Tournament 9: blind_min=10
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,1,1,25,50,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,2,2,50,100,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,3,3,75,150,0,0,10);

-- Tournament 10: blind_min=20
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,2,2,50,100,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,3,3,75,150,0,0,20);

-- Tournament 11-40: 基本的なブラインド構造
-- 各トーナメントの blind_min に基づいて設定
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,1,1,25,50,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,1,1,25,50,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,1,1,25,50,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,1,1,50,100,0,0,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,1,1,50,100,0,0,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,1,1,25,50,0,0,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,1,1,25,50,0,0,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,1,1,50,100,0,0,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,1,1,25,50,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,1,1,25,50,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,1,1,25,50,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,1,1,25,50,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,1,1,25,50,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,1,1,25,50,0,0,20);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;