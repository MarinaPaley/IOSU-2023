SELECT 
      p.id_product 
    , p.id_vendor 
FROM purshaisings p 
EXCEPT
SELECT 
      s.id_product 
    , s.id_vendor 
FROM sales s;

SELECT 
      s.id_product 
    , s.id_vendor 
FROM sales s 
EXCEPT
SELECT 
      p.id_product 
    , p.id_vendor 
FROM purshaisings p ;
