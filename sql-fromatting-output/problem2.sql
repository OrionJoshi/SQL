-- 2. Write a SQL statement to find out the number of orders booked for each day and display it in
--  such a format like "For 2001-10-10 there are 15 orders". 

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT CONCAT('For',' ',ord_date,' ','there are',' ',COUNT(ord_no),' ','orders')
    FROM orders
    GROUP BY ord_date

-- Output

-- ?column?	ord_date	count
-- orders.	2012-04-25	1
-- orders.	2012-06-27	1
-- orders.	2012-07-27	1

