-- 29. Write a SQL query to display the average price of the items for each company,
-- showing only the company code.

-- Sample table: item_mast

-- PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16

-- Soutions

-- Method-1

    SELECT  pro_com, AVG(pro_price)
    FROM item_mast
    GROUP BY pro_com

-- Output

-- pro_com	avg
-- 11	5000.0000000000000000
-- 13	1475.0000000000000000
-- 16	500.0000000000000000