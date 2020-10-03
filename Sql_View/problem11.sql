-- 11. Write a query to create a view that shows the average and total orders for each salesman
--  after his or her name. (Assume all names are unique)

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14


-- Solution

-- Method-1

    CREATE VIEW norders
    AS SELECT name, AVG(purch_amt), SUM(purch_amt)
    FROM salesman, orders
    WHERE salesman.salesman_id = orders.salesman_id
    GROUP BY name;

-- Method-2

    -- CREATE VIEW no_of_orders
    -- AS SELECT s.name, AVG(o.purch_amt), SUM(o.purch_amt)
    -- FROM salesman s JOIN orders o
    -- ON s.salesman_id = o.salesman_id
    -- GROUP BY o.name;

-- Output

--         name     |          avg          |   sum
-- --------------+-----------------------+----------
--  Mc Lyon      | 1152.7150000000000000 |  2305.43
--  James Hoog   | 2817.8650000000000000 | 11271.46