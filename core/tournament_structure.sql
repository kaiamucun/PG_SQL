SET NAMES utf8mb4;

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
    PRIMARY KEY (tournament_no, seq)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

START TRANSACTION;

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

CREATE INDEX idx_tournament_structure_tournament_id ON tournament_structure(tournament_no);
CREATE INDEX idx_tournament_structure_level_number ON tournament_structure(level);
CREATE INDEX idx_tournament_structure_is_break ON tournament_structure(level); 