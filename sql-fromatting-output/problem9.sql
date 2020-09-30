-- 9. Write a SQL statement to make a report with customer ID in such a manner that, the largest number 
-- of orders booked by the customer will come first along with their highest purchase amount. 

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT customer_id, COUNT(DISTINCT ord_no), 
    MAX(purch_amt) 
    FROM orders 
    GROUP BY customer_id 
    ORDER BY 2 DESC;

-- Method-2

    SELECT customer_id, COUNT(ord_no), MAX(purch_amt)
    FROM orders
    GROUP BY customer_id
    ORDER BY 2 DESC, 3 DESC;

-- Output

-- customer_id	count		max
-- 3002		3		5760.00
-- 3009		2		2480.40
-- 3005		2		948.50
-- 3004		1		1983.43