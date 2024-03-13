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

SELECT SUM(s."Amount")
FROM "Items" s
