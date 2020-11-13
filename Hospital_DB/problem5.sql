-- 5. Write a query in SQL to find the floor and block where the room number 212 belongs to.
-- Sample table: room

-- roomnumber | roomtype | blockfloor | blockcode | unavailable
-- -----------+----------+------------+-----------+-------------
--        101 | Single   |          1 |         1 | f
--        102 | Single   |          1 |         1 | f
--        103 | Single   |          1 |         1 | f

-- Solutions

-- Method-1

    SELECT blockfloor AS "Floor",blockcode AS "Block"
    FROM room
    WHERE roomnumber=212;

-- Output

--    Floor | Block
-- -------+-------
--      2 |     2
