-- 5. Write a SQL statement to find those salesmen with all information who gets the commission
-- within a range of 0.12 and 0.14. 

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14

-- Solutions

-- Method-1

    SELECT * 
    FROM salesman 
    WHERE commission 
    BETWEEN 0.12 AND 0.14;

-- Method-2

    SELECT *
    FROM salesman
    WHERE commission>=0.12 
    AND commission<=0.14;
