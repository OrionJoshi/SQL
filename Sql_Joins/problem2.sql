-- 2. Write a SQL statement to make a list with order no, purchase amount, customer name
--  and their cities for those orders which order amount between 500 and 2000.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

--Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
 
-- Sample table: orders

--     ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001

-- Solution

-- Method-1

        SELECT  a.ord_no,a.purch_amt,
        b.cust_name,b.city 
        FROM orders a,customer b 
        WHERE a.customer_id=b.customer_id 
        AND a.purch_amt BETWEEN 500 AND 2000

-- Method-2

        SELECT orders.ord_no, orders.purch_amt, customer.cust_name, customer.city
        FROM orders
        INNER JOIN customer
        ON orders.customer_id=customer.customer_id
        WHERE orders.purch_amt BETWEEN 500 AND 2000

-- Output

    -- ord_no	purch_amt	cust_name	city
    -- 70007	948.50		Graham Zusi	California
    -- 70010	1983.43		Fabian Johnson	Paris