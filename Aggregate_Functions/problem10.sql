-- 10. Write a SQL statement to find the highest purchase amount ordered by the each customer
--  on a particular date with their ID, order date and highest purchase amount.


-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT customer_id,ord_date,MAX(purch_amt) 
    FROM orders 
    GROUP BY customer_id,ord_date;

-- Method-2

    SELECT MAX(PURCH_AMT),CUSTOMER_ID,ORD_DATE
    FROM ORDERS
    GROUP BY 2,3

--Output

-- customer_id	ord_date	max
-- 3002		2012-10-05	65.26
-- 3003		2012-08-17	75.29
-- 3005		2012-10-05	150.50
-- 3007		2012-07-27	2400.60
