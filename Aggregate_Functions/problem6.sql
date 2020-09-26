-- 6. Write a SQL statement to get the maximum purchase amount of all the orders. 

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT MAX (purch_amt) 
    FROM orders;

-- Method-2

    -- SELECT purch_amt 
    -- FROM orders 
    -- ORDER BY purch_amt DESC LIMIT 1

-- Output

-- purch_amt
-- 5760.00