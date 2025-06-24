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

-- =================================================
-- 現実的なポーカートーナメント構造
-- 基本: 100単位でブラインド増加、12-20レベル
-- 時間制約: 各トーナメントの開始〜終了時間に合わせて調整
-- =================================================

-- Tournament 1: ♠SPADIE『昼下がりのポーカー』【昼ポ】(2500円/15分レベル/6時間45分)
-- エントリー2500円 → 初期スタック30,000想定
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,2,2,200,400,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,3,3,300,600,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,4,4,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,5,-1,0,0,0,0,15);  -- Break 10分
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,6,5,500,1000,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,7,6,600,1200,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,8,7,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,9,8,1000,2000,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,10,-1,0,0,0,0,15);  -- Break 10分
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,11,9,1200,2400,0,300,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,12,10,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,13,11,2000,4000,0,500,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,14,12,2500,5000,0,600,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,15,13,3000,6000,0,800,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,16,14,4000,8000,0,1000,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,17,15,5000,10000,0,1200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(1,18,16,6000,12000,0,1500,15);

-- Tournament 2: ♠SPADIE『平日夜のトーナメント』【夜ポ】(3000円/15分レベル/5時間)
-- エントリー3000円 → 初期スタック40,000想定
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,2,2,200,400,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,3,3,300,600,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,4,4,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,5,-1,0,0,0,0,15);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,6,5,500,1000,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,7,6,600,1200,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,8,7,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,9,8,1000,2000,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,10,-1,0,0,0,0,15);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,11,9,1200,2400,0,300,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,12,10,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,13,11,2000,4000,0,500,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,14,12,2500,5000,0,600,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,15,13,3000,6000,0,800,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(2,16,14,4000,8000,0,1000,15);

-- Tournament 3: 1000円昼ポーカー(1000円/15分レベル/2時間)
-- エントリー1000円 → 初期スタック15,000想定 (短時間ターボ)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,2,2,200,400,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,3,3,300,600,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,4,4,500,1000,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,5,5,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,6,6,1000,2000,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,7,7,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(3,8,8,2000,4000,0,500,15);

-- Tournament 4: Ikebukuro Daily 4K(4000円/15分レベル/5時間)
-- エントリー4000円 → 初期スタック50,000想定
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,2,2,200,400,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,3,3,300,600,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,4,4,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,5,-1,0,0,0,0,15);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,6,5,500,1000,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,7,6,600,1200,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,8,7,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,9,8,1000,2000,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,10,-1,0,0,0,0,15);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,11,9,1200,2400,0,300,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,12,10,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,13,11,2000,4000,0,500,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,14,12,2500,5000,0,600,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,15,13,3000,6000,0,800,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(4,16,14,4000,8000,0,1000,15);

-- Tournament 5: Daily NLH 4K(4000円/10分レベル/5時間)
-- エントリー4000円 → 初期スタック40,000想定 (10分レベル=ターボ)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,2,2,200,400,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,3,3,300,600,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,4,4,400,800,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,5,5,500,1000,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,6,-1,0,0,0,0,10);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,7,6,600,1200,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,8,7,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,9,8,1000,2000,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,10,9,1200,2400,0,300,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,11,10,1500,3000,0,400,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,12,-1,0,0,0,0,10);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,13,11,2000,4000,0,500,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,14,12,2500,5000,0,600,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,15,13,3000,6000,0,800,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,16,14,4000,8000,0,1000,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,17,15,5000,10000,0,1200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(5,18,16,6000,12000,0,1500,10);

-- Tournament 6: Daily Turbo 1K(1000円/10分レベル/2時間)
-- エントリー1000円 → 初期スタック15,000想定 (短時間ターボ)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,2,2,200,400,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,3,3,300,600,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,4,4,500,1000,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,5,5,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,6,6,1000,2000,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,7,7,1500,3000,0,400,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,8,8,2000,4000,0,500,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,9,9,2500,5000,0,600,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,10,10,3000,6000,0,800,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,11,11,4000,8000,0,1000,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(6,12,12,5000,10000,0,1200,10);

