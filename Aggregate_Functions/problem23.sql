-- 23. Write a SQL query to display the average price of each company's products, along with their code.

-- Sample table: item_mast

--     PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16
--     105 Monitor                         5000         11

-- Solutions

-- Method-1

    SELECT AVG(pro_price) AS "Average Price", 
       pro_com AS "Company ID"
    FROM item_mast
    GROUP BY pro_com;

-- Output

--     Average Price			Company ID
-- 250.0000000000000000		14
-- 650.0000000000000000		12
-- 3200.0000000000000000		15