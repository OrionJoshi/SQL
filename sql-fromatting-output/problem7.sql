-- 7. Write a SQL statement to make a report with salesman ID, order date and highest purchase amount
--  in such an arrangement that, the smallest salesman ID will come first along with their smallest order date.


-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT salesman_id,ord_date,MAX(purch_amt) 
    FROM orders 
    GROUP BY salesman_id,ord_date 
    ORDER BY salesman_id,ord_date;

-- Output

-- salesman_id	ord_date	max
-- 5001		2012-04-25	3045.60
-- 5001		2012-07-27	2400.60
-- 5001		2012-09-10	5760.00