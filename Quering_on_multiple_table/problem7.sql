-- 7. Write a SQL statement that produces all orders with the order number, customer name,
--  commission rate and earned commission amount for those customers who carry their grade
--   is 200 or more and served by an existing salesman.

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

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003

-- Solution

-- Method-1

    SELECT ord_no, cust_name, commission AS "Commission%",
    purch_amt*commission AS "Commission"
    FROM salesman
    JOIN orders
    ON orders.salesman_id = salesman.salesman_id
    JOIN customer
    ON orders.customer_id = customer.customer_id
    WHERE customer.grade >= 200;

-- Method-2

    SELECT ord_no, cust_name, commission AS "Commission%",
    purch_amt*commission AS "Commission"
    FROM salesman,orders,customer
    WHERE orders.customer_id = customer.customer_id
    AND orders.salesman_id = salesman.salesman_id
    AND customer.grade>=200;