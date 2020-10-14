-- 6. Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating.

-- Sample table: reviewer

--     ev_id |            rev_name
-- --------+--------------------------------
--    9001 | Righty Sock
--    9002 | Jack Malvern
  
-- Sample table: rating

--     mov_id | rev_id | rev_stars | num_o_ratings
-- --------+--------+-----------+---------------
--     901 |   9001 |      8.40 |        263575
--     902 |   9002 |      7.90 |         20207
--     903 |   9003 |      8.30 |        202778
--     906 |   9005 |      8.20 |        484746


-- Solutions

-- Method-1

    SELECT r.rev_name 
    FROM reviewer r 
    JOIN rating ra ON r.rev_id = ra.rev_id 
    WHERE ra.rev_stars >= 7

-- Method-2

    SELECT reviewer.rev_name
    FROM reviewer, rating
    WHERE rating.rev_id = reviewer.rev_id
    AND rating.rev_stars>=7 

-- Output

--                 rev_name
-- --------------------------------
--  Righty Sock
--  Jack Malvern
--  Flagrant Baronessa
--  Victor Woeltjen
--  Simon Wright
