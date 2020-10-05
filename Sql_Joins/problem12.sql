-- 12. Write a SQL statement to make a list in ascending order for the salesmen who works either for one 
-- or more customer or not yet join under any of the customers.  

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

    SELECT a.cust_name,a.city,a.grade, 
    b.name AS "Salesman", b.city 
    FROM customer a 
    RIGHT OUTER JOIN salesman b 
    ON b.salesman_id=a.salesman_id 
    ORDER BY b.salesman_id;

-- Output

    --     cust_name	city		grade	Salesman	city
    -- Brad Davis	New York	200	James Hoog	New York
    -- Nick Rimando	New York	100	James Hoog	New York
    -- Graham Zusi	California	200	Nail Knite	Paris
    -- Julian Green	London		300	Nail Knite	Paris