# PG_SQL レギュレーション準拠テーブル定義

## 概要
このプロジェクトは、レギュレーションに従って論理削除機能を実装したSQLテーブル定義集です。

## レギュレーション適用済み
✅ 全テーブルに共通カラムを追加
✅ 論理削除機能実装
✅ PostgreSQL重複定義削除（MySQL形式で統一）

## 共通カラム（全テーブル共通）
```sql
enabled     TINYINT DEFAULT 1 COMMENT '論理削除フラグ'
created_at  DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時'
updated_at  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時'
```

## 論理削除の使用方法

### SELECT時の必須ルール
**必ず `WHERE enabled=1` 条件を含める**
```sql
-- ✅ 正しい例
SELECT * FROM admin_user WHERE enabled=1;
SELECT * FROM room WHERE enabled=1 AND room_name LIKE '%ギルド%';

-- ❌ 間違った例（レギュレーション違反）
SELECT * FROM admin_user;
SELECT * FROM room WHERE room_name LIKE '%ギルド%';
```

### 削除操作
**物理削除は禁止、論理削除のみ実行**
```sql
-- ✅ 正しい削除方法（論理削除）
UPDATE admin_user SET enabled=0 WHERE user_id='target_user';
UPDATE room SET enabled=0 WHERE room_no=1;

-- ❌ 間違った削除方法（物理削除禁止）
DELETE FROM admin_user WHERE user_id='target_user';
DELETE FROM room WHERE room_no=1;
```

### 復元操作
```sql
-- 論理削除されたデータの復元
UPDATE admin_user SET enabled=1 WHERE user_id='target_user';
```

### 完全削除データの確認
```sql
-- 論理削除されたデータの確認
SELECT * FROM admin_user WHERE enabled=0;
```

## 開発状況

### ✅ 完成済み（ダミーデータ入り）
以下のテーブルは実装完了しており、テスト用ダミーデータが含まれています。

#### core ディレクトリ
- `admin_user.sql` - 管理者ユーザー（22ユーザー登録済み）
- `admin_user_org.sql` - 管理者ユーザー組織関連付け
- `brand.sql` - ブランド（20ブランド登録済み）
- `brand_event.sql` - ブランドイベント関連付け
- `event.sql` - イベント（27イベント登録済み）
- `org.sql` - 組織（21組織登録済み）
- `owner.sql` - オーナー（20オーナー登録済み）
- `owner_as_info.sql` - オーナー詳細情報
- `owner_category.sql` - オーナーカテゴリ
- `owner_category_photo.sql` - オーナーカテゴリ写真
- `owner_ring_price.sql` - オーナーリング価格
- `owner_ring_table.sql` - オーナーリングテーブル
- `owner_url.sql` - オーナーURL
- `pickup_item.sql` - ピックアップアイテム（183アイテム登録済み）
- `pickup_item_as_game.sql` - ゲーム型ピックアップアイテム（107件）
- `pickup_item_as_pr.sql` - PR型ピックアップアイテム（10件）
- `pickup_item_as_tournament.sql` - トーナメント型ピックアップアイテム（66件）
- `room.sql` - ルーム（20店舗登録済み）
- `room_opening_hours.sql` - ルーム営業時間
- `room_pickup.sql` - ルームピックアップ表示
- `room_pickup_item.sql` - ルームピックアップアイテム
- `tournament.sql` - トーナメント（40件登録済み）
- `tournament_price.sql` - トーナメント価格
- `tournament_structure.sql` - トーナメント構造

#### tag ディレクトリ
- `tag.sql` - タグ（366件登録済み）
- `tag_content.sql` - タグコンテンツ（完成・データ入り）
- `tag_owner.sql` - タグオーナー関連付け（完成・データ入り）

### 🚧 未完成（テーブル構造のみ、ダミーデータなし）
以下のテーブルは構造定義は完了していますが、ダミーデータは未挿入です。
ファイル名の先頭に `_` が付いています。

