-- 6. Write a query in SQL to count the number available rooms.  
-- Sample table: room

-- roomnumber | roomtype | blockfloor | blockcode | unavailable
-- -----------+----------+------------+-----------+-------------
--        101 | Single   |          1 |         1 | f
--        102 | Single   |          1 |         1 | f
--        103 | Single   |          1 |         1 | f

-- Solutions

-- Method-1

    SELECT count(*) AS "Number of available rooms"
    FROM room
    WHERE unavailable='f';

-- Method-2

    SELECT count(*) AS "Number of available rooms"
    FROM room
    WHERE unavailable='f%';

-- Output

    --      Number of available rooms
    -- ---------------------------
    --                 29
