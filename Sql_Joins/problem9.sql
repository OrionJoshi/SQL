-- 9. Write a SQL statement to make a list in ascending order for the customer who holds a grade less than 300
--  and works either through a salesman or by own.


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
    LEFT OUTER JOIN salesman b 
    ON a.salesman_id=b.salesman_id 
    WHERE a.grade<300 
    ORDER BY a.customer_id;

-- Method-2

    SELECT a.cust_name AS "Name of Customers",a.city,a.grade,b.name,b.city,a.customer_id
    FROM customer a,salesman b
    WHERE a.salesman_id = b.salesman_id AND a.grade < 300
    ORDER BY a.customer_id

-- Output
    -- cust_name	city		grade	Salesman	city
    -- Nick Rimando	New York	100	James Hoog	New York
    -- Jozy Altidor	Moscow		200	Paul Adam	Rome
    -- Graham Zusi	California	200	Nail Knite	Paris