-- 20. Write a query that counts the number of salesmen with their order date and 
-- ID registering orders for each day.

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT ord_date,salesman_id,COUNT(*) 
    FROM orders 
    GROUP BY ord_date,salesman_id;

-- Output

-- ord_date	salesman_id	count
-- 2012-07-27	5001		1
-- 2012-08-17	5007		1
-- 2012-04-25	5001		1
-- 2012-09-10	5002		1