-- 2. Write a query in SQL to display the first and last name, department, city, and
-- state province for each employee. 

-- Sample table: departments

--     +---------------+----------------------+------------+-------------+
-- | DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
-- +---------------+----------------------+------------+-------------+
-- |            10 | Administration       |        200 |        1700 |
-- |            20 | Marketing            |        201 |        1800 |
-- |            30 | Purchasing           |        114 |        1700 |
-- |            40 | Human Resources      |        203 |        2400 |


-- Sample table: employees

--     +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- | EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
-- +-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
-- |         100 | Steven      | King        | SKING    | 515.123.4567       | 2003-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
-- |         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 2005-09-21 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 2001-01-13 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
-- |         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 2006-01-03 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |

-- Sample table: locations

--     +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- | LOCATION_ID | STREET_ADDRESS                           | POSTAL_CODE | CITY                | STATE_PROVINCE    | COUNTRY_ID |
-- +-------------+------------------------------------------+-------------+---------------------+-------------------+------------+
-- |        1000 | 1297 Via Cola di Rie                     | 989         | Roma                |                   | IT         |
-- |        1100 | 93091 Calle della Testa                  | 10934       | Venice              |                   | IT         |
-- |        1200 | 2017 Shinjuku-ku                         | 1689        | Tokyo               | Tokyo Prefecture  | JP         |

-- Solutions

-- Method-1

    SELECT  e.first_name, e.last_name, d.department_id, d.department_name, l.city, l.state_province FROM employees e JOIN departments d ON d.department_id = e.department_id JOIN locations l ON l.location_id = d.location_id

-- Method-2

    SELECT  e.first_name, e.last_name, d.department_id, d.department_name, l.city, l.state_province FROM employees e, departments d,locations l WHERE d.department_id = e.department_id AND l.location_id = d.location_id

--Output

-- first_name	last_name	department_name	city	state_province
-- Steven		King		Executive	Seattle		Washington
-- Neena		Kochhar		Executive	Seattle		Washington
-- Lex		    De Haan		Executive	Seattle		Washington
-- Alexander	Hunold		IT		Southlake	Texas
-- Bruce		Ernst		IT		Southlake	Texas
-- David		Austin		IT		Southlake	Texas
