-- 20. Write a SQL query to show all the winners of nobel prize in the year 1970 
-- except the subject Physiology and Economics.


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
    WHERE year=1970
    AND subject NOT IN('Physiology','Economics');

-- Method-2

    SELECT *
    FROM nobel_win
    WHERE
    year=1970 and subject<> 'Physiology' and subject<> 'Economics'
