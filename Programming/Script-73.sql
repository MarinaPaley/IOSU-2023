CREATE FUNCTION "fTotalPurchase"() 
RETURNS NUMERIC(8, 4) AS 
$$
    SELECT SUM(v."Total")
    FROM "vPurchase" v
$$ LANGUAGE SQL;

SELECT * FROM public."fTotalPurchase"();