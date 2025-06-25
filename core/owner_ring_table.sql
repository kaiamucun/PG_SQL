SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_ring_tableテーブルの作成
DROP TABLE IF EXISTS owner_ring_table;

CREATE TABLE owner_ring_table (
    owner_no INT NOT NULL,
    table_no INT NOT NULL,
    game_tag_no INT DEFAULT NULL COMMENT 'NLH, PLO, MIX, etc..',
    game_king VARCHAR(10) DEFAULT NULL COMMENT 'NLH, PLO, MIX, etc..',
    small_blind INT DEFAULT NULL,
    big_blind INT DEFAULT NULL,
    giant_blind INT DEFAULT NULL,
    ante INT DEFAULT NULL,
    max_buyin INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, table_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- 各店舗のテーブルルール設定
-- 4つのスタック（250, 600, 1300, 4500）に対応するテーブルルール

-- NLHテーブルルール（各店舗に基本的な5テーブル）
-- テーブル1: sb=1, bb=2, ante=2 (250スタック向け)
-- テーブル2: sb=2, bb=5, ante=5 (600スタック向け)  
-- テーブル3: sb=5, bb=10, ante=10 (1300スタック向け)
-- テーブル4: sb=20, bb=40, ante=40 (4500スタック向け)
-- テーブル5: PLOミックスゲーム

-- アキバギルド (owner_no=1)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,5,2,'PLO',2,5,NULL,5,600);

-- イケブクロギルド (owner_no=2)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,5,2,'PLO',2,5,NULL,5,600);

-- カジクエ (owner_no=3)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,5,3,'MIX',2,5,NULL,5,600);

-- GGPL新宿 (owner_no=4)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,5,2,'PLO',2,5,NULL,5,600);

-- GGPL渋谷 (owner_no=5)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,5,2,'PLO',2,5,NULL,5,600);

-- GGPL名古屋 (owner_no=6)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,5,2,'PLO',2,5,NULL,5,600);

-- GGPL梅田 (owner_no=7)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,5,2,'PLO',2,5,NULL,5,600);

-- KKLP渋谷 (owner_no=8)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,5,3,'MIX',2,5,NULL,5,600);

-- KKLP新宿 (owner_no=9)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,5,2,'PLO',2,5,NULL,5,600);

-- 赤坂デポ (owner_no=10)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,5,3,'MIX',2,5,NULL,5,600);

-- CLT (owner_no=11)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,5,2,'PLO',2,5,NULL,5,600);

-- ナゴヤギルド (owner_no=12)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,5,2,'PLO',2,5,NULL,5,600);

-- 金沢ポーカーSPARKL (owner_no=13)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,5,3,'MIX',2,5,NULL,5,600);

-- ネコカジ秋葉原 (owner_no=14)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,5,2,'PLO',2,5,NULL,5,600);

-- ガットショット上野池之端 (owner_no=15)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,5,3,'MIX',2,5,NULL,5,600);

-- 大塚 RABBIT GIRL'S (owner_no=16)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,5,2,'PLO',2,5,NULL,5,600);

-- BACKDOOR六本木 (owner_no=17)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,5,2,'PLO',2,5,NULL,5,600);

-- ENPOKER町田 (owner_no=18)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,5,3,'MIX',2,5,NULL,5,600);

-- BUBBLE赤坂 (owner_no=19)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,5,2,'PLO',2,5,NULL,5,600);

-- 化猫ポーカー倶楽部 (owner_no=20)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_king,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,5,3,'MIX',2,5,NULL,5,600);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
