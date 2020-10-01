-- 4. Write a SQL statement that finds out each order number followed by the name of the customers
--  who made the order

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- -- Sample table: customer

-- customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002

-- Solution

-- Method-1

    SELECT orders.ord_no, customer.cust_name
    FROM orders, customer
    WHERE orders.customer_id = customer.customer_id; 

-- Method-2

    SELECT o.ord_no, c.cust_name
    FROM Orders AS o
    JOIN customer AS c
    on o.customer_id=c.customer_id
