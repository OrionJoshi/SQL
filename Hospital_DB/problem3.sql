-- 3. Write a query in SQL to obtain the name of the physicians who are the head of each department.
-- Sample table: physician

-- employeeid |       name        |           position           |    ssn
-- ------------+-------------------+------------------------------+-----------
--           1 | John Dorian       | Staff Internist              | 111111111
--           2 | Elliot Reid       | Attending Physician          | 222222222
--           3 | Christopher Turk  | Surgical Attending Physician | 333333333
--           4 | Percival Cox      | Senior Attending Physician   | 444444444

-- Sample table: department

--  departmentid |       name       | head
-- --------------+------------------+------
--             1 | General Medicine |    4
--             2 | Surgery          |    7
--             3 | Psychiatry       |    9
-- Solutions

-- Method-1

    SELECT d.name AS Department, p.name AS Physician
    FROM physician p
    JOIN department d
    ON p.employeeid = d.head;

-- Method-2

    SELECT d.name AS "Department",p.name AS "Physician"
    FROM department d,physician p
    WHERE d.head=p.employeeid;

