-- 10. Write a SQL statement to make a report with order date in such a manner that, the latest order date
--  will come last along with the total purchase amount and total commission (15% for all salesmen) for
--   that date.

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    SELECT ord_date, SUM(purch_amt), 
    SUM(purch_amt)*.15 
    FROM orders 
    GROUP BY ord_date 
    ORDER BY ord_date;

-- Method-2

    select ord_date, sum(purch_amt),sum(purch_amt)*15/100 as total_commision
    from orders
    group by ord_date
    order by ord_date desc
