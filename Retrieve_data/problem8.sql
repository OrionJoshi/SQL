-- Write a query which will retrieve the values of salesman id of all salesmen getting orders from 
-- the customers in orders table without any repeats.

-- Sample table: orders

-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003
-- 70007       948.5       2012-09-10  3005         5002
-- 70005       2400.6      2012-07-27  3007         5001
-- ... and so on

-- Solution

-- Method-1

    SELECT DISTINCT salesman_id FROM orders;

-- Output

    -- salesman_id
    -- 5002
    -- 5003
    -- 5006
    -- 5001
    -- 5005
    -- 5007
