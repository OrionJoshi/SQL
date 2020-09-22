-- 22. Write a SQL query to find all details of the prize won by Johannes Georg Bednorz.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    SELECT *
    FROM nobel_win 
    WHERE winner='Johannes Georg Bednorz';

--Output

-- year	subject	winner			        country	  category
-- 1987	Physics	Johannes Georg Bednorz	Germany	Scientist