INSERT INTO "Product" VALUES (1, 'Яблоки'), (2, 'груши'), (3, 'арбуз');
INSERT INTO "Vendor" VALUES (1, 'Иванов'), (2, 'Петров');
INSERT INTO "Purchase" VALUES 
  (1, 1, 1, 100, 5, '2024-02-25');
INSERT INTO "Purchase" VALUES
  (2, 1, 2, 200, 6, '2024-02-26')
, (3, 2, 3, 300, 3, '2024-02-27')
, (4, 2, 1, 120, 7, '2024-02-28');

INSERT INTO "Purchase" VALUES 
  (5, 1, 1, 100, 5, '2024-02-28');

INSERT INTO "Store" VALUES 
  (1, 1, 1, 120, 1, '2024-02-25');
INSERT INTO "Store" VALUES
  (2, 1, 2, 220, 2, '2024-02-26')
, (3, 2, 3, 320, 2, '2024-02-28')
, (4, 2, 1, 140, 3, '2024-02-28');

 
 ALTER TABLE "Purchase"
 ALTER COLUMN "PricePurchase"
 TYPE NUMERIC(8, 4);
 
 ALTER TABLE "Store" 
 ALTER COLUMN "PriceBuy"
 TYPE NUMERIC(8, 4);