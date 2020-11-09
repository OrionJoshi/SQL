-- 1. Write a query in SQL to find all the information of the nurses who are yet to be registered.
-- Sample table: nurse 

-- employeeid |      name       |  position  | registered |    ssn
-- ------------+-----------------+------------+------------+-----------
--         101 | Carla Espinosa  | Head Nurse | t          | 111111110
--         102 | Laverne Roberts | Nurse      | t          | 222222220
--         103 | Paul Flowers    | Nurse      | f          | 333333330

-- Solutions

-- Method-1

    SELECT *
    FROM nurse
    WHERE registered='false';

-- Method-2

    SELECT *
    FROM nurse
    WHERE registered='f';

-- Output

--     employeeid |     name     | position | registered |    ssn
--  ------------+--------------+----------+------------+-----------
--          103 | Paul Flowers | Nurse    | f          | 333333330


