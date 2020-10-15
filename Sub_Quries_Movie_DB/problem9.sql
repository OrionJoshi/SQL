-- 9. Write a query in SQL to return the reviewer name, movie title, and stars for those movies 
-- which reviewed by a reviewer and must be rated. Sort the result by reviewer name, movie title,
--  and number of stars. 

-- Sample table: reviewer

--     rev_id |            rev_name
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

-- Solutions

-- Method-1

    SELECT DISTINCT re.rev_name, m.mov_title,r.rev_stars FROM movie m JOIN rating r ON m.mov_id = r.mov_id JOIN reviewer re ON re.rev_id = r.rev_id WHERE r.rev_stars IS NOT NULL AND re.rev_name IS NOT NULL ORDER BY re.rev_name, m.mov_title, r.rev_stars

-- Method-2

    SELECT rev_name, mov_title, rev_stars 
    FROM reviewer, rating, movie 
    WHERE reviewer.rev_id=rating.rev_id 
    AND movie.mov_id=rating.mov_id 
        AND reviewer.rev_name IS NOT NULL 
        AND rating.rev_stars IS NOT NULL
    ORDER BY rev_name, mov_title, rev_stars;
