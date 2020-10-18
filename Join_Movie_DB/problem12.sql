-- 12. Write a query in SQL to find all the years which produced a movie that received a rating of 3 or 4,
-- and sort the result in increasing order.

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

    SELECT DISTINCT m.mov_year 
    FROM movie m 
    JOIN rating r ON m.mov_id = r.mov_id 
    WHERE r.rev_stars IN (3.00, 4.00) 
    ORDER BY m.mov_year

-- Method-2

    -- SELECT DISTINCT mov_year
    -- FROM movie
    -- INNER JOIN rating USING(mov_id)
    -- WHERE rev_stars IN (3,4)
    -- ORDER BY mov_year;

-- Method-3

    SELECT DISTINCT mov_year
    FROM movie, rating
    WHERE movie.mov_id = rating.mov_id 
    AND rev_stars IN (3, 4)
    ORDER BY mov_year;
