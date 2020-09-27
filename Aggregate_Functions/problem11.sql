-- 11. Write a SQL statement to find the highest purchase amount on a date '2012-08-17' 
-- for each salesman with their ID. 

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT salesman_id,MAX(purch_amt) 
    FROM orders 
    WHERE ord_date = '2012-08-17' 
    GROUP BY salesman_id;

-- Method-2

    SELECT salesman_id,MAX(purch_amt) 
    FROM orders 
    WHERE ord_date = '2012-08-17' 
    GROUP BY 1;