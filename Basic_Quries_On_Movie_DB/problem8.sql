-- 8. Write a query in SQL to find the titles of the movies with ID 905, 907, 917.
-- Sample table: movie

--     mov_id |                     mov_title                      | mov_year | mov_time |    mov_lang     | mov_dt_rel | mov_rel_country
-- --------+----------------------------------------------------+----------+----------+-----------------+------------+-----------------
--     901 | Vertigo                                            |     1958 |      128 | English         | 1958-08-24 | UK
--     902 | The Innocents                                      |     1961 |      100 | English         | 1962-02-19 | SW
--     903 | Lawrence of Arabia                                 |     1962 |      216 | English         | 1962-12-11 | UK
--     904 | The Deer Hunter                                    |     1978 |      183 | English         | 1979-03-08 | UK


-- Solutions

-- Method-1

    SELECT mov_title 
    FROM movie 
    WHERE mov_id IN (905, 907, 917)

-- Method-2

    SELECT mov_title 
    FROM movie 
    WHERE mov_id = 905 OR mov_id = 907 OR mov_id = 917