-- Tournament 7: Daily Deep Stacks 3K(4000円/10分レベル/9時間)
-- エントリー4000円 → 初期スタック60,000想定 (Deep Stack)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,2,2,200,400,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,3,3,300,600,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,4,4,400,800,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,5,5,500,1000,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,6,-1,0,0,0,0,10);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,7,6,600,1200,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,8,7,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,9,8,1000,2000,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,10,9,1200,2400,0,300,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,11,10,1500,3000,0,400,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,12,-1,0,0,0,0,10);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,13,11,2000,4000,0,500,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,14,12,2500,5000,0,600,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,15,13,3000,6000,0,800,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,16,14,4000,8000,0,1000,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,17,15,5000,10000,0,1200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(7,18,16,6000,12000,0,1500,10);

-- Tournament 8: Thursday Double Stack 3K(3000円/20分レベル/5時間)
-- エントリー3000円 → 初期スタック50,000想定 (Double Stack)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,2,2,200,400,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,3,3,300,600,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,5,-1,0,0,0,0,20);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,6,5,500,1000,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,7,6,600,1200,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,8,7,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,9,8,1000,2000,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,10,-1,0,0,0,0,20);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,11,9,1200,2400,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,12,10,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(8,13,11,2000,4000,0,500,20);

-- Tournament 9: Speed Racer 1K(1000円/10分レベル/2時間)
-- エントリー1000円 → 初期スタック10,000想定 (超短時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,2,2,200,400,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,3,3,300,600,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,4,4,400,800,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,5,5,600,1200,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,6,6,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,7,7,1000,2000,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,8,8,1200,2400,0,300,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,9,9,1500,3000,0,400,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,10,10,2000,4000,0,500,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,11,11,2500,5000,0,600,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(9,12,12,3000,6000,0,800,10);

-- Tournament 10: Daily NLH 2.5K(2500円/20分レベル/5時間)
-- エントリー2500円 → 初期スタック20,000想定
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,2,2,200,400,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,3,3,300,600,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,4,4,400,800,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,5,5,500,1000,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,6,-1,0,0,0,0,20);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,7,6,600,1200,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,8,7,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,9,8,1000,2000,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,10,9,1200,2400,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,11,10,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,12,-1,0,0,0,0,20);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,13,11,2000,4000,0,500,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,14,12,2500,5000,0,600,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(10,15,13,3000,6000,0,800,20);

-- Tournament 11: Day1A High Roller 10K(10000円/10分レベル/2時間)
-- エントリー10000円 → 初期スタック20,000想定 (High Roller Turbo)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,2,2,200,400,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,3,3,400,800,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,4,4,600,1200,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,5,5,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,6,6,1000,2000,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(11,7,7,1500,3000,0,400,10);

-- Tournament 12: 土曜メイン(3000円/15分レベル/4時間)
-- エントリー3000円 → 初期スタック30,000想定
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,2,2,200,400,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,3,3,300,600,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,4,4,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,5,5,500,1000,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,6,6,600,1200,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,7,7,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,8,8,1000,2000,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,9,9,1200,2400,0,300,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,10,10,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,11,11,2000,4000,0,500,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,12,12,2500,5000,0,600,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,13,13,3000,6000,0,800,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(12,14,14,4000,8000,0,1000,15);

-- Tournament 13: Sunday Big Event(10000円/25分レベル/10時間)
-- エントリー10000円 → 初期スタック100,000想定 (Big Event)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,1,1,100,200,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,2,2,200,400,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,3,3,300,600,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,4,4,400,800,0,100,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,5,5,500,1000,0,100,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,6,-1,0,0,0,0,25);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,7,6,600,1200,0,100,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,8,7,800,1600,0,200,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,9,8,1000,2000,0,200,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,10,9,1200,2400,0,300,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,11,-1,0,0,0,0,25);  -- Break
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,12,11,1500,3000,0,400,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(13,13,12,2000,4000,0,500,25);

-- Tournament 14: Sunday 15K GTD(2500円/15分レベル/3時間)
-- エントリー2500円 → 初期スタック20,000想定
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,2,2,200,400,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,3,3,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,4,4,600,1200,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,5,5,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,6,6,1000,2000,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(14,7,7,1500,3000,0,400,15);

