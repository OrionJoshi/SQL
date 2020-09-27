-- 9. Write a SQL statement to find the highest purchase amount ordered by the each customer
--  with their ID and highest purchase amount.

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT customer_id,MAX(purch_amt) 
    FROM orders 
    GROUP BY customer_id;

-- Method-2

    SELECT customer_id,MAX(purch_amt) 
    FROM orders 
    GROUP BY 1;

-- Output

-- customer_id	max
-- 3007		2400.60
-- 3008		250.45
-- 3002		5760.00
-- 3001		270.65