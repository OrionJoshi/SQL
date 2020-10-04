-- 15. Write a query to create a view that finds the salesmen who issued orders on October 10th, 2012

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14


-- Solution

-- Method-1

    CREATE VIEW salesman
    AS SELECT *
    FROM salesman
    WHERE salesman_id IN
        (SELECT salesman_id
            FROM orders
            WHERE ord_date = '2012-10-10');

-- Method-2

    -- CREATE VIEW salesman
    -- AS SELECT *
    -- FROM salesman s JOIN order o
    -- ON s.salesman_id = o.salesman_id
    -- WHERE o.ord_date = '2012-10-10'

-- Output

--      salesman_id |     name     | city  | commission
-- -------------+--------------+-------+------------
--         5006 | Mc Lyon      | Paris |       0.14
--         5003 | Lauson Hense |       |       0.12