-- Tournament 15: Sunday Late Night(4000円/25分レベル/6時間)
-- エントリー4000円 → 初期スタック60,000想定 (Deep)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,1,1,100,200,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,2,2,200,400,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,3,3,300,600,0,0,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,4,4,400,800,0,100,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,5,5,500,1000,0,100,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,6,6,600,1200,0,100,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,7,7,800,1600,0,200,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,8,8,1000,2000,0,200,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,9,9,1200,2400,0,300,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,10,10,1500,3000,0,400,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,11,11,2000,4000,0,500,25);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(15,12,12,2500,5000,0,600,25);

-- Tournament 16: 早朝ポーカー(2000円/20分レベル/3時間)
-- エントリー2000円 → 初期スタック20,000想定 (早朝短時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,6,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,7,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,8,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(16,9,9,2000,4000,0,500,20);

-- Tournament 17: Morning Glory 2K(2000円/20分レベル/3時間)
-- エントリー2000円 → 初期スタック20,000想定 (モーニング)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,6,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,7,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,8,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(17,9,9,2000,4000,0,500,20);

-- Tournament 18: Morning Breaker 1.5K(1500円/15分レベル/2.5時間)
-- エントリー1500円 → 初期スタック15,000想定 (短時間モーニング)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,2,2,200,400,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,3,3,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,4,4,600,1200,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,5,5,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,6,6,1000,2000,0,300,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,7,7,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,8,8,2000,4000,0,500,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,9,9,3000,6000,0,800,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(18,10,10,4000,8000,0,1000,15);

-- Tournament 19: High Roller Midnight 10K(10000円/30分レベル/6-7時間)
-- エントリー10000円 → 初期スタック100,000想定 (ディープスタック深夜高額)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,1,1,100,200,0,0,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,2,2,200,400,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,3,3,300,600,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,4,4,400,800,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,5,5,500,1000,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,6,-1,0,0,0,0,15);  -- ブレイク
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,7,6,600,1200,0,200,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,8,7,800,1600,0,200,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,9,8,1000,2000,0,300,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,10,9,1200,2400,0,300,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,11,10,1500,3000,0,400,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,12,-1,0,0,0,0,15);  -- ブレイク
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,13,11,2000,4000,0,500,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,14,12,2500,5000,0,600,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,15,13,3000,6000,0,800,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,16,14,4000,8000,0,1000,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,17,15,5000,10000,0,1200,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(19,18,16,6000,12000,0,1500,30);

-- Tournament 20: Super High Roller 15K(15000円/40分レベル/8時間)
-- エントリー15000円 → 初期スタック150,000想定 (最高額ディープスタック)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,1,1,100,200,0,0,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,2,2,200,400,0,100,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,3,3,300,600,0,100,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,4,4,400,800,0,100,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,5,5,500,1000,0,100,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,6,6,600,1200,0,100,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,7,-1,0,0,0,0,20);  -- ブレイク
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,8,7,800,1600,0,200,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,9,8,1000,2000,0,300,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,10,9,1200,2400,0,300,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,11,10,1500,3000,0,400,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,12,11,2000,4000,0,500,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,13,-1,0,0,0,0,20);  -- ブレイク
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,14,12,2500,5000,0,600,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,15,13,3000,6000,0,800,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,16,14,4000,8000,0,1000,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,17,15,5000,10000,0,1200,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,18,16,6000,12000,0,1500,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,19,17,8000,16000,0,2000,40);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(20,20,18,10000,20000,0,2500,40);

-- Tournament 21: Progressive Jackpot 2K(2000円/20分レベル/4時間)
-- エントリー2000円 → 初期スタック20,000想定 (プログレッシブ)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,6,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,7,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,8,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,9,9,2000,4000,0,500,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,10,10,2500,5000,0,600,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,11,11,3000,6000,0,800,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(21,12,12,4000,8000,0,1000,20);

-- Tournament 22: Lightning Round 800(800円/12分レベル/2時間)
-- エントリー800円 → 初期スタック8,000想定 (超短時間ライトニング)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,1,1,100,200,0,0,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,2,2,200,400,0,0,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,3,3,300,600,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,4,4,500,1000,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,5,5,800,1600,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,6,6,1000,2000,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,7,7,1500,3000,0,400,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,8,8,2000,4000,0,500,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,9,9,3000,6000,0,800,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(22,10,10,4000,8000,0,1000,12);

