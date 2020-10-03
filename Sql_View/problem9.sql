-- 9. Write a query to create a view that shows all of the customers who have the highest grade.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        500

-- Solution

-- Method-1

    CREATE VIEW highgrade
    AS SELECT *
    FROM customer
    WHERE grade =
        (SELECT MAX (grade)
        FROM customer);

-- Output

--      customer_id |   cust_name    |  city  | grade | salesman_id 
-- -------------+----------------+--------+-------+-------------
--         3008 | Julian Green   | London |   300 |        5002
--         3004 | Fabian Johnson | Paris  |   300 |        5006