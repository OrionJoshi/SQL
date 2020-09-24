-- 6. Write a query to filter all those orders with all information which purchase amount 
-- value is within the range 500 and 4000 except those orders of purchase amount value 948.50 and 1983.43.

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003

-- Solutions

-- Method-1


    SELECT * 
    FROM orders 
    WHERE (purch_amt BETWEEN 500 AND 4000) 
    AND NOT purch_amt IN(948.50,1983.43);

-- Output

-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70005	2400.60		2012-07-27	3007		5001
-- 70003	2480.40		2012-10-10	3009		5003
-- 70013	3045.60		2012-04-25	3002		5001
