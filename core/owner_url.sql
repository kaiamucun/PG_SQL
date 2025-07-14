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

-- 【五反田】Queen Pocket (owner_no: 21)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(21, 'site', 'https://queenpocket-gotanda.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(21, 'twitter', 'https://twitter.com/queenpocket_gtd');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(21, 'instagram', 'https://www.instagram.com/queenpocket_gotanda/');

-- 【新宿】ALL IN POKER CLUB (owner_no: 22)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(22, 'site', 'https://allin-poker.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(22, 'twitter', 'https://twitter.com/allin_shinjuku');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(22, 'instagram', 'https://www.instagram.com/allin_poker_club/');

-- 【飯田橋】BIG BOSS JAPAN (owner_no: 23)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(23, 'site', 'https://bigboss-japan.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(23, 'twitter', 'https://twitter.com/bigboss_japan');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(23, 'instagram', 'https://www.instagram.com/bigboss_japan/');

-- Amusement Shisha＆Poker Bar PukuPuku 新橋 (owner_no: 24)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(24, 'site', 'https://pukupuku-shinbashi.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(24, 'twitter', 'https://twitter.com/pukupuku_poker');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(24, 'instagram', 'https://www.instagram.com/pukupuku_shinbashi/');

-- ASOBIBAR Lecoeur 赤羽店 (owner_no: 25)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(25, 'site', 'https://lecoeur-akabane.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(25, 'twitter', 'https://twitter.com/lecoeur_akabane');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(25, 'instagram', 'https://www.instagram.com/lecoeur_akabane/');

-- BACKDOOR GINZA (owner_no: 26)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(26, 'site', 'https://ginza.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(26, 'twitter', 'https://twitter.com/BACKDOOR_GINZA');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(26, 'instagram', 'https://www.instagram.com/backdoor_ginza/');

-- BACKDOOR KICHIJOJI (owner_no: 27)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(27, 'site', 'https://kichijoji.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(27, 'twitter', 'https://twitter.com/BACKDOOR_KICHI');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(27, 'instagram', 'https://www.instagram.com/backdoor_kichijoji/');

-- BACKDOOR SHIMOKITA (owner_no: 28)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(28, 'site', 'https://shimokita.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(28, 'twitter', 'https://twitter.com/BACKDOOR_SHIMO');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(28, 'instagram', 'https://www.instagram.com/backdoor_shimokita/');

-- BACKDOOR 宇都宮 (owner_no: 29)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(29, 'site', 'https://utsunomiya.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(29, 'twitter', 'https://twitter.com/BACKDOOR_UTU');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(29, 'instagram', 'https://www.instagram.com/backdoor_utsunomiya/');

-- BACKDOOR 浅草橋 (owner_no: 30)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(30, 'site', 'https://asakusabashi.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(30, 'twitter', 'https://twitter.com/BACKDOOR_ASAKU');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(30, 'instagram', 'https://www.instagram.com/backdoor_asakusabashi/');

-- BACKDOOR宇都宮東 (owner_no: 31)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(31, 'site', 'https://utsunomiyahigashi.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(31, 'twitter', 'https://twitter.com/BACKDOOR_UTUE');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(31, 'instagram', 'https://www.instagram.com/backdoor_utsunomiya_higashi/');

-- BACKDOOR十三 (owner_no: 32)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(32, 'site', 'https://juso.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(32, 'twitter', 'https://twitter.com/BACKDOOR_JUSO');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(32, 'instagram', 'https://www.instagram.com/backdoor_juso/');

-- BARRLE AKASAKA (owner_no: 33)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(33, 'site', 'https://barrle-akasaka.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(33, 'twitter', 'https://twitter.com/BARRLE_AKASAKA');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(33, 'instagram', 'https://www.instagram.com/barrle_akasaka/');

-- BARRLE IKEBUKURO (owner_no: 34)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(34, 'site', 'https://barrle-ikebukuro.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(34, 'twitter', 'https://twitter.com/BARRLE_IKE');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(34, 'instagram', 'https://www.instagram.com/barrle_ikebukuro/');

-- BARRLE LasVegas (owner_no: 35)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(35, 'site', 'https://barrle-lasvegas.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(35, 'twitter', 'https://twitter.com/BARRLE_VEGAS');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(35, 'instagram', 'https://www.instagram.com/barrle_lasvegas/');

-- BARRLE NEST 高田馬場 (owner_no: 36)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(36, 'site', 'https://barrle-nest.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(36, 'twitter', 'https://twitter.com/BARRLE_NEST');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(36, 'instagram', 'https://www.instagram.com/barrle_nest/');

-- BLOW 渋谷 (owner_no: 37)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(37, 'site', 'https://blow-shibuya.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(37, 'twitter', 'https://twitter.com/BLOW_SHIBUYA');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(37, 'instagram', 'https://www.instagram.com/blow_shibuya/');

-- BUBBLE 恵比寿店 (owner_no: 38)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(38, 'site', 'https://bubble-ebisu.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(38, 'twitter', 'https://twitter.com/BUBBLE_EBISU');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(38, 'instagram', 'https://www.instagram.com/bubble_ebisu/');

-- BUBBLE六本木 (owner_no: 39)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(39, 'site', 'https://bubble-roppongi.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(39, 'twitter', 'https://twitter.com/BUBBLE_ROPPONGI');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(39, 'instagram', 'https://www.instagram.com/bubble_roppongi/');

-- casa 上野店 (owner_no: 40)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(40, 'site', 'https://casa-ueno.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(40, 'twitter', 'https://twitter.com/casa_ueno');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(40, 'instagram', 'https://www.instagram.com/casa_ueno/');

-- casa 大宮 (owner_no: 41)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(41, 'site', 'https://casa-omiya.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(41, 'twitter', 'https://twitter.com/casa_omiya');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(41, 'instagram', 'https://www.instagram.com/casa_omiya/');

-- Casino Lounge Egg (owner_no: 42)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(42, 'site', 'https://casino-egg.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(42, 'twitter', 'https://twitter.com/casino_egg');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(42, 'instagram', 'https://www.instagram.com/casino_lounge_egg/');

-- Casino THE CLASS (owner_no: 43)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(43, 'site', 'https://casino-theclass.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(43, 'twitter', 'https://twitter.com/casino_theclass');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(43, 'instagram', 'https://www.instagram.com/casino_theclass/');

-- DDPT/PMJ (owner_no: 44)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(44, 'site', 'https://ddpt-pmj.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(44, 'twitter', 'https://twitter.com/DDPT_PMJ');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(44, 'instagram', 'https://www.instagram.com/ddpt_pmj/');

-- DOUBLE BELLY BUSTER (owner_no: 45)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(45, 'site', 'https://doublebellybuster.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(45, 'twitter', 'https://twitter.com/DBB_poker');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(45, 'instagram', 'https://www.instagram.com/doublebellybuster/');

-- EGP EBISU (owner_no: 46)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(46, 'site', 'https://egp-ebisu.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(46, 'twitter', 'https://twitter.com/EGP_EBISU');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(46, 'instagram', 'https://www.instagram.com/egp_ebisu/');

-- Family Pot YOKOHAMA (owner_no: 47)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(47, 'site', 'https://familypot-yokohama.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(47, 'twitter', 'https://twitter.com/familypot_yoko');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(47, 'instagram', 'https://www.instagram.com/familypot_yokohama/');

-- FELLOWS (owner_no: 48)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(48, 'site', 'https://fellows-poker.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(48, 'twitter', 'https://twitter.com/FELLOWS_poker');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(48, 'instagram', 'https://www.instagram.com/fellows_poker/');

-- GoodGame & Bluff (owner_no: 49)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(49, 'site', 'https://goodgame-bluff.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(49, 'twitter', 'https://twitter.com/goodgame_bluff');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(49, 'instagram', 'https://www.instagram.com/goodgame_bluff/');

-- Gutshot (owner_no: 50)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(50, 'site', 'https://gutshot-ueno.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(50, 'twitter', 'https://twitter.com/gutshot_ueno');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(50, 'instagram', 'https://www.instagram.com/gutshot_ueno/');

-- JAPAN OPEN POKER TOUR (owner_no: 51)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(51, 'site', 'https://jopt.jp/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(51, 'twitter', 'https://twitter.com/JOPT_official');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(51, 'instagram', 'https://www.instagram.com/jopt_official/');

-- JERRYS POKER (owner_no: 52)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(52, 'site', 'https://jerryspoker.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(52, 'twitter', 'https://twitter.com/JERRYS_POKER');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(52, 'instagram', 'https://www.instagram.com/jerrys_poker/');

-- KAMATA BACKDOOR (owner_no: 53)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(53, 'site', 'https://kamata.backdoor.casino/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(53, 'twitter', 'https://twitter.com/BACKDOOR_KAMATA');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(53, 'instagram', 'https://www.instagram.com/backdoor_kamata/');

-- KK UNIVERSE (owner_no: 54)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(54, 'site', 'https://kk-universe.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(54, 'twitter', 'https://twitter.com/KK_UNIVERSE');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(54, 'instagram', 'https://www.instagram.com/kk_universe/');

-- Luck Spider 六本木 (owner_no: 55)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(55, 'site', 'https://luckspider-roppongi.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(55, 'twitter', 'https://twitter.com/luckspider_rpp');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(55, 'instagram', 'https://www.instagram.com/luckspider_roppongi/');

-- MUSASHI POKER ROOM (owner_no: 56)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(56, 'site', 'https://musashi-poker.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(56, 'twitter', 'https://twitter.com/musashi_poker');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(56, 'instagram', 'https://www.instagram.com/musashi_poker/');

-- Nuts&Star 蒲田 (owner_no: 57)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(57, 'site', 'https://nuts-star-kamata.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(57, 'twitter', 'https://twitter.com/nutsstar_kamata');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(57, 'instagram', 'https://www.instagram.com/nuts_star_kamata/');

-- POKER JUNKIE ROPPONGI (owner_no: 58)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(58, 'site', 'https://pokerjunkie-roppongi.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(58, 'twitter', 'https://twitter.com/pokerjunkie_rpp');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(58, 'instagram', 'https://www.instagram.com/pokerjunkie_roppongi/');

-- poker room GRAVITY (owner_no: 59)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(59, 'site', 'https://poker-gravity.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(59, 'twitter', 'https://twitter.com/poker_gravity');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(59, 'instagram', 'https://www.instagram.com/poker_gravity/');

-- PokerLeague五反田 (owner_no: 60)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(60, 'site', 'https://pokerleague-gotanda.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(60, 'twitter', 'https://twitter.com/pokerleague_gtd');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(60, 'instagram', 'https://www.instagram.com/pokerleague_gotanda/');

-- PokerRoom P3 (owner_no: 61)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(61, 'site', 'https://pokerroom-p3.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(61, 'twitter', 'https://twitter.com/pokerroom_p3');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(61, 'instagram', 'https://www.instagram.com/pokerroom_p3/');

-- Pool&Darts STELLA (owner_no: 62)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(62, 'site', 'https://stella-ebisu.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(62, 'twitter', 'https://twitter.com/stella_ebisu');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(62, 'instagram', 'https://www.instagram.com/stella_ebisu/');

-- RALLYs CASINO (owner_no: 63)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(63, 'site', 'https://rallys-casino.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(63, 'twitter', 'https://twitter.com/rallys_casino');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(63, 'instagram', 'https://www.instagram.com/rallys_casino/');

-- ResPo (owner_no: 64)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(64, 'site', 'https://respo-poker.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(64, 'twitter', 'https://twitter.com/respo_poker');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(64, 'instagram', 'https://www.instagram.com/respo_poker/');

-- RIC GAMES SHINJUKU (owner_no: 65)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(65, 'site', 'https://ricgames-shinjuku.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(65, 'twitter', 'https://twitter.com/ricgames_shinjuku');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(65, 'instagram', 'https://www.instagram.com/ricgames_shinjuku/');

-- starry eye (owner_no: 66)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(66, 'site', 'https://starryeye-ebisu.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(66, 'twitter', 'https://twitter.com/starryeye_ebisu');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(66, 'instagram', 'https://www.instagram.com/starryeye_ebisu/');

-- Tha Bullets (owner_no: 67)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(67, 'site', 'https://thabullets.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(67, 'twitter', 'https://twitter.com/tha_bullets');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(67, 'instagram', 'https://www.instagram.com/tha_bullets/');

-- THE CROWN (owner_no: 68)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(68, 'site', 'https://thecrown-ebisu.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(68, 'twitter', 'https://twitter.com/thecrown_ebisu');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(68, 'instagram', 'https://www.instagram.com/thecrown_ebisu/');

-- Tsudanuma Poker House POM (owner_no: 69)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(69, 'site', 'https://tsudanuma-pom.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(69, 'twitter', 'https://twitter.com/tsudanuma_pom');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(69, 'instagram', 'https://www.instagram.com/tsudanuma_pom/');

-- WARUPURU (owner_no: 70)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(70, 'site', 'https://warupuru-ebisu.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(70, 'twitter', 'https://twitter.com/warupuru_ebisu');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(70, 'instagram', 'https://www.instagram.com/warupuru_ebisu/');

-- ZEAL8池袋 (owner_no: 71)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(71, 'site', 'https://zeal8-ikebukuro.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(71, 'twitter', 'https://twitter.com/zeal8_ikebukuro');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(71, 'instagram', 'https://www.instagram.com/zeal8_ikebukuro/');

-- ポーカースポットMy room 小田原店 (owner_no: 72)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(72, 'site', 'https://myroom-odawara.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(72, 'twitter', 'https://twitter.com/myroom_odawara');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(72, 'instagram', 'https://www.instagram.com/myroom_odawara/');

-- ポーカースポットMy room 新横浜店 (owner_no: 73)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(73, 'site', 'https://myroom-shinyokohama.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(73, 'twitter', 'https://twitter.com/myroom_shinyoko');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(73, 'instagram', 'https://www.instagram.com/myroom_shinyokohama/');

-- ポーカースポットMy room 大和店 (owner_no: 74)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(74, 'site', 'https://myroom-yamato.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(74, 'twitter', 'https://twitter.com/myroom_yamato');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(74, 'instagram', 'https://www.instagram.com/myroom_yamato/');

-- ポーカースポットMy room 町田店 (owner_no: 75)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(75, 'site', 'https://myroom-machida.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(75, 'twitter', 'https://twitter.com/myroom_machida');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(75, 'instagram', 'https://www.instagram.com/myroom_machida/');

-- ライブエース横浜→横浜駅西口 (owner_no: 76)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(76, 'site', 'https://liveace-yokohama.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(76, 'twitter', 'https://twitter.com/liveace_yokohama');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(76, 'instagram', 'https://www.instagram.com/liveace_yokohama/');

-- 我龍ポーカースタジアム BIG BOSS国分寺店 (owner_no: 77)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(77, 'site', 'https://garyu-kokubunji.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(77, 'twitter', 'https://twitter.com/garyu_kokubunji');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(77, 'instagram', 'https://www.instagram.com/garyu_kokubunji/');

-- 葛西カジノバーH3AL (owner_no: 78)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(78, 'site', 'https://h3al-kasai.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(78, 'twitter', 'https://twitter.com/h3al_kasai');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(78, 'instagram', 'https://www.instagram.com/h3al_kasai/');

-- 銀座パラハ倶楽部 (owner_no: 79)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(79, 'site', 'https://ginza-paraha.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(79, 'twitter', 'https://twitter.com/ginza_paraha');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(79, 'instagram', 'https://www.instagram.com/ginza_paraha/');

-- 渋谷 SOS POKER (owner_no: 80)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(80, 'site', 'https://sos-poker.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(80, 'twitter', 'https://twitter.com/sos_poker');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(80, 'instagram', 'https://www.instagram.com/sos_poker/');

-- 新橋 ナインスリー (owner_no: 81)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(81, 'site', 'https://ninethree-shinbashi.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(81, 'twitter', 'https://twitter.com/ninethree_shimbashi');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(81, 'instagram', 'https://www.instagram.com/ninethree_shinbashi/');

-- 新宿ネオパラハ (owner_no: 82)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(82, 'site', 'https://neo-paraha.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(82, 'twitter', 'https://twitter.com/neo_paraha');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(82, 'instagram', 'https://www.instagram.com/neo_paraha/');

-- 池袋 ベガス (owner_no: 83)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(83, 'site', 'https://vegas-ikebukuro.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(83, 'twitter', 'https://twitter.com/vegas_ikebukuro');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(83, 'instagram', 'https://www.instagram.com/vegas_ikebukuro/');

-- 中野TRIGGER (owner_no: 84)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(84, 'site', 'https://trigger-nakano.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(84, 'twitter', 'https://twitter.com/trigger_nakano');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(84, 'instagram', 'https://www.instagram.com/trigger_nakano/');

-- 猫遊技場 (owner_no: 85)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(85, 'site', 'https://neko-yugijyo.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(85, 'twitter', 'https://twitter.com/neko_yugijyo');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(85, 'instagram', 'https://www.instagram.com/neko_yugijyo/');

-- 明大前EDGE (owner_no: 86)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(86, 'site', 'https://edge-meidaimae.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(86, 'twitter', 'https://twitter.com/edge_meidaimae');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(86, 'instagram', 'https://www.instagram.com/edge_meidaimae/');

-- 六本木 ナインスリー (owner_no: 87)
INSERT INTO owner_url(owner_no, url_type, url) VALUES(87, 'site', 'https://ninethree-roppongi.com/');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(87, 'twitter', 'https://twitter.com/ninethree_roppongi');
INSERT INTO owner_url(owner_no, url_type, url) VALUES(87, 'instagram', 'https://www.instagram.com/ninethree_roppongi/');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;