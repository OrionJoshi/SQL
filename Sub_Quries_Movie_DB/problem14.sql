-- 14. Write a query in SQL to return the reviewer name, movie title, and number of stars for those movies
--  which rating is the lowest one.  


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

    SELECT DISTINCT rv.rev_name, m.mov_title, r.num_o_ratings 
    FROM movie m 
    JOIN rating r ON m.mov_id = r.mov_id 
    JOIN reviewer rv ON rv.rev_id = r.rev_id 
    WHERE r.rev_stars = (SELECT MIN(rev_stars) FROM rating)

-- Method-2

    SELECT reviewer.rev_name, movie.mov_title, rating.rev_stars
    FROM reviewer, movie, rating
    WHERE rating.rev_stars = (
    SELECT MIN(rating.rev_stars)
    FROM rating
    )
    AND rating.rev_id = reviewer.rev_id
    AND rating.mov_id = movie.mov_id;