-- 22. Write a query in SQL to count the number of available rooms in each block.
-- Sample table: room

--     roomnumber | roomtype | blockfloor | blockcode | unavailable
-- -----------+----------+------------+-----------+-------------
--        101 | Single   |          1 |         1 | f
--        102 | Single   |          1 |         1 | f
--        103 | Single   |          1 |         1 | f
--        111 | Single   |          1 |         2 | f

-- Solutions

-- Method-1

    SELECT blockcode AS "Block", count(*) "Number of available rooms"
    FROM room
    WHERE unavailable='false'
    GROUP BY blockcode

-- Output

    --      Block | Number of available rooms
    -- -------+---------------------------
    --      1 |                         9
    --      2 |                        10
    --      3 |                        10

