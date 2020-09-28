-- 16. Write a SQL statement to display customer details (ID and purchase amount) whose IDs are within 
-- the range 3002 and 3007 and highest purchase amount is more than 1000.

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
    GROUP BY customer_id 
    HAVING MAX(purch_amt) > 1000;

-- Output

-- customer_id	max
-- 3002		5760.00
-- 3007		2400.60
-- 3004		1983.43
