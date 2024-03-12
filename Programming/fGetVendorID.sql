CREATE FUNCTION "fGetVendorID"("name" VARCHAR(25))
RETURNS INTEGER AS 
$$
    SELECT v."ID" 
    FROM "Vendors" v 
    WHERE v."Name" = "name";
$$ LANGUAGE SQL;