-- ROOM操作ができるadminユーザーを作成するSQL
--
-- 【adminユーザー作成要件】
-- 
-- ■ 目的
--   - ROOM（ポーカールーム）の運営管理を行うadminユーザーを作成
--   - 各ROOMの情報管理、トーナメント管理、ユーザー管理等の権限を付与
--
-- ■ ユーザー仕様
--   - ユーザーID: room_admin
--   - 初期パスワード: password123 (※本番環境では必ず変更すること)
--   - 表示名: ROOM管理者
--   - 有効状態: 有効
--
-- ■ 権限仕様
--   - 対象: すべての有効なROOM組織
--   - 付与権限:
--     * tournaments (0b0001000000 = 64): トーナメント情報の管理
--     * news (0b0000100000 = 32): お知らせ・ニュースの管理  
--     * info (0b0000010000 = 16): 基本情報（営業時間、連絡先等）の管理
--     * pickups (0b0000001000 = 8): ピックアップ情報の管理
--     * org-users (0b0000000010 = 2): ROOM所属ユーザーの管理
--   - 権限ビットフラグ合計値: 122 (64+32+16+8+2)
--
-- ■ セキュリティ要件
--   - パスワードはSHA256でハッシュ化して保存
--   - 本番環境では初期パスワードを必ず変更すること
--   - 必要に応じて権限を個別調整すること
--
-- ■ 運用要件
--   - 新しいROOMが追加された場合は、手動で権限を付与する必要がある
--   - このユーザーはROOM管理専用のため、他の組織（brand, media等）には権限なし

-- 1. adminユーザーを作成
-- パスワードは 'password123' をSHA256ハッシュ化した値
INSERT INTO admin_user (
    user_id,
    password,
    user_name,
    ua,
    login_dt,
    access_dt,
    access_org_no,
    enabled,
    created_at,
    updated_at
) VALUES (
    'room_admin',
    'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', -- SHA256('password123')
    'ROOM管理者',
    '',
    '1970-01-01 00:00:00.000',
    '1970-01-01 00:00:00.000',
    0,
    1,
    NOW(),
    NOW()
);

-- 2. 既存のROOM組織への権限を設定
-- ROOMに関する全権限を付与 (tournaments + news + info + pickups + org-users)
-- permission_bit_flag = 0b0001000000 + 0b0000100000 + 0b0000010000 + 0b0000001000 + 0b0000000010 = 122
INSERT INTO admin_user_org (
    user_id,
    org_no,
    permission_bit_flag,
    enabled,
    created_at,
    updated_at
)
SELECT 
    'room_admin',
    org_no,
    122, -- tournaments + news + info + pickups + org-users の権限
    1,
    NOW(),
    NOW()
FROM org 
WHERE org_type = 'room' AND enabled = 1;

-- 確認用クエリ
-- 作成されたユーザーと権限を確認
SELECT 
    au.user_id,
    au.user_name,
    o.org_no,
    CASE o.org_type 
        WHEN 'room' THEN r.room_name 
        ELSE o.org_type 
    END AS org_name,
    auo.permission_bit_flag,
    CASE 
        WHEN (auo.permission_bit_flag & 64) > 0 THEN 'tournaments, '
        ELSE ''
    END +
    CASE 
        WHEN (auo.permission_bit_flag & 32) > 0 THEN 'news, '
        ELSE ''
    END +
    CASE 
        WHEN (auo.permission_bit_flag & 16) > 0 THEN 'info, '
        ELSE ''
    END +
    CASE 
        WHEN (auo.permission_bit_flag & 8) > 0 THEN 'pickups, '
        ELSE ''
    END +
    CASE 
        WHEN (auo.permission_bit_flag & 2) > 0 THEN 'org-users'
        ELSE ''
    END AS permissions,
    auo.enabled
FROM admin_user au
JOIN admin_user_org auo ON au.user_id = auo.user_id
JOIN org o ON auo.org_no = o.org_no
LEFT JOIN room r ON o.org_type = 'room' AND o.ref_no = r.room_no
WHERE au.user_id = 'room_admin'
ORDER BY o.org_no; 