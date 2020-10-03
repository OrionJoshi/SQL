-- 10. Write a query to create a view that shows the number of the salesman in each city.

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14


-- Solution

-- Method-1

    CREATE VIEW citynum
    AS SELECT city, COUNT (DISTINCT salesman_id)
    FROM salesman
    GROUP BY city;

--Output

--       city   | count
-- ----------+-------
--  London   |     1
--  New York |     1
--  Paris    |     2