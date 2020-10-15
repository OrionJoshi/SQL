-- 1. Write a query in SQL to list all the information of the actors who played a role in the movie 'Annie Hall'

-- Sample table: actor

--     act_id |      act_fname       |      act_lname       | act_gender
-- --------+----------------------+----------------------+------------
--     101 | James                | Stewart              | M
--     102 | Deborah              | Kerr                 | F
--     103 | Peter                | OToole               | M
--     104 | Robert               | De Niro              | M

-- Solutions

-- Method-1

    SELECT * FROM actor 
    WHERE act_id IN 
        (SELECT DISTINCT (act_id) FROM movie_cast WHERE mov_id IN 
            (SELECT mov_id FROM movie WHERE mov_title = 'Annie Hall'))

-- Method-2

    SELECT DISTINCT* FROM actor a 
    JOIN movie_cast mc ON a.act_id = mc.act_id 
    JOIN movie m ON m.mov_id = mc.mov_id
    WHERE m.mov_title = 'Annie Hall'



