--7. Write a query in SQL to find the titles of all movies that have no ratings.


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

    SELECT mov_title 
    FROM movie WHERE mov_id 
    IN (SELECT DISTINCT(mov_id) FROM rating WHERE rev_stars IS NULL)

-- Method-2

    SELECT mov_title
    FROM movie
    WHERE mov_id NOT IN (
    SELECT mov_id 
    FROM rating
    );
