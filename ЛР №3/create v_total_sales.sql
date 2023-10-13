CREATE VIEW v_total_sales as
(SELECT 
      sum("count" * price) AS total
    , vs.sales_date 
FROM v_sales vs  
GROUP BY vs.sales_date);