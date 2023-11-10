--3. Для каждой профессии найти количество женщин, которые были приняты
--позже 2008 года, из таблицы HumanResources.Employee, не учитывать
--пустые значения.
SELECT COUNT(*), "JobTitle" 
FROM "HumanResources"."Employee"
WHERE "Gender" = 'F' AND "HireDate" >= '2008-01-01'
GROUP BY "JobTitle" 