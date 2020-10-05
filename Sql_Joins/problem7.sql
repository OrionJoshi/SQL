-- 7. Write a SQL statement to make a join on the tables salesman, customer and orders
-- in such a form that the same column of each table will appear once and only the relational rows
-- will come.


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
 
-- Solution

-- Method-1

    -- SELECT * 
    -- FROM orders 
    -- NATURAL JOIN customer  
    -- NATURAL JOIN salesman;

-- Output

    -- salesman_id	city		customer_id	ord_no	purch_amt	ord_date	cust_name	grade	name		commission
    -- 5005		London		3001		70009	270.65		2012-09-10	Brad Guzan		Pit Alex	0.11
    -- 5001		New York	3002		70002	65.26		2012-10-05	Nick Rimando	100	James Hoog	0.15
    -- 5001		New York	3007		70005	2400.60		2012-07-27	Brad Davis	200	James Hoog	0.15
