CREATE FUNCTION "fGetNextStoreID"()
RETURNS INTEGER 
LANGUAGE plpgsql
AS $$ 
DECLARE
	id INTEGER;
BEGIN
	PERFORM MAX(s."ID")
	INTO id
	FROM "Store" s;
	
	IF id IS NULL
	THEN
		id = 1;
	ELSE
		id = id + 1;
	END IF;

	RETURN id;
END;
$$
