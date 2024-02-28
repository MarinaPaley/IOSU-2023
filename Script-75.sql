CREATE FUNCTION "fGetTotalByVendor" ("vendorName" TEXT)
RETURNS TABLE("Name" TEXT, "Sum" NUMERIC(8, 4) AS $$
    SELECT v."ProductName"
         , SUM(v."Total")  
    FROM "vPurchase" v
    GROUP BY v."ProductName";
$$ LANGUAGE SQL;


SELECT v."ProductName"
     , SUM(v."Total")  
FROM "vPurchase" v
GROUP BY v."ProductName";