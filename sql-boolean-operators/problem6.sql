-- 6. Write a SQL statement to display either those orders which are not issued on date 2012-09-10 
-- and issued by the salesman whose ID is 5005 and below or those orders which purchase amount is 1000.00
-- and below. 

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
    WHERE NOT ((ord_date ='2012-09-10' 
    AND salesman_id > 5005) 
    OR purch_amt > 1000.00);

-- Output

-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70002	65.26		2012-10-05	3002		5001
-- 70004	110.50		2012-08-17	3009		5003
-- 70011	75.29		2012-08-17	3003		5007
