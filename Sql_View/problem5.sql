-- 5. Write a query to create a view to keeping track the number of customers ordering,
--  number of salesmen attached, average amount of orders and the total amount of orders in a day.

-- Sample table : orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005

-- Solution

-- Method-1

    CREATE VIEW totalforday
    AS SELECT ord_date, COUNT(DISTINCT customer_id),
    AVG(purch_amt), SUM(purch_amt)
    FROM orders
    GROUP BY ord_date;

-- Output

--       ord_date  | count |          avg          |   sum
-- ------------+-------+-----------------------+---------
--  2012-04-25 |     1 | 3045.6000000000000000 | 3045.60
--  2012-06-27 |     1 |  250.4500000000000000 |  250.45
--  2012-07-27 |     1 | 2400.6000000000000000 | 2400.60