-- 8. Write a SQL query to display all orders where purchase amount less than 200 
-- or exclude those orders which order date is on or greater than 10th Feb,2012 
-- and customer id is below 3009.

-- Sample table : orders

-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT * 
    FROM  orders 
    WHERE(purch_amt<200 OR 
    NOT(ord_date>='2012-02-10' 
    AND customer_id<3009));

-- Output


-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70002	65.26		2012-10-05	3002		5001
-- 70004	110.50		2012-08-17	3009		5003
-- 70003	2480.40		2012-10-10	3009		5003
