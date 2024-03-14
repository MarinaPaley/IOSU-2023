CREATE TABLE "Items"
(
     "ID" INTEGER
   , "ID_Product" INTEGER
   , "ID_Vendor" INTEGER
   , "Amount" INTEGER
);

--DROP TABLE "Items"

ALTER TABLE "Items"
ADD CONSTRAINT "PK_Items"
PRIMARY KEY ("ID");

ALTER TABLE "Items"
ADD CONSTRAINT "FK_Items_Products"
FOREIGN KEY ("ID_Product")
REFERENCES "Products"("ID"); 

ALTER TABLE "Items"
ADD CONSTRAINT "FK_Items_Vendors"
FOREIGN KEY ("ID_Vendor")
REFERENCES "Vendors"("ID"); 

ALTER TABLE "Items"
ALTER COLUMN "ID_Product" 
SET NOT NULL;

ALTER TABLE "Items"
ALTER COLUMN "ID_Vendor" 
SET NOT NULL;

ALTER TABLE "Items"
ALTER COLUMN "Amount"
SET NOT NULL;

SELECT SUM(s."Amount")
FROM "Items" s
