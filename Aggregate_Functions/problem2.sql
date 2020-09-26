-- 2. Write a SQL statement to find the average purchase amount of all orders. 

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT AVG (purch_amt) 
    FROM orders;

-- Output

--     avg
-- 1461.7650000000000000