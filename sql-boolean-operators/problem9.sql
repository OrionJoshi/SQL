-- 9. Write a SQL statement to exclude the rows which satisfy 1) order dates are 2012-08-17 
-- and purchase amount is below 1000 2) customer id is greater than 3005 and purchase amount is below 1000.

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
    WHERE NOT((ord_date ='2012-08-17' 
    OR customer_id>3005) 
    AND purch_amt<1000);

-- Output

-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70009	270.65		2012-09-10	3001		5005
-- 70002	65.26		2012-10-05	3002		5001
-- 70005	2400.60		2012-07-27	3007		5001
-- 70008	5760.00		2012-09-10	3002		5001