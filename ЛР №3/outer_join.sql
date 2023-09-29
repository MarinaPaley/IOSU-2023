select 
      vp.product_name 
    , vp.vendor_name
    , vp."count" purshaising_count 
    , vp.price   purshaising_price
    , vs."count" sales_count
    , vs.price   sales_price
    , vp.purshaising_date 
    --, vs.sales_date 
from v_purshaisings vp 
left outer join v_sales vs 
on vp.purshaising_date = vs.sales_date 