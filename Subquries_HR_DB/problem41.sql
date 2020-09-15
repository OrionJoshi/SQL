-- 41. Write a query in SQL to display the first and last name, and 
-- department code for all employees who work in the department Marketing.


-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |
-- |            40 | Human Resources      |        203 |        2400 |
-- |            50 | Shipping             |        121 |        1500 |

-- Solutions

-- Method-1

    SELECT first_name, last_name, salary, department_id 
    FROM employees WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Marketing')

-- Method-2

    SELECT concat(first_name,' ',last_name) AS name, department_id
    FROM employees e
    INNER JOIN departments d ON d.department_id = e.department_id
    WHERE d.department_name='Marketing';

-- Output

-- first_name	last_name	department_id
-- Michael		Hartstein	20
-- Pat		    Fay		    20