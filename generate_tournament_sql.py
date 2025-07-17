import csv
import os

def generate_tournament_structure_sql():
    """CSVファイルからtournament_structure.sqlを生成する"""
    
    csv_file = '_csv/core/tournament_structure.csv'
    sql_file = 'core/tournament_structure.sql'
    
    if not os.path.exists(csv_file):
        print(f"CSVファイルが見つかりません: {csv_file}")
        return
    
    # SQLファイルのヘッダー部分
    sql_header = """SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- tournament_structureテーブルの作成
DROP TABLE IF EXISTS tournament_structure;

CREATE TABLE tournament_structure (
    tournament_no INT NOT NULL,
    seq INT NOT NULL,
    level INT DEFAULT NULL COMMENT '-1=Break',
    small_blind INT DEFAULT NULL,
    big_blind INT DEFAULT NULL,
    giant_blind INT DEFAULT NULL,
    ante INT DEFAULT NULL,
    blind_min INT DEFAULT NULL,
    enabled TINYINT DEFAULT 1 COMMENT '論理削除フラグ',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時',
    PRIMARY KEY (tournament_no, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

-- CSVデータを基にしたトーナメント構造データ
"""
    
    sql_footer = """
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;"""
    
    try:
        with open(csv_file, 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            
            with open(sql_file, 'w', encoding='utf-8') as sql_f:
                sql_f.write(sql_header)
                
                for row in reader:
                    # CSVの各行をINSERT文に変換
                    tournament_no = row['tournament_no']
                    seq = row['seq']
                    level = row['level']
                    small_blind = row['small_blind']
                    big_blind = row['big_blind']
                    giant_blind = row['giant_blind']
                    ante = row['ante']
                    blind_min = row['blind_min']
                    
                    insert_sql = f"INSERT INTO tournament_structure(tournament_no,seq,level,small_blind,big_blind,giant_blind,ante,blind_min) VALUES({tournament_no},{seq},{level},{small_blind},{big_blind},{giant_blind},{ante},{blind_min});\n"
                    sql_f.write(insert_sql)
                
                sql_f.write(sql_footer)
        
        print(f"SQLファイルが正常に生成されました: {sql_file}")
        
    except Exception as e:
        print(f"エラーが発生しました: {e}")

if __name__ == "__main__":
    generate_tournament_structure_sql() 