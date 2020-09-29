-- 1. Write a SQL statement to display the commission with the percent sign ( % ) with salesman ID,
--  name and city columns for all the salesmen.

-- Sample table: salesman

--     salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14

-- Solution

-- Method-1


    SELECT salesman_id,name,city, CONCAT(commission*100, '%') as commission
    FROM salesman;

-- Method-2

    -- select commission*100 || '%' as commission, salesman_id, name, city from salesman;

-- Output

-- salesman_id	name	city	commission
-- 5001	James Hoog	New York	15.00%
-- 5002	Nail Knite	Paris	13.00%
-- 5005	Pit Alex	London	11.00%







