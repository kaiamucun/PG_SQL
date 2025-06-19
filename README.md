# PG SQL Repository

PG（ポーカーゲーム）のデータベーススキーマとマスタデータを格納するリポジトリです。

## 📁 プロジェクト構造

```
PG_SQL/
├── cmn/          # 共通システム関連テーブル
├── core/         # コアビジネスロジック関連テーブル  
├── tag/          # タグシステム関連テーブル
└── README.md
```

## 📋 ディレクトリ詳細

### 🔧 cmn/ - 共通システムテーブル
アプリケーション全体で使用される共通機能のテーブル定義

- `app_info.sql` - アプリケーション情報（バージョン、メンテナンス情報等）
- `cache_info.sql` - キャッシュ管理情報
- `html.sql` - HTML コンテンツ管理
- `img.sql` - 画像ファイル管理

### 🎯 core/ - メインビジネスロジック
ポーカーゲームの中核となる機能のテーブル定義

#### 管理者・組織関連
- `admin_announce.sql` - 管理者お知らせ
- `admin_org_action.sql` - 組織アクション管理
- `admin_org_img.sql` - 組織画像管理
- `admin_user_org.sql` - ユーザー組織関連管理
- `admin_user.sql` - 管理者ユーザー

#### ブランド・イベント関連
- `brand_event.sql` - ブランドイベント
- `brand.sql` - ブランド情報
- `event.sql` - イベント情報
- `media.sql` - メディア管理
- `news.sql` - ニュース

#### 組織・オーナー関連
- `org.sql` - 組織マスタ（店舗など）
- `owner_as_info.sql` - オーナー追加情報
- `owner_category_photo.sql` - オーナーカテゴリ写真
- `owner_category.sql` - オーナーカテゴリ
- `owner_html.sql` - オーナーHTML情報
- `owner_ring_price.sql` - オーナーリング価格設定
- `owner_ring_table.sql` - オーナーリングテーブル
- `owner_url.sql` - オーナーURL情報
- `owner.sql` - オーナー情報

#### ルーム・店舗関連
- `room_book_pickup_item.sql` - ルーム予約ピックアップアイテム
- `room_opening_hours.sql` - ルーム営業時間
- `room_pickup_item.sql` - ルームピックアップアイテム
- `room_pickup.sql` - ルームピックアップ
- `room.sql` - ルーム情報（店舗マスタ）

#### トーナメント関連
- `tournament_price.sql` - トーナメント価格設定
- `tournament_structure.sql` - トーナメント構造
- `tournament.sql` - トーナメント情報

#### ピックアップアイテム関連
- `pickup_item_as_game.sql` - ゲーム関連ピックアップ
- `pickup_item_as_pr.sql` - PR関連ピックアップ  
- `pickup_item_as_tournament.sql` - トーナメント関連ピックアップ
- `pickup_item.sql` - ピックアップアイテム

### 🏷️ tag/ - タグシステム
階層化されたタグシステムの定義

- `tag_content.sql` - タグコンテンツ関連
- `tag_owner.sql` - タグオーナー関連
- `tag.sql` - タグマスタ（国、地域、都道府県、エリア等の階層構造）

## 🗄️ 主要テーブル概要

### room テーブル
- ポーカールーム（店舗）の基本情報
- 風営法・特定遊興許可情報
- 提携店舗フラグ等を管理

### tournament テーブル
- トーナメント基本情報（名前、説明、形式）
- 参加費、賞金プール、参加者数管理
- スケジュール情報（開始時間、終了予定時間等）
- ステータス管理（予定、受付中、進行中、完了等）

### org テーブル  
- 組織情報（PG本体、各ルーム等）
- 組織タイプとプレフィックス管理

### tag テーブル
- 地理的タグ（国→地域→都道府県→エリアの階層構造）
- 検索用キーワード（ひらがな、カタカナ、英語対応）

## 🚀 使用方法

1. 各SQLファイルはそれぞれ独立して実行可能
2. トランザクション管理とエラーハンドリングを含む
3. 文字コード設定（UTF8MB4）対応
4. 外部キー制約の適切な管理

## 📝 注意事項

- SQLファイルは本番環境での使用を前提として設計
- マスタデータの投入も含まれているため、実行時は注意が必要
- 外部キー制約の整合性を保つため、適切な順序での実行推奨