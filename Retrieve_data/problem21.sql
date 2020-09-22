-- 21. Write a SQL query to show the winners of a 'Physiology' prize in an early year 
-- before 1971 together with winners of a 'Peace' prize in a later year on and after the 1974.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Soutions

-- Method-1

    SELECT * FROM nobel_win WHERE (subject ='Physiology' AND year<1971)
    UNION (SELECT * FROM nobel_win WHERE (subject ='Peace' AND year>=1974));

-- Method-2

    SELECT * FROM nobel_win
    WHERE (subject = 'Physiology' AND year < 1971)
    OR (subject = 'Peace' AND year >=1974)

-- Output


-- year	subject		winner		country	category
-- 1970	Physiology	Bernard Katz	Germany	Scientist
-- 1970	Physiology	Julius Axelrod	USA	Scientist
-- 1970	Physiology	Ulf von Euler	Sweden	Scientist