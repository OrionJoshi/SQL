-- 24. Write a SQL query to display the names of the company whose products have an average price larger 
-- than or equal to Rs. 350.

-- Sample table: company_mast

--     COM_ID COM_NAME
-- ------ -------------
--     11 Samsung
--     12 iBall
--     13 Epsion
--     14 Zebronics
--     15 Asus
--     16 Frontech

-- Sample table: item_mast 

--     PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
-- ------- ------------------------- ---------- ----------
--     101 Mother Board                    3200         15
--     102 Key Board                        450         16
--     103 ZIP drive                        250         14
--     104 Speaker                          550         16

-- Solution

-- Method-1

    SELECT AVG(pro_price), company_mast.com_name
    FROM item_mast INNER JOIN company_mast
        ON item_mast.pro_com= company_mast.com_id
    GROUP BY company_mast.com_name
    HAVING AVG(pro_price) >= 350;

-- Output

    --               avg          | com_name 
    -- -----------------------+----------
    --  5000.0000000000000000 | Samsung
    --   650.0000000000000000 | iBall