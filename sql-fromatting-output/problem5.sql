-- 5. Write a SQL statement to display the orders with all information in such a manner that,
-- the older order date will come first and the highest purchase amount of same day will come first. 

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT * 
    FROM orders 
    ORDER BY ord_date, purch_amt DESC;

-- Output

-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70013	3045.60		2012-04-25	3002		5001
-- 70012	250.45		2012-06-27	3008		5002
-- 70005	2400.60		2012-07-27	3007		5001
-- 70004	110.50		2012-08-17	3009		5003