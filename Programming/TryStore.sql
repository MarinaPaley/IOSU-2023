DO
$$
DECLARE 
    message TEXT;
BEGIN
   CALL public."pMakeStore" ('Молоко', 'Иванов', 10, 100);
EXCEPTION
    WHEN OTHERS
    THEN
    GET STACKED DIAGNOSTICS 
    message = MESSAGE_TEXT;
    RAISE NOTICE 'Ошибка! %', message;
END;
$$

--DELETE FROM "Stores";
SELECT *
FROM "Stores" s ;

--DELETE FROM "Items";
SELECT *
FROM "Items" i ;

DO
$$
DECLARE 
    message TEXT;
BEGIN
   CALL public."pMakePurchase" ('Молоко', 'Иванов', 3, 120);
EXCEPTION
    WHEN OTHERS
    THEN
    GET STACKED DIAGNOSTICS 
    message = MESSAGE_TEXT;
    RAISE NOTICE 'Ошибка! %', message;
END;
$$


--DELETE FROM "Purchases" p;
SELECT *
FROM "Purchases" p 