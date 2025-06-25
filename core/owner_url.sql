SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- owner_urlテーブルの作成
DROP TABLE IF EXISTS owner_url;

CREATE TABLE owner_url (
    owner_no INT NOT NULL,
    url_type VARCHAR(10) NOT NULL COMMENT 'site, twitter, instagram',
    url VARCHAR(191) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (owner_no, url_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- アキバギルド (owner_no: 1)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(1, 'site', 'https://akibacc.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(1, 'twitter', 'https://twitter.com/AkibaGuild');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(1, 'instagram', 'https://www.instagram.com/akiba_guild/');

-- イケブクロギルド (owner_no: 2)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(2, 'site', 'https://ikebukurokk.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(2, 'twitter', 'https://twitter.com/AG_Ikebukuro');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(2, 'instagram', 'https://www.instagram.com/guild.ikebukuro/');

-- カジクエ (owner_no: 3)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(3, 'site', 'https://akiba-casino.jp/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(3, 'twitter', 'https://twitter.com/AKB_CASINOQUEST');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(3, 'instagram', 'https://www.instagram.com/akb_casinoquest/');

-- GGPL新宿 (owner_no: 4)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(4, 'site', 'https://ggpokerlive.jp/shinjuku/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(4, 'twitter', 'https://twitter.com/ggpl_shinjuku');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(4, 'instagram', 'https://www.instagram.com/ggpl_shinjuku/');

-- GGPL渋谷 (owner_no: 5)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(5, 'site', 'https://ggpokerlive.jp/tokyo/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(5, 'twitter', 'https://twitter.com/GGLIVETOKYO');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(5, 'instagram', 'https://www.instagram.com/ggpl_shibuya/');

-- GGPL名古屋 (owner_no: 6) - Instagramなし
INSERT INTO owner_url(owner_no, url_type, url) VALUES(6, 'site', 'https://ggpokerlive.jp/nagoya/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(6, 'twitter', 'https://twitter.com/GGPLnagoya');

-- GGPL梅田 (owner_no: 7)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(7, 'site', 'https://ggpokerlive.jp/umeda/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(7, 'twitter', 'https://twitter.com/GGPL_osaka');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(7, 'instagram', 'https://www.instagram.com/ggpl_osaka/');

-- KKLP渋谷 (owner_no: 8)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(8, 'site', 'https://kklivepoker.com/shibuya/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(8, 'twitter', 'https://twitter.com/KKLIVESHIBUYA');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(8, 'instagram', 'https://www.instagram.com/kklivepokershibuya/');

-- KKLP新宿 (owner_no: 9) - Instagramなし
INSERT INTO owner_url(owner_no, url_type, url) VALUES(9, 'site', 'https://kklivepoker.com/shinjuku/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(9, 'twitter', 'https://twitter.com/kklive_poker');

-- 赤坂デポ (owner_no: 10) - Instagramなし
INSERT INTO owner_url(owner_no, url_type, url) VALUES(10, 'site', 'https://tokyoaa.com/akasaka/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(10, 'twitter', 'https://twitter.com/Akasaka_de_Po');

-- CLT (owner_no: 11)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(11, 'site', 'https://casino-live-tokyo.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(11, 'twitter', 'https://twitter.com/casino_live__');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(11, 'instagram', 'https://www.instagram.com/casinolivetokyo/');

-- ナゴヤギルド (owner_no: 12)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(12, 'site', 'https://nagoyaguild.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(12, 'twitter', 'https://twitter.com/AGNagoyaguild');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(12, 'instagram', 'https://www.instagram.com/nagoyaguild/');

-- 金沢ポーカーSPARKL (owner_no: 13)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(13, 'site', 'https://kanazawa-poker.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(13, 'twitter', 'https://twitter.com/SPARKL_casino');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(13, 'instagram', 'https://www.instagram.com/sparkl_casino/');

-- ネコカジ秋葉原 (owner_no: 14)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(14, 'site', 'https://www.nekokaji-akiba.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(14, 'twitter', 'https://twitter.com/neko_akiba');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(14, 'instagram', 'https://www.instagram.com/nekokaji_akiba/');

-- ガットショット上野池之端 (owner_no: 15)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(15, 'site', 'https://gutshot.group/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(15, 'twitter', 'https://twitter.com/GS_ikenohata');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(15, 'instagram', 'https://www.instagram.com/explore/locations/102925352517053/');

-- 大塚 RABBIT GIRL'S (owner_no: 16) - Instagramなし
INSERT INTO owner_url(owner_no, url_type, url) VALUES(16, 'site', 'https://www.usagi-casino.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(16, 'twitter', 'https://twitter.com/otsukausagisan');

-- BACKDOOR六本木 (owner_no: 17)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(17, 'site', 'https://roppongi.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(17, 'twitter', 'https://twitter.com/ROPPONGI_BD');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(17, 'instagram', 'https://www.instagram.com/roppongi_backdoor/');

-- ENPOKER町田 (owner_no: 18)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(18, 'site', 'https://www.enpoker.net/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(18, 'twitter', 'https://twitter.com/enpokermachida');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(18, 'instagram', 'https://www.instagram.com/enpoker_machida/');

-- BUBBLE赤坂 (owner_no: 19) - 公式サイト・Instagramなし
INSERT INTO owner_url(owner_no, url_type, url) VALUES(19, 'twitter', 'https://twitter.com/BUBBLE_AKASAKA');

-- 化猫ポーカー倶楽部 (owner_no: 20)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(20, 'site', 'https://bakenekopokerclub.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(20, 'twitter', 'https://twitter.com/bakeneko_poker');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(20, 'instagram', 'https://www.instagram.com/bakeneko_poker/');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;