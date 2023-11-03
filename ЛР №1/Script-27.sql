SELECT 
      vp.product_name 
    , vp."count" 
    , vp.price 
    , vp.purshaising_date 
    , vp.vendor_name 
    , avg(vp.price::NUMERIC::float8) OVER (PARTITION BY vp.product_name)
FROM v_purshaisings vp;

--Ранжирование по критерию. Одинаковые значения - одинаковый ранж
SELECT
      rank() OVER (ORDER BY vp.price )
    , vp.product_name 
    , vp."count" 
    , vp.price 
    , vp.purshaising_date 
    , vp.vendor_name 
FROM v_purshaisings vp;

--Ранжирование по критерию. С выделением по подгруппе.
SELECT
      rank() OVER (PARTITION BY vp.product_name ORDER BY vp.price )
    , vp.product_name 
    , vp."count" 
    , vp.price 
    , vp.purshaising_date 
    , vp.vendor_name 
FROM v_purshaisings vp;

--Нашли сумму покупок.
SELECT 
    SUM(vp.price::NUMERIC::float8)
FROM v_purshaisings vp;

--Нашли сумму покупок по каждому дню.
SELECT 
      vp.purshaising_date
    , SUM(vp.price::NUMERIC::float8)
FROM v_purshaisings vp
GROUP BY vp.purshaising_date;

--Доля каждодневной покупики.
SELECT 
      vp.purshaising_date
    , vp.price  
    --, SUM(vp.price::NUMERIC::float8) OVER()
    , (vp.price::NUMERIC::float8 * 100/ (SUM(vp.price::NUMERIC::float8) OVER()))::numeric(4,2) AS procent
FROM v_purshaisings vp;

SELECT 
      DISTINCT
      vp.purshaising_date
    , SUM(vp.price::NUMERIC::float8) OVER(PARTITION BY vp.purshaising_date)
FROM v_purshaisings vp;

--Номер по порядку
SELECT
      ROW_NUMBER() OVER (ORDER BY vp.price )
    , vp.product_name 
    , vp."count" 
    , vp.price 
    , vp.purshaising_date 
    , vp.vendor_name 
FROM v_purshaisings vp;


