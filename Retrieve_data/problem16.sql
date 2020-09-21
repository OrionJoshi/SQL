-- 16. Write a SQL query to Show all the details (year, subject, winner, country ) of the Chemistry
-- prize winners between the year 1965 to 1975 inclusive

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    SELECT year, subject, winner, country
    FROM nobel_win
    WHERE subject = 'Chemistry'
    AND year>=1965 AND year<=1975;

-- Method-2

    SELECT year, subject, winner, country
    FROM nobel_win
    WHERE subject = 'Chemistry'
    AND year BETWEEN 1965 AND 1975;
