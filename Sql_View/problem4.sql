-- 4. Write a query to create a view to getting a count of how many customers we have at each level of a grade.

-- Sample table: customer

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002

-- Solution

-- Method-1

    CREATE VIEW gradecount (grade, number)
    AS SELECT grade, COUNT(*)
    FROM customer
    GROUP BY grade;

-- Output

--      grade | number
-- -------+--------
--        |      2
--    200 |      2
--    300 |      2
