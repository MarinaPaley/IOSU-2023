--4.  Из таблицы Sales.Store показать ID сотрудника (BusinessEntityID), 
--название магазина (Name) и ID продавца (SalesPersonID). 
--Показать только существующие ID продавцов.
SELECT 
    "BusinessEntityID"
  , "Name"
  , "SalesPersonID"
FROM "Sales"."Store"
WHERE "SalesPersonID" IS NOT NULL;