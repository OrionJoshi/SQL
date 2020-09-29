-- 3. Write a query to display the orders according to the order number arranged by ascending order. 

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
    ORDER BY ord_no;

-- Output

-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70001	150.50		2012-10-05	3005		5002
-- 70002	65.26		2012-10-05	3002		5001
-- 70003	2480.40		2012-10-10	3009		5003
