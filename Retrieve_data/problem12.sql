-- 12. Write a SQL query to display the Nobel prizes for 1970.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Solutions

-- Method-1

    SELECT * 
    FROM nobel_win 
    WHERE year=1970;

-- Output

-- year	subject		winner
-- 1970	Physics		Hannes Alfven
-- 1970	Physics		Louis Neel
-- 1970	Chemistry	Luis Federico Leloir
