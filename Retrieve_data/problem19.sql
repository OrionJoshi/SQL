-- 19. Write a SQL query to show all the winners in Physics for 1970 together with the winner of Economics
-- for 1971.

-- Sample table: nobel_win

-- YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
-- ---- ------------------------- --------------------------------------------- ------------------------- ------------
-- 1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
-- 1970 Physics                   Louis Neel                                    France                 Scientist
-- 1970 Chemistry                 Luis Federico Leloir                          France                 Scientist

-- Solutions

-- Method-1

    SELECT * FROM nobel_win WHERE (subject ='Physics' AND year =1970) 
    OR (subject ='Economics' AND year =1971)

-- Method-2

    SELECT * FROM nobel_win  WHERE (subject ='Physics' AND year=1970) 
    UNION 
    (SELECT * FROM nobel_win  WHERE (subject ='Economics' AND year=1971));

-- Output

-- year	subject		winner		country	  category
-- 1970	Physics		Hannes Alfven	Sweden	 Scientist
-- 1970	Physics		Louis Neel	France	 Scientist
-- 1971	Economics	Simon Kuznets	Russia	 Economist