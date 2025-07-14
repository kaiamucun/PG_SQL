SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_ring_tableテーブルの作成
DROP TABLE IF EXISTS owner_ring_table;

CREATE TABLE owner_ring_table (
    owner_no INT NOT NULL,
    table_no INT NOT NULL,
    game_tag_no INT DEFAULT NULL COMMENT 'NLH, PLO, MIX, etc..',
    game_kind VARCHAR(10) DEFAULT NULL COMMENT 'NLH, PLO, MIX, etc..',
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
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(1,5,2,'PLO',2,5,NULL,5,600);

-- イケブクロギルド (owner_no=2)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(2,5,2,'PLO',2,5,NULL,5,600);

-- カジクエ (owner_no=3)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(3,5,3,'MIX',2,5,NULL,5,600);

-- GGPL新宿 (owner_no=4)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(4,5,2,'PLO',2,5,NULL,5,600);

-- GGPL渋谷 (owner_no=5)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(5,5,2,'PLO',2,5,NULL,5,600);

-- GGPL名古屋 (owner_no=6)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(6,5,2,'PLO',2,5,NULL,5,600);

-- GGPL梅田 (owner_no=7)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(7,5,2,'PLO',2,5,NULL,5,600);

-- KKLP渋谷 (owner_no=8)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(8,5,3,'MIX',2,5,NULL,5,600);

-- KKLP新宿 (owner_no=9)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(9,5,2,'PLO',2,5,NULL,5,600);

-- 赤坂デポ (owner_no=10)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(10,5,3,'MIX',2,5,NULL,5,600);

-- CLT (owner_no=11)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(11,5,2,'PLO',2,5,NULL,5,600);

-- ナゴヤギルド (owner_no=12)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(12,5,2,'PLO',2,5,NULL,5,600);

-- 金沢ポーカーSPARKL (owner_no=13)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(13,5,3,'MIX',2,5,NULL,5,600);

-- ネコカジ秋葉原 (owner_no=14)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(14,5,2,'PLO',2,5,NULL,5,600);

-- ガットショット上野池之端 (owner_no=15)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(15,5,3,'MIX',2,5,NULL,5,600);

-- 大塚 RABBIT GIRL'S (owner_no=16)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(16,5,2,'PLO',2,5,NULL,5,600);

-- BACKDOOR六本木 (owner_no=17)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(17,5,2,'PLO',2,5,NULL,5,600);

-- ENPOKER町田 (owner_no=18)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(18,5,3,'MIX',2,5,NULL,5,600);

-- BUBBLE赤坂 (owner_no=19)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(19,5,2,'PLO',2,5,NULL,5,600);

-- 化猫ポーカー倶楽部 (owner_no=20)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(20,5,3,'MIX',2,5,NULL,5,600);

-- 【五反田】Queen Pocket (owner_no=21)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(21,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(21,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(21,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(21,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(21,5,2,'PLO',2,5,NULL,5,600);

-- 【新宿】ALL IN POKER CLUB (owner_no=22)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(22,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(22,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(22,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(22,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(22,5,3,'MIX',2,5,NULL,5,600);

-- 【飯田橋】BIG BOSS JAPAN (owner_no=23)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(23,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(23,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(23,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(23,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(23,5,2,'PLO',2,5,NULL,5,600);

-- Amusement Shisha＆Poker Bar PukuPuku 新橋 (owner_no=24)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(24,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(24,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(24,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(24,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(24,5,3,'MIX',2,5,NULL,5,600);

-- ASOBIBAR Lecoeur 赤羽店 (owner_no=25)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(25,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(25,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(25,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(25,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(25,5,2,'PLO',2,5,NULL,5,600);

-- BACKDOOR GINZA (owner_no=26)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(26,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(26,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(26,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(26,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(26,5,3,'MIX',2,5,NULL,5,600);

-- BACKDOOR KICHIJOJI (owner_no=27)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(27,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(27,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(27,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(27,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(27,5,2,'PLO',2,5,NULL,5,600);

-- BACKDOOR SHIMOKITA (owner_no=28)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(28,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(28,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(28,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(28,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(28,5,3,'MIX',2,5,NULL,5,600);

-- BACKDOOR 宇都宮 (owner_no=29)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(29,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(29,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(29,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(29,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(29,5,2,'PLO',2,5,NULL,5,600);

-- BACKDOOR 浅草橋 (owner_no=30)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(30,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(30,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(30,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(30,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(30,5,3,'MIX',2,5,NULL,5,600);

-- BACKDOOR宇都宮東 (owner_no=31)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(31,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(31,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(31,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(31,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(31,5,2,'PLO',2,5,NULL,5,600);

-- BACKDOOR十三 (owner_no=32)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(32,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(32,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(32,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(32,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(32,5,3,'MIX',2,5,NULL,5,600);

-- BARRLE AKASAKA (owner_no=33)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(33,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(33,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(33,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(33,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(33,5,2,'PLO',2,5,NULL,5,600);

-- BARRLE IKEBUKURO (owner_no=34)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(34,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(34,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(34,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(34,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(34,5,3,'MIX',2,5,NULL,5,600);

-- BARRLE LasVegas (owner_no=35)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(35,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(35,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(35,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(35,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(35,5,2,'PLO',2,5,NULL,5,600);

-- BARRLE NEST 高田馬場 (owner_no=36)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(36,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(36,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(36,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(36,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(36,5,3,'MIX',2,5,NULL,5,600);

-- BLOW 渋谷 (owner_no=37)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(37,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(37,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(37,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(37,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(37,5,2,'PLO',2,5,NULL,5,600);

-- BUBBLE 恵比寿店 (owner_no=38)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(38,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(38,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(38,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(38,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(38,5,3,'MIX',2,5,NULL,5,600);

-- BUBBLE六本木 (owner_no=39)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(39,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(39,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(39,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(39,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(39,5,2,'PLO',2,5,NULL,5,600);

-- casa 上野店 (owner_no=40)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(40,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(40,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(40,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(40,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(40,5,3,'MIX',2,5,NULL,5,600);

-- 残りの店舗データ (owner_no=41-87)
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(41,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(41,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(41,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(41,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(41,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(42,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(42,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(42,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(42,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(42,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(43,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(43,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(43,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(43,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(43,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(44,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(44,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(44,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(44,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(44,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(45,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(45,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(45,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(45,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(45,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(46,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(46,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(46,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(46,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(46,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(47,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(47,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(47,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(47,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(47,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(48,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(48,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(48,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(48,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(48,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(49,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(49,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(49,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(49,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(49,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(50,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(50,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(50,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(50,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(50,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(51,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(51,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(51,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(51,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(51,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(52,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(52,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(52,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(52,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(52,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(53,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(53,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(53,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(53,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(53,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(54,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(54,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(54,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(54,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(54,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(55,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(55,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(55,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(55,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(55,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(56,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(56,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(56,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(56,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(56,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(57,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(57,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(57,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(57,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(57,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(58,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(58,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(58,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(58,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(58,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(59,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(59,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(59,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(59,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(59,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(60,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(60,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(60,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(60,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(60,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(61,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(61,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(61,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(61,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(61,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(62,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(62,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(62,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(62,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(62,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(63,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(63,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(63,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(63,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(63,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(64,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(64,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(64,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(64,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(64,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(65,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(65,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(65,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(65,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(65,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(66,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(66,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(66,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(66,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(66,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(67,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(67,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(67,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(67,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(67,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(68,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(68,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(68,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(68,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(68,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(69,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(69,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(69,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(69,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(69,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(70,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(70,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(70,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(70,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(70,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(71,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(71,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(71,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(71,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(71,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(72,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(72,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(72,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(72,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(72,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(73,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(73,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(73,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(73,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(73,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(74,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(74,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(74,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(74,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(74,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(75,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(75,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(75,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(75,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(75,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(76,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(76,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(76,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(76,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(76,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(77,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(77,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(77,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(77,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(77,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(78,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(78,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(78,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(78,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(78,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(79,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(79,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(79,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(79,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(79,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(80,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(80,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(80,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(80,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(80,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(81,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(81,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(81,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(81,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(81,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(82,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(82,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(82,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(82,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(82,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(83,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(83,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(83,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(83,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(83,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(84,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(84,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(84,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(84,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(84,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(85,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(85,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(85,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(85,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(85,5,2,'PLO',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(86,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(86,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(86,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(86,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(86,5,3,'MIX',2,5,NULL,5,600);

INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(87,1,1,'NLH',1,2,NULL,2,250);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(87,2,1,'NLH',2,5,NULL,5,600);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(87,3,1,'NLH',5,10,NULL,10,1300);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(87,4,1,'NLH',20,40,NULL,40,4500);
INSERT INTO owner_ring_table(owner_no,table_no,game_tag_no,game_kind,small_blind,big_blind,giant_blind,ante,max_buyin) VALUES(87,5,2,'PLO',2,5,NULL,5,600);

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
