-- 15. Write a SQL statement to make a report with customer name, city, order no. order date,
--  purchase amount for those customers from the existing list who placed one or more orders
--   or which order(s) have been placed by the customer who is not on the list.


-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

--Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
 
-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt
    FROM orders o
    LEFT JOIN customer c
    ON o.customer_id=c.customer_id

-- Method-2

    SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt
    FROM customer c
    RIGHT JOIN orders o
    ON o.customer_id=c.customer_id

-- Output

    --     cust_name	city		ord_no	ord_date	Order Amount
    -- Brad Guzan	London		70009	2012-09-10	270.65
    -- Nick Rimando	New York	70002	2012-10-05	65.26
    -- Geoff Cameron	Berlin		70004	2012-08-17	110.50