-- 11. Write a SQL query to display the order number followed by order date and 
-- the purchase amount for each order which will be delivered by the salesman who is holding the ID 5001.

-- Sample table: orders

--  ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solutions

-- Method-1

    SELECT ord_no, ord_date, purch_amt
    FROM orders
    WHERE salesman_id=5001;

-- Output

-- ord_no	ord_date	purch_amt
-- 70002	2012-10-05	65.26
-- 70005	2012-07-27	2400.60
-- 70008	2012-09-10	5760.00
-- 70013	2012-04-25	3045.60