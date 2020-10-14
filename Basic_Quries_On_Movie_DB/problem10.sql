-- 10. Write a query in SQL to find the ID number for the actor
--  whose first name is 'Woody' and the last name is 'Allen'.

-- Sample table: actor

--     act_id |      act_fname       |      act_lname       | act_gender
-- --------+----------------------+----------------------+------------
--     101 | James                | Stewart              | M
--     102 | Deborah              | Kerr                 | F
--     103 | Peter                | OToole               | M
--     104 | Robert               | De Niro              | M

-- Solutions

-- Method-1

    SELECT act_id 
    FROM actor 
    WHERE act_fname = 'Woody' 
    AND act_lname = 'Allen';

-- Method-2

    SELECT act_fname,act_lname
    FROM actor WHERE
    act_fname LIKE '%Woody%'
    AND act_lname like'%Allen%';

-- Output

--      act_id
-- --------
--     111
