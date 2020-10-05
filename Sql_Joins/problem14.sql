-- 14. Write a SQL statement to make a list for the salesmen who either work for one or more customers
--  or yet to join any of the customer. The customer may have placed, either one or more orders on or 
--  above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.

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

    SELECT a.cust_name,a.city,a.grade, 
    b.name AS "Salesman", 
    c.ord_no, c.ord_date, c.purch_amt 
    FROM customer a 
    RIGHT OUTER JOIN salesman b 
    ON b.salesman_id=a.salesman_id 
    LEFT OUTER JOIN orders c 
    ON c.customer_id=a.customer_id 
    WHERE c.purch_amt>=2000 
    AND a.grade IS NOT NULL;

-- Output

    -- cust_name	city		grade	Salesman	ord_no	ord_date	purch_amt
    -- Nick Rimando	New York	100	James Hoog	70013	2012-04-25	3045.60
    -- Nick Rimando	New York	100	James Hoog	70008	2012-09-10	5760.00
    -- Brad Davis	New York	200	James Hoog	70005	2012-07-27	2400.60