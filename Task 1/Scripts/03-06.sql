--3.    Показать поля TerritoryID, Name, Group, SalesYTD из таблицы Sales.SalesTerritory. 
--Показать только те записи, для которых продажи на территории с начала года (SalesYTD) 
--больше $3000000 и меньше $5000000. Использовать оператор BETWEEN.
SELECT 
    "TerritoryID"
    "BusinessEntityID"
  , "Name"
  , "Group"
  , "SalesYTD"
FROM "Sales"."SalesTerritory"
WHERE "SalesYTD" BETWEEN 3000000 AND 5000000;