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

-- 【五反田】Queen Pocket (owner_no=21)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(21,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(21,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(21,3,1300,9100,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(21,4,4500,27500,'4500');

-- 【新宿】ALL IN POKER CLUB (owner_no=22)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(22,1,250,3100,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(22,2,600,5200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(22,3,1300,10300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(22,4,4500,30900,'4500');

-- 【飯田橋】BIG BOSS JAPAN (owner_no=23)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(23,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(23,2,600,4500,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(23,3,1300,8700,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(23,4,4500,26100,'4500');

-- Amusement Shisha＆Poker Bar PukuPuku 新橋 (owner_no=24)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(24,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(24,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(24,3,1300,8900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(24,4,4500,26800,'4500');

-- 残りの店舗データ (owner_no=25-87)
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(25,1,250,3000,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(25,2,600,4900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(25,3,1300,9400,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(25,4,4500,28200,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(26,1,250,3200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(26,2,600,5300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(26,3,1300,10500,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(26,4,4500,31500,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(27,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(27,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(27,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(27,4,4500,25100,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(28,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(28,2,600,4700,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(28,3,1300,9000,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(28,4,4500,27000,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(29,1,250,2500,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(29,2,600,4200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(29,3,1300,8100,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(29,4,4500,24300,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(30,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(30,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(30,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(30,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(31,1,250,2400,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(31,2,600,4100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(31,3,1300,7900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(31,4,4500,23700,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(32,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(32,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(32,3,1300,8600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(32,4,4500,25800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(33,1,250,3300,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(33,2,600,5400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(33,3,1300,10800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(33,4,4500,32400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(34,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(34,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(34,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(34,4,4500,27600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(35,1,250,3100,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(35,2,600,5100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(35,3,1300,9900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(35,4,4500,29700,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(36,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(36,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(36,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(36,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(37,1,250,3200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(37,2,600,5200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(37,3,1300,10200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(37,4,4500,30600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(38,1,250,3400,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(38,2,600,5500,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(38,3,1300,11000,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(38,4,4500,33000,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(39,1,250,3500,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(39,2,600,5700,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(39,3,1300,11400,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(39,4,4500,34200,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(40,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(40,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(40,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(40,4,4500,24900,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(41,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(41,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(41,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(41,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(42,1,250,3000,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(42,2,600,4900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(42,3,1300,9400,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(42,4,4500,28200,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(43,1,250,3300,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(43,2,600,5400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(43,3,1300,10800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(43,4,4500,32400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(44,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(44,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(44,3,1300,8600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(44,4,4500,25800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(45,1,250,3100,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(45,2,600,5100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(45,3,1300,9900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(45,4,4500,29700,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(46,1,250,3400,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(46,2,600,5500,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(46,3,1300,11000,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(46,4,4500,33000,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(47,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(47,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(47,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(47,4,4500,27600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(48,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(48,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(48,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(48,4,4500,24900,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(49,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(49,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(49,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(49,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(50,1,250,3000,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(50,2,600,4900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(50,3,1300,9400,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(50,4,4500,28200,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(51,1,250,3200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(51,2,600,5200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(51,3,1300,10200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(51,4,4500,30600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(52,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(52,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(52,3,1300,8600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(52,4,4500,25800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(53,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(53,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(53,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(53,4,4500,27600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(54,1,250,2500,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(54,2,600,4200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(54,3,1300,8100,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(54,4,4500,24300,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(55,1,250,3600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(55,2,600,5800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(55,3,1300,11600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(55,4,4500,34800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(56,1,250,3100,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(56,2,600,5100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(56,3,1300,9900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(56,4,4500,29700,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(57,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(57,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(57,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(57,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(58,1,250,3300,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(58,2,600,5400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(58,3,1300,10800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(58,4,4500,32400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(59,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(59,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(59,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(59,4,4500,24900,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(60,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(60,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(60,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(60,4,4500,27600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(61,1,250,3200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(61,2,600,5200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(61,3,1300,10200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(61,4,4500,30600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(62,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(62,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(62,3,1300,8600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(62,4,4500,25800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(63,1,250,3000,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(63,2,600,4900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(63,3,1300,9400,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(63,4,4500,28200,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(64,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(64,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(64,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(64,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(65,1,250,3100,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(65,2,600,5100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(65,3,1300,9900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(65,4,4500,29700,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(66,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(66,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(66,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(66,4,4500,27600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(67,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(67,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(67,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(67,4,4500,24900,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(68,1,250,3300,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(68,2,600,5400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(68,3,1300,10800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(68,4,4500,32400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(69,1,250,2400,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(69,2,600,4100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(69,3,1300,7900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(69,4,4500,23700,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(70,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(70,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(70,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(70,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(71,1,250,3000,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(71,2,600,4900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(71,3,1300,9400,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(71,4,4500,28200,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(72,1,250,2500,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(72,2,600,4200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(72,3,1300,8100,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(72,4,4500,24300,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(73,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(73,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(73,3,1300,8600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(73,4,4500,25800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(74,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(74,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(74,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(74,4,4500,24900,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(75,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(75,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(75,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(75,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(76,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(76,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(76,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(76,4,4500,27600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(77,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(77,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(77,3,1300,8600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(77,4,4500,25800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(78,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(78,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(78,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(78,4,4500,24900,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(79,1,250,3100,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(79,2,600,5100,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(79,3,1300,9900,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(79,4,4500,29700,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(80,1,250,3200,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(80,2,600,5200,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(80,3,1300,10200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(80,4,4500,30600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(81,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(81,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(81,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(81,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(82,1,250,3000,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(82,2,600,4900,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(82,3,1300,9400,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(82,4,4500,28200,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(83,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(83,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(83,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(83,4,4500,27600,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(84,1,250,2700,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(84,2,600,4400,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(84,3,1300,8600,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(84,4,4500,25800,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(85,1,250,2600,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(85,2,600,4300,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(85,3,1300,8300,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(85,4,4500,24900,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(86,1,250,2800,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(86,2,600,4600,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(86,3,1300,8800,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(86,4,4500,26400,'4500');

INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(87,1,250,2900,'250');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(87,2,600,4800,'600');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(87,3,1300,9200,'1300');
INSERT INTO owner_ring_price(owner_no,seq,stack,price,remark) VALUES(87,4,4500,27600,'4500');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
