SELECT 
      vtp.total AS "minus"
    , vtp.purshaising_date 
    , vts.total AS "plus"
    , vts.sales_date 
    , vts.total - vtp.total AS benefit 
FROM v_total_purshaising vtp
LEFT OUTER JOIN v_total_sales vts
ON vtp.purshaising_date = vts.sales_date ;

-- A LEFT b == b RIGHT a