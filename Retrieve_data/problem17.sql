-- 17. Write a SQL query to show all details of the Prime Ministerial winners 
-- after 1972 of Menachem Begin and Yitzhak Rabin.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    SELECT * FROM nobel_win WHERE year >1972 AND
    (winner = 'Menachem Begin'
    or
    winner = 'Yitzhak Rabin')

-- Method-2

    SELECT * FROM nobel_win
    WHERE year >1972
    AND winner IN ('Menachem Begin','Yitzhak Rabin');

