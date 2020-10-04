-- 16. Write a query to create a view that finds the salesmen who issued orders 
-- on either August 17th, 2012 or October 10th, 2012.

-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

        CREATE VIEW sorder
        AS SELECT salesman_id, ord_no, customer_id
        FROM orders
        WHERE ord_date IN('2012-08-17', '2012-10-10');

-- Method-2

        -- CREATE VIEW sorder
        -- AS SELECT salesman_id, ord_no, customer_id
        -- FROM orders
        -- WHERE ord_date = '2012-08-17' or ord_date = '2012-10-10';

--Output

--      salesman_id | ord_no | customer_id
-- -------------+--------+-------------
--         5003 |  70004 |        3009
--         5006 |  70010 |        3004