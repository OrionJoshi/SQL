-- 15. Write a SQL statement to find the highest purchase amount with their ID, for only those customers
--  whose ID is within the range 3002 and 3007.

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
    WHERE customer_id BETWEEN 3002 and 3007 
    GROUP BY customer_id;

-- Output

-- customer_id	max
-- 3002		5760.00
-- 3007		2400.60
-- 3004		1983.43
-- 3003		75.29
-- 3005		948.50