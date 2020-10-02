-- 1. Write a query to create a view for those salesmen belongs to the city New York.

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14

-- Solution

-- Method-1

    CREATE VIEW newyork_salesman
    AS SELECT *
    FROM salesman
    WHERE city = 'New York';

-- Output

--     salesman_id |    name    |   city   | commission
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
