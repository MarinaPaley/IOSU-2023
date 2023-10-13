--MAX(), MIN(), AVG(), COUNT()
SELECT 
      product_name 
    , "count"
    , price
    , purshaising_date
    , vendor_name
FROM public.v_purshaisings;

select  
        max(price)
      , MIN(price)
      , avg(price::money::numeric::float8)
      , count(price)
      --product_name
from public.v_purshaisings
where purshaising_date = '2023-09-05';

select  
        max(COALESCE (price, '0'::float8::numeric::money))
from public.v_purshaisings
where purshaising_date = '2023-10-05';

--Все расходы на каждую дату
SELECT  
        max(price)
      , MIN(price)
      , avg(price::money::numeric::float8)
      , count(price)
      , purshaising_date
FROM public.v_purshaisings
WHERE purshaising_date <> '2023-09-05'
GROUP BY purshaising_date;

--Все расходы на каждую дату по продуктам
SELECT  
        max(price)
      , MIN(price)
      , avg(price::money::numeric::float8)
      , count(price)
      , sum(price)
      , purshaising_date
      , product_name 
FROM public.v_purshaisings
--WHERE purshaising_date <> '2023-09-05'
GROUP BY purshaising_date, product_name 
ORDER BY purshaising_date;

--Все расходы на каждую дату по продуктам с ограничениями
SELECT  
        MAX(price)
      , MIN(price)
      , AVG (price::money::numeric::float8)
      , COUNT(price)
      , purshaising_date
      , product_name 
FROM public.v_purshaisings
--WHERE purshaising_date <> '2023-09-05'
GROUP BY purshaising_date, product_name 
HAVING MAX(price) < 800::float8::numeric::money
ORDER BY purshaising_date;

 --GROUPING SETS
SELECT  
        MAX(price)
      , MIN(price)
      , AVG (price::money::numeric::float8)
      , COUNT(price)
      , purshaising_date
      , product_name
FROM public.v_purshaisings
GROUP BY GROUPING SETS ((purshaising_date), (product_name), ()); 

--CUBE
SELECT  
        MAX(price)
      , MIN(price)
      , AVG (price::money::numeric::float8)
      , COUNT(price)
      , purshaising_date
      , product_name
FROM public.v_purshaisings
GROUP BY CUBE (purshaising_date, product_name);

--ROLLUP
SELECT  
        MAX(price)
      , MIN(price)
      , AVG (price::money::numeric::float8)
      , COUNT(price)
      , purshaising_date
      , product_name
FROM public.v_purshaisings
GROUP BY ROLLUP (purshaising_date, product_name);