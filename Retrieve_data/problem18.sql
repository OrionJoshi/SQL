-- 18. Write a SQL query to show all the details of the winners with first name Louis.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    SELECT * FROM nobel_win WHERE LEFT(winner,5)='Louis' AND SUBSTRING(winner,6,1) = ' ';

-- Method-2

    SELECT *
    FROM nobel_win 
    WHERE winner LIKE 'Louis%';