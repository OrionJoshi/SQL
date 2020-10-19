-- 23. Write a query in SQL to generate a report which shows the year when most of the Mystery movies 
-- produces, and number of movies and their average rating.

-- Sample table: reviewer 

--      rev_id |            rev_name
-- --------+--------------------------------
--    9001 | Righty Sock
--    9002 | Jack Malvern
--    9003 | Flagrant Baronessa
--    9004 | Alec Shaw

-- Sample table: rating 

--      mov_id | rev_id | rev_stars | num_o_ratings
-- --------+--------+-----------+---------------
--     901 |   9001 |      8.40 |        263575
--     902 |   9002 |      7.90 |         20207
--     903 |   9003 |      8.30 |        202778

-- Sample table: movie 

--      mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
-- --------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
--     901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
--     902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
--     903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
--     904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK


-- Solutions

-- Method-1

    -- SELECT mov_year,gen_title, COUNT(*), AVG(rev_stars)
    -- FROM movie 
    -- NATURAL JOIN movie_genres 
    -- NATURAL JOIN genres 
    -- NATURAL JOIN rating
    -- WHERE gen_title = 'Mystery'
    -- GROUP BY mov_year,gen_title

-- Output

--      mov_year |      gen_title       | count |        avg
-- ----------+----------------------+-------+--------------------
--      1958 | Mystery              |     1 | 8.4000000000000000
