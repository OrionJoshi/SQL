-- 5. Write a SQL statement that sorts out the customer and their grade who made an order.
--  Each of the customers must have a grade and served by at least a salesman, who belongs to a city.

-- Sample table: orders 

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- -- Sample table: customer

-- customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002

-- Solution

-- Method-1
    select o.ord_no,c.cust_name,c.grade
    from orders o join customer c
    on o.customer_id = c.customer_id
    join salesman s
    on c.salesman_id = s.salesman_id
    where c.grade IS NOT NULL
    AND
    s.city IS NOT NULL;

-- Output

-- ord_no	cust_name	grade
-- 70002	Nick Rimando	100
-- 70004	Geoff Cameron	100
-- 70005	Brad Davis	200