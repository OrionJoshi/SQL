-- 25. Write a SQL query to display the name of each company along with the ID and price for their most
-- expensive product
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

    SELECT A.pro_name, A.pro_price, F.com_name
    FROM item_mast A 
    INNER JOIN company_mast F
        ON A.pro_com = F.com_id
        AND A.pro_price =
     (
       SELECT MAX(A.pro_price)
        FROM item_mast A
         WHERE A.pro_com = F.com_id
     );

-- Output

    -- pro_name	pro_price	com_name
    -- Monitor		5000.00		Samsung
    -- DVD drive	900.00		iBall
    -- Printer		2600.00		Epsion