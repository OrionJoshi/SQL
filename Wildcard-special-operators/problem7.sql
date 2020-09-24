-- 7. Write a SQL statement to find those salesmen with all other information and 
-- name started with any letter within 'A' and 'K'. 

-- Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14


-- Solutions

-- Method-1

    SELECT *
    FROM salesman
    WHERE left(name,1) between 'A' and 'L'

-- Method-2

    SELECT *
    FROM salesman
    WHERE name BETWEEN 'A' and 'L';