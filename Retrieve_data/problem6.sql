-- Write a query to display only name and commission from table salesman.

-- Sample table: salesman

-- salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14
--         5007 | Paul Adam  | Rome     |       0.13
--         5003 | Lauson Hen | San Jose |       0.12

-- Solution

-- Method-1

    SELECT name, commission FROM salesman;

-- Output

--     name	        commission
--     James Hoog	0.15
--     Nail Knite	0.13
--     Pit Alex	    0.11
--     Mc Lyon	    0.14
--     Paul Adam	0.13
--     Lauson Hen	0.12