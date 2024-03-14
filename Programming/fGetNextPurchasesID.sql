CREATE FUNCTION "fGetNextPurchasesID"()
RETURNS INTEGER 
LANGUAGE plpgsql
AS $$ 
DECLARE
	id INTEGER;
BEGIN
	SELECT MAX(s."ID")
	INTO id
	FROM "Purchases" s;
	
	IF id IS NULL
	THEN
		id = 1;
	ELSE
		id = id + 1;
	END IF;

	RETURN id;
END;
$$
