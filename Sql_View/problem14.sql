-- 14. Write a query to create a view that shows the number of orders in each day

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

    CREATE VIEW order_date(ord_date, odcount)
    AS SELECT ord_date, COUNT (*)
    FROM orders 
    GROUP BY ord_date;

-- Output

    --       ord_date  | odcount
    -- ------------+---------
    --  2012-10-05 |       2
    --  2012-08-17 |       3
    --  2012-07-27 |       1