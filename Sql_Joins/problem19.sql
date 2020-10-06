-- 19. Write a SQL statement to make a cartesian product between salesman and customer i.e. 
-- each salesman will appear for all customer and vice versa for those salesmen who belongs to a city
--  and the customers who must have a grade.

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

    SELECT * 
    FROM salesman a 
    CROSS JOIN  customer b 
    WHERE a.city IS NOT NULL 
    AND b.grade IS NOT NULL;

-- Output

    -- salesman_id	name		city	commission	customer_id	cust_name	city		grade	salesman_id
    -- 5001		James Hoog	New York	0.15	3002		Nick Rimando	New York	100	5001
    -- 5002		Nail Knite	Paris		0.13	3002		Nick Rimando	New York	100	5001
    -- 5005		Pit Alex	London		0.11	3002		Nick Rimando	New York	100	5001
