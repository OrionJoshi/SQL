-- 2. Write a query in SQL to list the first and last names of all the actors who were cast in the movie 
--'Annie Hall', and the roles they played in that production.

-- Sample table: actor

--  act_id |      act_fname       |      act_lname       | act_gender
-- --------+----------------------+----------------------+------------
--     101 | James                | Stewart              | M
--     102 | Deborah              | Kerr                 | F
--     103 | Peter                | OToole               | M
--     104 | Robert               | De Niro              | M
--     105 | F. Murray            | Abraham              | M

-- Sample table: movie_cast

--     act_id | mov_id |              role
-- --------+--------+--------------------------------
--     101 |    901 | John Scottie Ferguson
--     102 |    902 | Miss Giddens
--     103 |    903 | T.E. Lawrence
--     104 |    904 | Michael
--     105 |    905 | Antonio Salieri

-- Sample table: movie 

--      mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
-- --------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
--     901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
--     902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
--     903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
--     904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK


-- Solutions

-- Method-1

    SELECT DISTINCT a.act_fname, a.act_lname 
    FROM movie m 
    INNER JOIN movie_cast mc ON m.mov_id = mc.mov_id 
    INNER JOIN actor a ON mc.act_id = a.act_id 
    WHERE m.mov_title = 'Annie Hall'

-- Method-2

    SELECT ac.act_fname, ac.act_lname, mc.role
    FROM actor AS ac
    JOIN movie_cast AS mc
    ON ac.act_id = mc.act_id
    WHERE mc.mov_id = (SELECT mov_id FROM movie WHERE mov_title = 'Annie Hall')


