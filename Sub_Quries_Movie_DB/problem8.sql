-- 8. Write a query in SQL to find the names of all reviewers who have ratings with a NULL value.

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

    SELECT * FROM reviewer WHERE rev_id IN (SELECT DISTINCT rev_id FROM rating WHERE rev_stars IS NULL)

-- Method-2

    -- SELECT DISTINCT rev_name
    -- FROM reviewer
    -- JOIN rating USING (rev_id)
    -- WHERE rev_stars IS NULL;



