-- Write a SQL statement to display all the information for those customers with a grade of 200.

-- Sample table: customer

-- Table

--     customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002
--         3004 | Fabian Johnson | Paris      |   300 |        5006
--         3009 | Geoff Cameron  | Berlin     |   100 |        5003
--         3003 | Jozy Altidor   | Moscow     |   200 |        5007

-- Solution

-- Method-1

    SELECT * FROM customer WHERE grade = 200;
    
-- Method-2

    SELECT customer_id, cust_name, city, grade, salesman_id FROM customer WHERE grade = 200;

-- Output
    
-- customer_id	cust_name	 city	    grade	salesman_id
-- 3007		    Brad Davis	New York	200		5001
-- 3005		    Graham Zusi	California	200		5002
-- 3003		    Jozy Altidor Moscow		200		5007
