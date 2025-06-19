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

## テーブル一覧

### core ディレクトリ
- `admin_announce.sql` - 管理者お知らせ
- `admin_org_action.sql` - 管理者組織アクション
- `admin_org_img.sql` - 管理者組織画像
- `admin_user_org.sql` - 管理者ユーザー組織
- `admin_user.sql` - 管理者ユーザー
- `brand_event.sql` - ブランドイベント
- `brand.sql` - ブランド
- `event.sql` - イベント
- `media.sql` - メディア
- `news.sql` - ニュース
- `org.sql` - 組織
- `owner.sql` - オーナー
- `pickup_item.sql` - ピックアップアイテム
- `room.sql` - ルーム
- `tournament.sql` - トーナメント
- `tournament_price.sql` - トーナメント価格
- `tournament_structure.sql` - トーナメント構造

### cmn ディレクトリ（共通）
- `app_info.sql` - アプリ情報
- `cache_info.sql` - キャッシュ情報
- `html.sql` - HTML
- `img.sql` - 画像
- `seq.sql` - シーケンス

### tag ディレクトリ
- `tag.sql` - タグ
- `tag_content.sql` - タグコンテンツ
- `tag_owner.sql` - タグオーナー

## 注意事項
1. **論理削除のみ使用**：物理削除は行わない
2. **SELECT時必須条件**：必ず `WHERE enabled=1` を含める
3. **キャッシュ注意**：物理削除した場合、キャッシュデータが残る可能性があるため論理削除を使用
4. **自動設定**：`created_at`と`updated_at`は自動で設定される

## 更新履歴
- 2025年: レギュレーション準拠対応完了（共通カラム追加、論理削除実装）