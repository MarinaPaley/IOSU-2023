CREATE TABLE "Products"
(
     "ID" INT
   , "Name" VARCHAR(25)
);
CREATE TABLE "Vendors"
(
    "ID" INT
  , "Name" VARCHAR(25)
);
CREATE TABLE "Purchases"
(
     "ID" INT
   , "ID_Vendors" INT
   , "ID_Products" INT
   , "Price" NUMERIC(8, 4)
   , "Amount" INT
   , "Date" DATE
);
CREATE TABLE "Stores"
(
     "ID" INT
   , "ID_Vendors" INT
   , "ID_Products" INT
   , "Amount" INT
   , "Price" NUMERIC (8, 4)
   , "Date" DATE
);

ALTER TABLE "Products"
ALTER COLUMN "Name"
SET NOT NULL;
ALTER TABLE "Vendors"
ALTER COLUMN "Name"
SET NOT NULL;
ALTER TABLE "Purchases"
ALTER COLUMN "ID_Products"
SET NOT NULL;
ALTER TABLE "Purchases"
ALTER COLUMN "ID_Vendors"
SET NOT NULL;
ALTER TABLE "Purchases"
ALTER COLUMN "Price"
SET NOT NULL;
ALTER TABLE "Purchases"
ALTER COLUMN "Date"
SET NOT NULL;
ALTER TABLE "Stores"
ALTER COLUMN "ID_Products"
SET NOT NULL;
ALTER TABLE "Stores"
ALTER COLUMN "ID_Vendors"
SET NOT NULL;
ALTER TABLE "Stores"
ALTER COLUMN "Price"
SET NOT NULL;
ALTER TABLE "Stores"
ALTER COLUMN "Date"
SET NOT NULL;
ALTER TABLE "Stores"
ALTER COLUMN "Amount"
SET NOT NULL;
ALTER TABLE "Purchases"
ALTER COLUMN "Amount"
SET NOT NULL;


ALTER TABLE "Products"
ADD CONSTRAINT "PK_Products"
PRIMARY KEY ("ID");
ALTER TABLE "Vendors"
ADD CONSTRAINT "PK_Vendors"
PRIMARY KEY ("ID");
ALTER TABLE "Purchases"
ADD CONSTRAINT "PK_Purchases"
PRIMARY KEY ("ID");
ALTER TABLE "Stores"
ADD CONSTRAINT "PK_Stores"
PRIMARY KEY ("ID");


ALTER TABLE "Purchases"
ADD CONSTRAINT "FK_Products_Purchases"
FOREIGN KEY ("ID_Products")
REFERENCES "Products" ("ID");
ALTER TABLE "Purchases"
ADD CONSTRAINT "FK_Vendors_Purchases"
FOREIGN KEY ("ID_Vendors")
REFERENCES "Vendors" ("ID");
ALTER TABLE "Stores"
ADD CONSTRAINT "FK_Products_Store"
FOREIGN KEY ("ID_Products")
REFERENCES "Products" ("ID");
ALTER TABLE "Stores"
ADD CONSTRAINT "FK_Vendors_Stores"
FOREIGN KEY ("ID_Vendors")
REFERENCES "Vendors" ("ID");

ALTER TABLE "Products"
ADD CONSTRAINT "U_Products_Name"
UNIQUE ("Name");
ALTER TABLE "Vendors"
ADD CONSTRAINT "U_Vendors_Name"
UNIQUE ("Name");

ALTER TABLE "Purchases"
ADD CONSTRAINT "CH_Purchases_Price"
CHECK ("Price" > 0);
ALTER TABLE "Stores"
ADD CONSTRAINT "CH_Stores_Price"
CHECK ("Price" > 0);
ALTER TABLE "Purchases"
ADD CONSTRAINT "CH_Purchases_Amount"
CHECK ("Amount" > 0);
ALTER TABLE "Stores"
ADD CONSTRAINT "CH_Stores_Amount"
CHECK ("Amount" > 0);

ALTER TABLE "Stores"
ALTER COLUMN "Date"
SET DEFAULT CURRENT_DATE;
ALTER TABLE "Purchases"
ALTER COLUMN "Date"
SET DEFAULT CURRENT_DATE;


INSERT INTO "Products" VALUES
  (1, 'Томаты')
, (2, 'Бананы')
, (3, 'Молоко')
, (4, 'Манго')
, (5, 'Киви');

INSERT INTO "Vendors" VALUES
  (1, 'Иванов')
, (2, 'Петров');


