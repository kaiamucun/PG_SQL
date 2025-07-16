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

#### core ディレクトリ（25件完成）
- `admin_user.sql` - 管理者ユーザー（22ユーザー登録済み）
- `admin_user_org.sql` - 管理者ユーザー組織関連付け
- `brand.sql` - ブランド（20ブランド登録済み）
- `brand_event.sql` - ブランドイベント関連付け
- `event.sql` - イベント（27イベント登録済み）
- `org.sql` - 組織（21組織登録済み）
- `owner.sql` - オーナー（87オーナー登録済み）
- `owner_as_info.sql` - オーナー詳細情報（87件）
- `owner_category.sql` - オーナーカテゴリ（522件）
- `owner_category_photo.sql` - オーナーカテゴリ写真（547件）
- `owner_ring_price.sql` - オーナーリング価格
- `owner_ring_table.sql` - オーナーリングテーブル
- `owner_url.sql` - オーナーURL
- `pickup_item.sql` - ピックアップアイテム（696アイテム登録済み）
- `pickup_item_as_game.sql` - ゲーム型ピックアップアイテム（103件）
- `pickup_item_as_pr.sql` - PR型ピックアップアイテム（61件）
- `pickup_item_as_tournament.sql` - トーナメント型ピックアップアイテム（64件）
- `room.sql` - ルーム（87店舗登録済み）
- `room_opening_hours.sql` - ルーム営業時間（696件）
- `room_pickup.sql` - ルームピックアップ表示
- `room_pickup_item.sql` - ルームピックアップアイテム（696件）
- `tournament.sql` - トーナメント（40件登録済み）
- `tournament_price.sql` - トーナメント価格
- `tournament_structure.sql` - トーナメント構造
- `_room_book_pickup_item.sql` - ルーム予約ピックアップアイテム（160件）

#### tag ディレクトリ（3件完成）
- `tag.sql` - タグ（396件登録済み）
- `tag_content.sql` - タグコンテンツ（180件登録済み）
- `tag_owner.sql` - タグオーナー関連付け（1,228件登録済み）

### 🚧 未完成（テーブル構造のみ、ダミーデータなし）
以下のテーブルは構造定義は完了していますが、ダミーデータは未挿入です。
ファイル名の先頭に `_` が付いています。

#### core ディレクトリ（6件未完成）
- `_admin_announce.sql` - 管理者お知らせ
- `_admin_org_action.sql` - 管理者組織アクション
- `_admin_org_img.sql` - 管理者組織画像
- `_media.sql` - メディア
- `_news.sql` - ニュース
- `_owner_html.sql` - オーナーHTML

#### cmn ディレクトリ（共通・4件未完成）
- `_app_info.sql` - アプリ情報
- `_cache_info.sql` - キャッシュ情報
- `_html.sql` - HTML
- `_seq.sql` - シーケンス

## 登録済みデータ概要（2025-07-16時点）

### 管理ユーザー
- **masterユーザー**: 全権限（permission_bit_flag: 1023）
- **event_adminユーザー**: イベント管理権限（permission_bit_flag: 1023）
- **room_admin_01〜20**: 各店舗の管理者（permission_bit_flag: 122）

### 店舗データ（room）
大幅拡充により87店舗のポーカールーム：
- アキバギルド、イケブクロギルド
- クイーンズカジノ、Good Game系列
- 神楽坂ポーカー、サッポロポーカー
- Charlotte、NG、Rela
- その他関東・関西・地方店舗計87店舗

### ブランドデータ
主要ポーカーブランド20件：
- JOPT、戦国ポーカーツアー
- AJPC、WSOP、APT
- JCS、その他計20ブランド

### ピックアップアイテム
合計696件のアイテム（大幅増加）：
- **トーナメント型**: 64件（賞金設定、定員管理）
- **ゲーム型**: 103件（リング、ルーレット、大富豪、ブラックジャック）
- **PR型**: 61件（プロモーション）

### トーナメント
40件のトーナメントデータ：
- 構造設定（ブラインド、レベル）
- 価格体系（参加費、賞金）
- 時間設定（開始、レイト、終了）

### タグシステム
- **タグ**: 396件の地域・ゲーム・イベントタグ（大幅増加）
- **タグコンテンツ関連付け**: 180件のトーナメントとタグの関連付け
- **タグオーナー関連付け**: 1,228件のルーム・オーナーとタグの関連付け（大幅増加）

### オーナー関連
- **オーナー**: 87件（店舗、イベント、メディアなど）
- **オーナーカテゴリ**: 522件（店内写真、キャスト、フードなど）
- **オーナーカテゴリ写真**: 547件（各カテゴリの写真）
- **ルーム営業時間**: 696件（各店舗の曜日別営業時間）
- **ルームピックアップアイテム**: 696件（店舗とアイテムの関連付け）

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
- **2025-07-16**: プロジェクト状況確認・更新
  - 最新データベースダンプ: core_2025-07-15.sql（3,908行、生成時刻: 2025-07-15 03:46:38 +0000）
  - 店舗数を20店舗から87店舗に大幅拡充
  - ピックアップアイテム183件から696件に大幅増加
  - タグシステム完全実装（タグ396件、関連付け1,228件）
  - オーナー関連データ大幅拡充（カテゴリ522件、写真547件）
  - 完成済み28件（core25件+tag3件）、未完成10件の現状確認
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