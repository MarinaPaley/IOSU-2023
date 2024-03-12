CREATE FUNCTION "fGetproductID"("name" VARCHAR(25))
RETURNS INTEGER AS 
$$
    SELECT p."ID" 
    FROM "Products" p 
    WHERE p."Name" = "name";
$$ LANGUAGE SQL;

--DROP FUNCTION public."fGetproductID"
