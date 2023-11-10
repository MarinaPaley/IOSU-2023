--1.Найти среднюю цену товара (ListPrice) из таблицы Production.Product.
--Не учитывать нулевые значения цены.

SELECT AVG("ListPrice")
FROM "Production"."Product"
WHERE "ListPrice" > 0;