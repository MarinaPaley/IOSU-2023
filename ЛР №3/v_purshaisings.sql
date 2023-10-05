create view v_purshaisings as(
select 
     p."name" as product_name
  ,  s."count"
  ,  s.price 
  ,  s.purshaising_date 
  ,  v."name" as vendor_name
from purshaisings s 
inner join products p 
on p.id  = s.id_product  
inner join vendors v 
on v.id  = s.id_vendor
); 