-- 24. Write a SQL query to find all the details of 1970 winners by the ordered to subject
-- and winner name; but the list contain the subject Economics and Chemistry at last.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    -- SELECT *
    -- FROM nobel_win
    -- WHERE subject NOT IN('Economics', 'Chemistry')
    -- ORDER BY subject, winner

    -- UNION

    -- (SELECT *
    -- FROM nobel_win
    -- WHERE subject IN('Economics', 'Chemistry')
    -- ORDER BY subject DESC, winner)

-- Method-2

    SELECT *
    FROM nobel_win
    WHERE year=1970 
    ORDER BY
    CASE
        WHEN subject IN ('Economics','Chemistry') THEN 1
        ELSE 0
    END ASC,
    subject,
    winner;