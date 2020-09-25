-- 11. Write a SQL statement to find those salesmen with all information whose name 
-- containing the 1st character is 'N' and the 4th character is 'l' and rests may be any character.

-- Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14


-- Solutions

-- Method-1

    SELECT *
    FROM salesman
    WHERE name LIKE 'N__l%';

-- Method-2

    SELECT * 
    FROM salesman 
    WHERE name LIKE 'N%'
    AND left(name, 4) LIKE '%l'

-- Output

-- salesman_id	name		city	commission
-- 5002		Nail Knite	Paris	0.13