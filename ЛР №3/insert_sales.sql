create view v_sales as(
select 
     p."name" as product_name
  ,  s."count"
  ,  s.price 
  ,  s.sales_date 
  ,  v."name" as vendor_name
from sales s 
inner join products p 
on p.id  = s.id_product  
inner join vendors v 
on v.id  = s.id_vendor) 