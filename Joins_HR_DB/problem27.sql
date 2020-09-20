-- 27. Write a query in SQL to display the full name (firt and last name ) of employee 
-- with ID and name of the country presently where (s)he is working. 

-- Sample table: countries

--     +------------+--------------------------+-----------+
-- | COUNTRY_ID | COUNTRY_NAME             | REGION_ID |
-- +------------+--------------------------+-----------+
-- | AR         | Argentina                |         2 |
-- | AU         | Australia                |         3 |
-- | BE         | Belgium                  |         1 |
-- | BR         | Brazil                   |         2 |

-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |

-- Sample table: locations

--     +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- | LOCATION_ID | STREET_ADDRESS                           | POSTAL_CODE | CITY                | STATE_PROVINCE    | COUNTRY_ID |
-- +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- |        1000 | 1297 Via Cola di Rie                     | 989         | Roma                |                   | IT         |
-- |        1100 | 93091 Calle della Testa                  | 10934       | Venice              |                   | IT         |
-- |        1200 | 2017 Shinjuku-ku                         | 1689        | Tokyo               | Tokyo Prefecture  | JP         |

-- Sample table: employees

--     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |


-- Solutions

-- Method-1

    SELECT CONCAT(e.first_name,e.last_name) AS Employee_name, 
	e.employee_id, c.country_name  FROM employees e 
    JOIN departments d ON e.department_id = d.department_id 
    JOIN locations l ON l.location_id = d.location_id JOIN countries c ON c.country_id = l.country_id

-- Output

-- employee_name	employee_id	country_name
-- Steven King		100	United States of America
-- Neena Kochhar		101	United States of America
-- Lex De Haan		102	United States of America
-- Alexander Hunold	103	United States of America
-- Bruce Ernst		104	United States of America

