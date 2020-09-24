-- 10. Write a SQL query to display order number, purchase amount, achieved, the unachieved percentage 
-- for those order which exceeds the 50% of the target value of 6000.

-- Sample table : orders

-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT ord_no, purch_amt,
    (100*purch_amt)/6000 AS "achieved percentage",
    (100-(100*purch_amt)/6000) AS "unachieved percentage"
    FROM orders
    WHERE (100*purch_amt)/6000>50

-- Method-2

    SELECT ord_no,purch_amt, 
    (100*purch_amt)/6000 AS "Achieved %", 
    (100*(6000-purch_amt)/6000) AS "Unachieved %" 
    FROM  orders 
    WHERE (100*purch_amt)/6000>50;

-- Output

-- ord_no	purch_amt	achieved percentage	unachieved%
-- 70008	5760.00	96.0000000000000000	4.0000000000000000
-- 70013	3045.60	50.7600000000000000	49.2400000000000000