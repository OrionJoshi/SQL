-- 5. Write a query in SQL to return the name of all reviewers and name of movies together in a single list.

-- Sample table: movie

--     mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
-- --------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
--     901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
--     902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
--     903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
--     904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK

-- Sample table: reviewer

--     ev_id |            rev_name
-- --------+--------------------------------
--    9001 | Righty Sock
--    9002 | Jack Malvern
  
-- Solutions

-- Method-1

    SELECT mov_title As Combined_name FROM  movie
    UNION
    (SELECT rev_name FROM reviewer)

-- Output

--                           rev_name
-- ----------------------------------------------------

--  Hannah Steele
--  Annie Hall
--  The Usual Suspects