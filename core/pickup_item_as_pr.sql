SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS pickup_item_as_pr;

CREATE TABLE pickup_item_as_pr (
    pickup_item_no INT NOT NULL,
    pr VARCHAR(40) DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (pickup_item_no)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(3,'秋葉原の電脳街で、チップに魂を宿せ！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(4,'メイド通りの裏側で、最速レイズ体験せよ。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(11,'池袋駅0分、終電ギリギリまでオールイン！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(12,'サンシャインの夜景より眩しいリバーの奇跡。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(19,'次のクエストは“優勝”。あなたのレベルを上げろ！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(20,'経験値も賞金も一気に稼げる“リアルRPG”開幕！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(27,'ネオンより熱い、24/7の勝負魂。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(28,'世界が集うテーブルで、“GOOD GAME”を刻め。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(35,'スクランブル交差点のドラマは、リバーでも起こる。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(36,'渋谷の夜、GGの合図はチップの音。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(43,'驚きの手羽先よりスパイシーなブラフを。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(44,'味噌カツの後は、濃厚ポーカーで勝ち点GET。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(51,'なんでや!? の一手で場を沸かせ！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(52,'粉もん文化に負けない、アツアツのポーカー勝負。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(59,'K-POPのビートに乗せてオールイン！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(60,'流行最前線で、運も実力もアップデート。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(67,'煌めく摩天楼で、ハンドもランクアップ。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(68,'新宿の夜景を背に、チップを積み上げろ。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(75,'大人の街・赤坂で、ラグジュアリーブラフ。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(76,'シャンパンを片手に、優雅な勝負を。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(83,'東京発、世界基準のハイテンションポーカー。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(84,'ライブ配信で君の神プレイが瞬時に拡散！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(91,'名古屋城より堅牢なディフェンスで守り切れ！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(92,'東海トップクラスのトーナメントで名を刻め。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(99,'リレイズの連鎖でドラマチック逆転劇。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(100,'買い物帰りに、ひと勝負のスパイスを。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(107,'“にゃん”と驚く幸運がここに潜む。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(108,'推しネコに見守られながら、勝利をゲット！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(115,'上野の静寂を破る、一撃ガットショット！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(116,'不忍池の風を感じつつ、鋭くドローを射抜け。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(123,'eSportsの熱量で、カードバトルを再定義。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(124,'ゲーム好き集合！“カード×ゲーミング”の聖地。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(131,'都会のネオン、ネコのまなざし、勝利の女神は二度鳴く。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(132,'夜行性のあなたへ、深夜トーナメント常設。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(139,'ベイエリアの潮風とともにエイトハンドを制覇。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(140,'みなとみらいの夜景より輝くロイヤルフラッシュ。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(147,'バブルに乗せて夢もチップも一気に膨らませ！');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(148,'恵比寿の泡×ポーカーの緊張感＝極上エンタメ。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(155,'化け猫の如く変幻自在のプレイスタイルを。');
INSERT INTO pickup_item_as_pr(pickup_item_no,pr) VALUES(156,'九つの命で何度でもリバイ、最後に笑うのは誰？');

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;