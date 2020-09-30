-- 4. Write a SQL statement to arrange the orders according to the order date in such a manner 
-- that the latest date will come first then previous dates.

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
    ORDER BY ord_date DESC;

-- Output

-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70010	1983.43		2012-10-10	3004		5006
-- 70003	2480.40		2012-10-10	3009		5003
-- 70002	65.26		2012-10-05	3002		5001
-- 70001	150.50		2012-10-05	3005		5002