#### core ディレクトリ
- `_admin_announce.sql` - 管理者お知らせ
- `_admin_org_action.sql` - 管理者組織アクション
- `_admin_org_img.sql` - 管理者組織画像
- `_media.sql` - メディア
- `_news.sql` - ニュース
- `_owner_html.sql` - オーナーHTML
- `_room_book_pickup_item.sql` - ルーム予約ピックアップアイテム

#### cmn ディレクトリ（共通）
- `_app_info.sql` - アプリ情報
- `_cache_info.sql` - キャッシュ情報
- `_html.sql` - HTML
- `_seq.sql` - シーケンス

## 登録済みデータ概要（2025-08-02時点）

### 管理ユーザー
- **masterユーザー**: 全権限（permission_bit_flag: 1023）
- **event_adminユーザー**: イベント管理権限（permission_bit_flag: 1023）
- **room_admin_01〜20**: 各店舗の管理者（permission_bit_flag: 122）

### 店舗データ（room）
関東中心のポーカールーム20店舗：
- アキバギルド、イケブクロギルド
- クイーンズカジノ、Good Game系列
- 神楽坂ポーカー、サッポロポーカー
- Charlotte、NG、Rela
- その他計20店舗

### ブランドデータ
主要ポーカーブランド20件：
- JOPT、戦国ポーカーツアー
- AJPC、WSOP、APT
- JCS、その他計20ブランド

### ピックアップアイテム
合計183件のアイテム：
- **トーナメント型**: 66件（賞金設定、定員管理）
- **ゲーム型**: 107件（リング、ルーレット、大富豪、ブラックジャック）
- **PR型**: 10件（プロモーション）

### トーナメント
40件のトーナメントデータ：
- 構造設定（ブラインド、レベル）
- 価格体系（参加費、賞金）
- 時間設定（開始、レイト、終了）

### タグシステム
- **タグ**: 366件の地域・ゲーム・イベントタグ
- **タグコンテンツ関連付け**: トーナメントとタグの関連付け完了
- **タグオーナー関連付け**: ルーム・オーナーとタグの関連付け完了

## データベース仕様
- **MySQL Version**: 8.4.5
- **文字セット**: utf8mb4
- **照合順序**: utf8mb4_unicode_ci / utf8mb4_0900_ai_ci
- **エンジン**: InnoDB

## 注意事項
1. **論理削除のみ使用**：物理削除は行わない
2. **SELECT時必須条件**：必ず `WHERE enabled=1` を含める
3. **キャッシュ注意**：物理削除した場合、キャッシュデータが残る可能性があるため論理削除を使用
4. **自動設定**：`created_at`と`updated_at`は自動で設定される
5. **ファイル命名規則**：先頭に`_`が付くファイルは未完成（ダミーデータなし）

## 更新履歴
- **2025-08-02**: 最新データベースダンプ完全同期（core_2025-07-02.sql）
  - ダンプ生成時刻: 2025-08-02 02:02:52 +0000（3596行）
  - tagディレクトリ完全実装完了（tag_content.sql含む）
  - 完成済みテーブル27件、未完成11件の状況確認
  - event_adminユーザー追加（イベント管理権限）
  - 管理ユーザー22件（master + event_admin + room_admin_01〜20）
  - 実運用データまで反映（アクセス履歴、ログイン状況含む）
- **2025-06-25**: トーナメントデータ大幅拡充
  - トーナメントデータ40件追加
  - ピックアップアイテム183件（トーナメント66、ゲーム107、PR10）
  - 管理ユーザー21件（master + room_admin_01〜20）
  - 店舗20件、ブランド20件、イベント27件登録
- **2025-06-20**: tournamentテーブルに40件のデータ追加、pickup_item_as_prテーブル更新
- **2025年**: レギュレーション準拠対応完了（共通カラム追加、論理削除実装）