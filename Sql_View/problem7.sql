-- 7. Write a query to create a view that finds the salesman who has the customer with the highest
-- order of a day.

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    CREATE VIEW elitsalesman
    AS SELECT b.ord_date, a.salesman_id, a.name
    FROM salesman a, orders b
    WHERE a.salesman_id = b.salesman_id
    AND b.purch_amt =
        (SELECT MAX (purch_amt)
        FROM orders c
        WHERE c.ord_date = b.ord_date);

-- Ouptut

--       ord_date  | salesman_id |     name
-- ------------+-------------+--------------
--  2012-08-17 |        5003 | Lauson Hense
--  2012-07-27 |        5001 | James Hoog 
--  2012-09-10 |        5001 | James Hoog
