-- 13. Write a SQL query to know the winner of the 1971 prize for Literature.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Solutions

-- Method-1

    SELECT winner
    FROM nobel_win
    WHERE year = 1971
    AND subject = 'Literature';

-- Output

-- winner
-- Pablo Neruda