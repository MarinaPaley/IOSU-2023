CREATE FUNCTION "fTotalPurchaseOnCurrentSate"("currentDate" Date) 
RETURNS NUMERIC(8, 4) AS 
$$
    SELECT SUM(v."Total")
    FROM "vPurchase" v
    WHERE v."DatePurchase" = "currentDate"
$$ LANGUAGE SQL;

SELECT * FROM public."fTotalPurchaseOnCurrentSate"('2024-02-27');