-- Tournament 23-26: ミッドクイック(20分/12レベル)
-- Tournament 23: Rush Poker 1.5K(1500円/20分レベル/4時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,6,-1,0,0,0,0,10);  -- ブレイク
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,7,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,8,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,9,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,10,9,2000,4000,0,500,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,11,10,2500,5000,0,600,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,12,11,3000,6000,0,800,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(23,13,12,4000,8000,0,1000,20);

-- Tournament 24: Afternoon Quick 1K(1000円/15分レベル/3時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,2,2,200,400,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,3,3,300,600,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,4,4,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,5,5,600,1200,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,6,6,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,7,7,1000,2000,0,300,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,8,8,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,9,9,2000,4000,0,500,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,10,10,2500,5000,0,600,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,11,11,3000,6000,0,800,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(24,12,12,4000,8000,0,1000,15);

-- Tournament 25: Evening Start 2K(2000円/20分レベル/4時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,6,-1,0,0,0,0,10);  -- ブレイク
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,7,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,8,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,9,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,10,9,2000,4000,0,500,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,11,10,2500,5000,0,600,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,12,11,3000,6000,0,800,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(25,13,12,4000,8000,0,1000,20);

-- Tournament 26: Night Express 1.5K(1500円/20分レベル/4時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,6,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,7,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,8,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,9,9,2000,4000,0,500,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,10,10,2500,5000,0,600,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,11,11,3000,6000,0,800,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(26,12,12,4000,8000,0,1000,20);

-- Tournament 27-30: 中級構造(12レベル)
-- Tournament 27: Weekend Warrior 2.5K(2500円/20分レベル/4時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,6,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,7,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,8,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,9,9,2000,4000,0,500,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,10,10,2500,5000,0,600,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,11,11,3000,6000,0,800,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(27,12,12,4000,8000,0,1000,20);

-- Tournament 28: Happy Hour 1.8K(1800円/20分レベル/4時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,1,1,100,200,0,0,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,2,2,200,400,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,3,3,300,600,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,4,4,400,800,0,100,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,5,5,600,1200,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,6,6,800,1600,0,200,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,7,7,1000,2000,0,300,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,8,8,1500,3000,0,400,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,9,9,2000,4000,0,500,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,10,10,2500,5000,0,600,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,11,11,3000,6000,0,800,20);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(28,12,12,4000,8000,0,1000,20);

-- Tournament 29: Deep Night 5K(5000円/30分レベル/6時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,1,1,100,200,0,0,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,2,2,200,400,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,3,3,300,600,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,4,4,400,800,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,5,5,600,1200,0,200,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,6,-1,0,0,0,0,15);  -- ブレイク
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,7,6,800,1600,0,200,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,8,7,1000,2000,0,300,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,9,8,1500,3000,0,400,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,10,9,2000,4000,0,500,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,11,10,2500,5000,0,600,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,12,11,3000,6000,0,800,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(29,13,12,4000,8000,0,1000,30);

-- Tournament 30: Ultra Deep 8K(8000円/30分レベル/6時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,1,1,100,200,0,0,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,2,2,200,400,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,3,3,300,600,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,4,4,400,800,0,100,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,5,5,600,1200,0,200,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,6,6,800,1600,0,200,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,7,7,1000,2000,0,300,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,8,8,1500,3000,0,400,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,9,9,2000,4000,0,500,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,10,10,2500,5000,0,600,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,11,11,3000,6000,0,800,30);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(30,12,12,4000,8000,0,1000,30);

-- Tournament 31-40: 12レベル構造
-- Tournament 31: Rapid Fire 800(800円/10分レベル/2時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,2,2,200,400,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,3,3,300,600,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,4,4,400,800,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,5,5,600,1200,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,6,6,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,7,7,1000,2000,0,300,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,8,8,1500,3000,0,400,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,9,9,2000,4000,0,500,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,10,10,2500,5000,0,600,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,11,11,3000,6000,0,800,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(31,12,12,4000,8000,0,1000,10);

-- Tournament 32: Speed Play 600(600円/8分レベル/1.5時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,1,1,100,200,0,0,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,2,2,200,400,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,3,3,300,600,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,4,4,400,800,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,5,5,600,1200,0,200,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,6,6,800,1600,0,200,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,7,7,1000,2000,0,300,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,8,8,1500,3000,0,400,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,9,9,2000,4000,0,500,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,10,10,2500,5000,0,600,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,11,11,3000,6000,0,800,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(32,12,12,4000,8000,0,1000,8);

-- Tournament 33: Power Play 1.2K(1200円/12分レベル/2.5時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,1,1,100,200,0,0,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,2,2,200,400,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,3,3,300,600,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,4,4,400,800,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,5,5,600,1200,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,6,6,800,1600,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,7,7,1000,2000,0,300,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,8,8,1500,3000,0,400,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,9,9,2000,4000,0,500,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,10,10,2500,5000,0,600,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,11,11,3000,6000,0,800,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(33,12,12,4000,8000,0,1000,12);

-- Tournament 34: Blitz 900(900円/10分レベル/2時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,2,2,200,400,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,3,3,300,600,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,4,4,400,800,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,5,5,600,1200,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,6,6,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,7,7,1000,2000,0,300,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,8,8,1500,3000,0,400,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,9,9,2000,4000,0,500,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,10,10,2500,5000,0,600,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,11,11,3000,6000,0,800,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(34,12,12,4000,8000,0,1000,10);

-- Tournament 35: Flash 700(700円/8分レベル/1.5時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,1,1,100,200,0,0,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,2,2,200,400,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,3,3,300,600,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,4,4,400,800,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,5,5,600,1200,0,200,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,6,6,800,1600,0,200,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,7,7,1000,2000,0,300,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,8,8,1500,3000,0,400,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,9,9,2000,4000,0,500,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,10,10,2500,5000,0,600,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,11,11,3000,6000,0,800,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(35,12,12,4000,8000,0,1000,8);

-- Tournament 36: Quick Strike 1.1K(1100円/12分レベル/2.5時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,1,1,100,200,0,0,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,2,2,200,400,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,3,3,300,600,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,4,4,400,800,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,5,5,600,1200,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,6,6,800,1600,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,7,7,1000,2000,0,300,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,8,8,1500,3000,0,400,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,9,9,2000,4000,0,500,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,10,10,2500,5000,0,600,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,11,11,3000,6000,0,800,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(36,12,12,4000,8000,0,1000,12);

-- Tournament 37: Express 1.3K(1300円/15分レベル/3時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,1,1,100,200,0,0,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,2,2,200,400,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,3,3,300,600,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,4,4,400,800,0,100,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,5,5,600,1200,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,6,6,800,1600,0,200,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,7,7,1000,2000,0,300,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,8,8,1500,3000,0,400,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,9,9,2000,4000,0,500,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,10,10,2500,5000,0,600,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,11,11,3000,6000,0,800,15);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(37,12,12,4000,8000,0,1000,15);

-- Tournament 38: Lightning 800(800円/8分レベル/1.5時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,1,1,100,200,0,0,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,2,2,200,400,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,3,3,300,600,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,4,4,400,800,0,100,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,5,5,600,1200,0,200,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,6,6,800,1600,0,200,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,7,7,1000,2000,0,300,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,8,8,1500,3000,0,400,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,9,9,2000,4000,0,500,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,10,10,2500,5000,0,600,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,11,11,3000,6000,0,800,8);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(38,12,12,4000,8000,0,1000,8);

-- Tournament 39: Burst 1K(1000円/10分レベル/2時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,1,1,100,200,0,0,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,2,2,200,400,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,3,3,300,600,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,4,4,400,800,0,100,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,5,5,600,1200,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,6,6,800,1600,0,200,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,7,7,1000,2000,0,300,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,8,8,1500,3000,0,400,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,9,9,2000,4000,0,500,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,10,10,2500,5000,0,600,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,11,11,3000,6000,0,800,10);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(39,12,12,4000,8000,0,1000,10);

-- Tournament 40: Ultra Dash 1.5K(1500円/12分レベル/2.5時間)
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,1,1,100,200,0,0,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,2,2,200,400,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,3,3,300,600,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,4,4,400,800,0,100,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,5,5,600,1200,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,6,6,800,1600,0,200,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,7,7,1000,2000,0,300,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,8,8,1500,3000,0,400,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,9,9,2000,4000,0,500,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,10,10,2500,5000,0,600,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,11,11,3000,6000,0,800,12);
INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES(40,12,12,4000,8000,0,1000,12);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;