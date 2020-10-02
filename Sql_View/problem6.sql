-- 6. Write a query to create a view that shows for each order the salesman and customer by name.  

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

-- Solution

-- Method-1

    CREATE VIEW nameorders
    AS SELECT ord_no, purch_amt, a.salesman_id, name, cust_name
    FROM orders a, customer b, salesman c
    WHERE a.customer_id = b.customer_id
    AND a.salesman_id = c.salesman_id;

-- Output

--      ord_no | purch_amt | salesman_id |  name   |   cust_name
-- --------+-----------+-------------+---------+----------------
--   70010 |   1983.43 |        5006 | Mc Lyon | Fabian Johnson
--   70015 |    322.00 |        5006 | Mc Lyon | Varun