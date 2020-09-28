-- 18. Write a SQL statement that counts all orders for a date August 17th, 2012


-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT COUNT(*) 
    FROM orders 
    WHERE ord_date='2012-08-17';

-- Method-2

    SELECT COUNT(ord_no) FROM orders WHERE ord_date = '2012-08-17'
    
-- Output

-- count
-- 2
