-- 12. Write a SQL statement to find the highest purchase amount with their ID and order date,
--  for only those customers who have highest purchase amount in a day is more than 2000.

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT customer_id,ord_date,MAX(purch_amt) 
    FROM orders 
    GROUP BY customer_id,ord_date 
    HAVING MAX(purch_amt) > 2000.00;

-- Output

-- customer_id	ord_date	max
-- 3007		2012-07-27	2400.60
-- 3002		2012-09-10	5760.00
-- 3009		2012-10-10	2480.40
-- 3002		2012-04-25	3045.60