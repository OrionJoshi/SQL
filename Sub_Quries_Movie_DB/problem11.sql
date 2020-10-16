-- 11. Write a query in SQL to find the movie title, and the highest number of stars that movie 
-- received and arranged the result according to the group of a movie and the movie title 
--appear alphabetically in ascending order.

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
--     905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK

-- Solutions

-- Method-1

    SELECT m.mov_title, MAX(r.rev_stars) AS max_rate 
    FROM movie m 
    JOIN rating r ON m.mov_id = r.mov_id 
    WHERE r.rev_stars IS NOT NULL GROUP BY m.mov_title
    ORDER BY m.mov_title ASC

-- Method-2

    SELECT mov_title, MAX(rev_stars)
    FROM movie, rating 
    WHERE movie.mov_id=rating.mov_id 
    AND rating.rev_stars IS NOT NULL
    GROUP BY  mov_title
    ORDER BY mov_title;