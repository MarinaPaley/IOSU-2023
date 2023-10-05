select distinct
	  p."name" 
	, v."name" 
	, s1.price
	, s1."count"
from purshaisings s1
	inner join purshaisings s2
    on s1.id_product  = s2.id_product 
		inner join products p 
        on p.id = s1.id_product 
			inner join vendors v 
            on v.id = s1.id_vendor 
where s1.id_vendor  <> s2.id_vendor
--order by v."name" ;

--insert into products values 
 -- (6, 'масло', 1, '2023-09-05');
 
 select*
 from purshaisings p;
  
select distinct
	  p."name" 
	, v."name" 
	, s1.price
	, s1."count"
from purshaisings s1
	inner join sales s2
    on s1.id_product <> s2.id_product 
		inner join products p 
        on p.id = s1.id_product 
			inner join vendors v 
            on v.id = s1.id_vendor 
where s1.id_vendor = s2.id_vendor
order by v."name" ;
 