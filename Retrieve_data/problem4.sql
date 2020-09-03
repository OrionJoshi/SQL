-- 4. Write a query to display the sum of two numbers 10 and 15 from RDMS sever

-- Solution

-- Method-1

    SELECT 10 AS num1, 15 AS num2, SUM(10+15) AS Sum;

-- Method-2
    
    SELECT SUM(10+15);

-- Method-3

    SELECT 10+15;