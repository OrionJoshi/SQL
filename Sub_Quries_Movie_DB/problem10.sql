-- 10. Write a query in SQL to find the reviewer's name and the title of the movie for those reviewers
--  who rated more than one movies.

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

    SELECT rv.rev_name, m.mov_title
    FROM movie m 
    JOIN rating r ON m.mov_id = r.mov_id 
    JOIN reviewer rv ON rv.rev_id = r.rev_id 
    WHERE r.rev_id IN 
        (SELECT rev_id FROM rating GROUP BY rev_id HAVING COUNT(*) > 1)
