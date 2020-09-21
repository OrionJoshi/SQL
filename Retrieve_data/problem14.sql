-- 14. Write a SQL query to display the year and subject that won 'Dennis Gabor' his prize.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    SELECT year, subject
    FROM nobel_win
    WHERE winner = 'Dennis Gabor';

-- Output

-- year	subject
-- 1971	Physics