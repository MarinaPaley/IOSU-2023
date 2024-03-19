CREATE VIEW "vPurchase"
AS
SELECT p."Name" AS "ProductName"
     , v."Name" AS "VendorName"
     , p2."DatePurchase"
     , p2."PricePurchase" * p2."Amount" AS "Total"
FROM "Product" p 
INNER JOIN "Purchase" p2 
ON p2."ID_Product"  = p."ID" 
INNER JOIN "Vendor" v 
ON p2."ID_Vendor"  = v."ID";

SELECT *
FROM "vPurchase" vp ;