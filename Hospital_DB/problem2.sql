-- 2. Write a query in SQL to find the name of the nurse who are the head of their department.
-- Sample table: nurse 

-- employeeid |      name       |  position  | registered |    ssn
-- ------------+-----------------+------------+------------+-----------
--         101 | Carla Espinosa  | Head Nurse | t          | 111111110
--         102 | Laverne Roberts | Nurse      | t          | 222222220
--         103 | Paul Flowers    | Nurse      | f          | 333333330

-- Solutions

-- Method-1

    SELECT name AS "Name"
    FROM nurse
    WHERE POSITION='Head Nurse';

-- Output

    --         Name      
    -- ----------------
    --  Carla Espinosa 
