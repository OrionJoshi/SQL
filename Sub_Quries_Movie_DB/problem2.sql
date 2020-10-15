-- 2. Write a query in SQL to find the name of the director (first and last names) who directed a movie
--  that casted a role for 'Eyes Wide Shut'. (using subquery)

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

    SELECT * FROM director 
    WHERE dir_id IN 
        (SELECT md.dir_id FROM movie_direction md WHERE md.mov_id IN 
            (SELECT m.mov_id FROM movie m WHERE m.mov_title = 'Eyes Wide Shut'))

-- Method-2

    SELECT dir_fname, dir_lname
    FROM  director
    WHERE dir_id in (
    SELECT dir_id 
    FROM movie_direction
    WHERE mov_id in(
    SELECT mov_id 
    FROM movie_cast WHERE role = ANY (
    SELECT role 
    FROM movie_cast 
    WHERE mov_id IN (
    SELECT  mov_id 
    FROM movie 
    WHERE mov_title='Eyes Wide Shut'))));


