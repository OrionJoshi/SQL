-- 17. Write a SQL statement to find the highest purchase amount with their ID, for only those salesmen
--  whose ID is within the range 5003 and 5008.

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
    GROUP BY salesman_id 
    HAVING salesman_id BETWEEN 5003 AND 5008;

-- Output

-- salesman_id	max
-- 5005		270.65
-- 5003		2480.40
-- 5007		75.29
-- 5006		1983.43
