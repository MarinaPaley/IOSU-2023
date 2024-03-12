DO
$$
DECLARE 
    message TEXT;
BEGIN
   CALL public."pMakeStore" ('Молоко', 'dd', 10, 100);
EXCEPTION
    WHEN OTHERS
    THEN
    GET STACKED DIAGNOSTICS 
    message = MESSAGE_TEXT;
    RAISE NOTICE 'Ошибка! %', message;
END;
$$

SELECT *
FROM "Stores" s 