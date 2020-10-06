-- 22. Write a SQL query to display the item name, price, and company name of all the products


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

    SELECT item_mast.pro_name, pro_price, company_mast.com_name
    FROM item_mast 
    INNER JOIN company_mast
        ON item_mast.pro_com = company_mast.com_id;

-- Output

    -- pro_name		pro_price	com_name
    -- Mother Board		3200.00		Asus
    -- Key Board		450.00		Frontech
    -- ZIP drive		250.00		Zebronics