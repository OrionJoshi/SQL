-- 6. Write a query in SQL to list first and last name of all the directors with number of genres movies
--  the directed with genres name, and arranged the result alphabetically with the first and last name 
--  of the director.

   -- Sample table: director

--      dir_id |      dir_fname       |      dir_lname
-- --------+----------------------+----------------------
--     201 | Alfred               | Hitchcock
--     202 | Jack                 | Clayton
--     203 | David                | Lean
--     204 | Michael              | Cimino

-- Sample table: movie_direction

--     dir_id | mov_id
-- --------+--------
--     201 |    901
--     202 |    902
--     203 |    903
--     204 |    904
--     205 |    905

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
--     905 | Amadeus                                            |     1984 |      160 | English         | 1985-01-07 | UK


-- Solutions

-- Method-1

    SELECT DISTINCT d.dir_fname, d.dir_lname, g.gen_title, COUNT(gen_title) 
    FROM movie_genres mg 
    JOIN genres g ON mg.gen_id = g.gen_id 
    JOIN movie_direction md ON md.mov_id = mg.mov_id 
    JOIN director d ON md.dir_id = d.dir_id 
    GROUP BY d.dir_fname, d.dir_lname, g.gen_title 
    ORDER BY d.dir_fname, d.dir_lname

-- Method-2

    -- SELECT dir_fname,dir_lname, gen_title,count(gen_title)
    -- FROM director
    -- NATURAL JOIN movie_direction
    -- NATURAL JOIN movie_genres
    -- NATURAL JOIN genres
    -- GROUP BY dir_fname, dir_lname,gen_title
    -- ORDER BY dir_fname,dir_lname;