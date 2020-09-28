-- 19. Write a SQL statement that count the number of salesmen for whom a city is specified.
--  Note that there may be spaces or no spaces in the city column if no city is specified. 

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11

-- Solutions

-- Method-1

    SELECT COUNT(*) 
    FROM salesman 
    WHERE city IS NOT NULL;

-- Output

-- count
-- 6