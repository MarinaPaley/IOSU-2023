CREATE VIEW v_total AS
(
SELECT 
      COALESCE (vtp.total, 0::float8::numeric::money) AS "minus"
    , vtp.purshaising_date 
    , COALESCE (vts.total, 0::float8::numeric::money) AS "plus"
    , vts.sales_date 
    , (COALESCE (vtp.total, 0::float8::numeric::money) 
       - COALESCE (vts.total, 0::float8::numeric::money)) AS benefit 
FROM v_total_purshaising vtp
FULL OUTER JOIN v_total_sales vts
ON vtp.purshaising_date = vts.sales_date
);