--2. Найти средний вес (Weight) товара желтого цвета из таблицы
--Production.Product, не учитывать пустые значения.
SELECT AVG("Weight")
FROM "Production"."Product"
WHERE "Color" LIKE 'Yellow%' AND "Weight" IS NOT NULL;
 