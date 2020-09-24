-- 1. Write a SQL statement to find those salesmen with all information who come 
-- from the city either Paris or Rome.

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
    WHERE city = 'Paris' 
    OR city = 'Rome';

-- Method-2

    SELECT *
    FROM salesman
    WHERE city IN ('Paris' , 'Rome')

-- Output

-- salesman_id	name		city	commission
-- 5002		Nail Knite	Paris	0.13
-- 5006		Mc Lyon		Paris	0.14
-- 5007		Paul Adam	Rome	0.13
