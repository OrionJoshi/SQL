-- 23. Write a SQL query to find all the details of the nobel winners for the subject 
-- not started with the letter 'P' and arranged the list as the most recent comes first, then by name in order.

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
    WHERE subject NOT LIKE 'P%' 
    ORDER BY year DESC, winner;

-- Method-2

    SELECT DISTINCT* FROM nobel_win WHERE LEFT(subject,1) <> 'P' ORDER BY year DESC, winner;

-- Output
    
-- year	subject	   winner			country	   	category
-- 1994	Literature Kenzaburo Oe	      		Japan	  	Linguist
-- 1994	Economics  Reinhard Selten		Germany	  	Economist
-- 1987	Chemistry  Donald J. Cram		USA		Scientist