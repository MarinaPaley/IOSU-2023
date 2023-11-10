--5. Вывести BusinessEntityID, LastReceiptDate и минимальное по
--StandardPrice для BusinessEntityID с разными LastReceiptDate,
--предусмотреть вывод минимального StandardPrice у различных
--BusinessEntityID из таблицы Purchasing.ProductVendor. (Использовать
--ROOLUP).
SELECT 
      "BusinessEntityID"
    , "LastReceiptDate"
    , MIN("StandardPrice")
FROM "Purchasing"."ProductVendor"
GROUP BY ROLLUP ("BusinessEntityID", "LastReceiptDate");