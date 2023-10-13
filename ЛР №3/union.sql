SELECT 
      p.id_product 
    , p.id_vendor 
FROM purshaisings p 
UNION
SELECT 
      s.id_product 
    , s.id_vendor 
FROM sales s;