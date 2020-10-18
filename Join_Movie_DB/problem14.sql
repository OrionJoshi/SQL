-- 14. Write a query in SQL to find movie title and number of stars for each movie that has at least one rating
--  and find the highest number of stars that movie received and sort the result by movie title.


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

    SELECT m.mov_title, COUNT(r.rev_stars), MAX(r.rev_stars) 
    FROM movie m 
    JOIN rating r ON m.mov_id = r.mov_id 
    WHERE r.rev_stars IS NOT NULL 
    GROUP BY m.mov_id 
    ORDER BY m.mov_title

-- Method-2

    -- SELECT mov_title, MAX(rev_stars)
    -- FROM movie
    -- INNER JOIN rating USING(mov_id)
    -- GROUP BY mov_title 
    -- HAVING MAX(rev_stars)>0
    -- ORDER BY mov_title;