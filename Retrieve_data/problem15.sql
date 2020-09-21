-- 15. Write a SQL query to give the name of the 'Physics' winners since the year 1950.


-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    SELECT winner 
    FROM nobel_win
    WHERE year>=1950
    AND subject='Physics';

-- Output

-- winner
-- Hannes Alfven
-- Louis Neel
-- Dennis Gabor
-- Johannes Georg Bednorz