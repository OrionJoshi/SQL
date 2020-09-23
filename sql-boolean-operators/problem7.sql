-- 7.Write a SQL statement to display salesman_id, name, city and commission who gets the commission
-- within the range more than 0.10% and less than 0.12%.

-- Sample table : salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11

-- Solutions

-- Method-1

    SELECT salesman_id,name,city,commission 
    FROM salesman 
    WHERE (commission > 0.10 
    AND commission< 0.12);

-- Output

-- salesman_id	name		city	commission
-- 5005		Pit Alex	London	0.11
