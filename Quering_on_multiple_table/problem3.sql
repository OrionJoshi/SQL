-- 3. Write a SQL statement to display all those orders by the customers not located in the same cities
--  where their salesmen live.

-- Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11

-- -- Sample table: customer

-- customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002

-- Solution

-- Method-1

    SELECT ord_no, cust_name
    FROM orders o INNER JOIN customer c
    ON o.customer_id = c.customer_id
    INNER JOIN salesman s
    ON c.salesman_id = s.salesman_id
    WHERE s.city <> c.city

-- Method-2

    SELECT ord_no, cust_name, orders.customer_id, orders.salesman_id
    FROM salesman, customer, orders
    WHERE customer.city <> salesman.city
    AND orders.customer_id = customer.customer_id
    AND orders.salesman_id = salesman.salesman_id;