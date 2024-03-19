CREATE FUNCTION "fGetNextStoreID"()
RETURNS INTEGER 
LANGUAGE plpgsql
AS $$ 
DECLARE
	id INTEGER;
BEGIN
	SELECT MAX(s."ID")
	INTO id
	FROM "Stores" s;
	
	IF id IS NULL
	THEN
		id = 1;
	ELSE
		id = id + 1;
	END IF;

	RETURN id;
END;
$$
