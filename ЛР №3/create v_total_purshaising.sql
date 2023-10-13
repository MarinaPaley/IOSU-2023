CREATE VIEW v_total_purshaising as
(SELECT 
      sum("count" * price) AS total
    , purshaising_date 
FROM v_purshaisings vp 
GROUP BY purshaising_date);