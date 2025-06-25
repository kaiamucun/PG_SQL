SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_ring_priceテーブルの作成
DROP TABLE IF EXISTS owner_ring_price;

CREATE TABLE owner_ring_price (
    owner_no INT NOT NULL,
    seq INT NOT NULL,
    stack INT DEFAULT NULL,
    price INT DEFAULT NULL,
    remark VARCHAR(40) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- 全20店舗に4つの料金プランを設定
-- 250 stack = 3,000円, 600 stack = 5,000円, 1,300 stack = 10,000円, 4,500 stack = 30,000円

-- アキバギルド (owner_no=1)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(1,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(1,2,600,4500,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(1,3,1300,9500,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(1,4,4500,28000,'4500');

-- イケブクロギルド (owner_no=2)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(2,1,250,3200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(2,2,600,5200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(2,3,1300,10500,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(2,4,4500,32000,'4500');

-- カジクエ (owner_no=3)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(3,1,250,2500,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(3,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(3,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(3,4,4500,26500,'4500');

-- GGPL新宿 (owner_no=4)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(4,1,250,3500,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(4,2,600,5800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(4,3,1300,11200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(4,4,4500,33500,'4500');

-- GGPL渋谷 (owner_no=5)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(5,1,250,3100,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(5,2,600,5300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(5,3,1300,9800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(5,4,4500,29800,'4500');

-- GGPL名古屋 (owner_no=6)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(6,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(6,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(6,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(6,4,4500,27800,'4500');

-- GGPL梅田 (owner_no=7)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(7,1,250,3300,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(7,2,600,5500,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(7,3,1300,10800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(7,4,4500,31200,'4500');

-- KKLP渋谷 (owner_no=8)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(8,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(8,2,600,4900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(8,3,1300,9600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(8,4,4500,28800,'4500');

-- KKLP新宿 (owner_no=9)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(9,1,250,3600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(9,2,600,5900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(9,3,1300,11500,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(9,4,4500,34200,'4500');

-- 赤坂デポ (owner_no=10)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(10,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(10,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(10,3,1300,8500,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(10,4,4500,25800,'4500');

-- CLT (owner_no=11)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(11,1,250,3400,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(11,2,600,5600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(11,3,1300,10200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(11,4,4500,30500,'4500');

-- ナゴヤギルド (owner_no=12)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(12,1,250,2400,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(12,2,600,4200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(12,3,1300,8200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(12,4,4500,24500,'4500');

-- 金沢ポーカーSPARKL (owner_no=13)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(13,1,250,2200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(13,2,600,4000,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(13,3,1300,7800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(13,4,4500,23500,'4500');

-- ネコカジ秋葉原 (owner_no=14)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(14,1,250,3700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(14,2,600,6000,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(14,3,1300,11800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(14,4,4500,35000,'4500');

-- ガットショット上野池之端 (owner_no=15)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(15,1,250,3000,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(15,2,600,5100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(15,3,1300,9300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(15,4,4500,27200,'4500');

-- 大塚 RABBIT GIRL'S (owner_no=16)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(16,1,250,2300,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(16,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(16,3,1300,8000,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(16,4,4500,24000,'4500');

-- BACKDOOR六本木 (owner_no=17)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(17,1,250,3800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(17,2,600,5700,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(17,3,1300,12000,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(17,4,4500,34800,'4500');

-- ENPOKER町田 (owner_no=18)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(18,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(18,2,600,4700,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(18,3,1300,8900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(18,4,4500,26200,'4500');

-- BUBBLE赤坂 (owner_no=19)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(19,1,250,3200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(19,2,600,5400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(19,3,1300,10600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(19,4,4500,31800,'4500');

-- 化猫ポーカー倶楽部 (owner_no=20)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(20,1,250,2500,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(20,2,600,4100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(20,3,1300,7600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(20,4,4500,22800,'4500');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
