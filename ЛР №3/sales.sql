create table sales
(
      id int not null
    , id_product int not null
    , id_vendor int not null
    , price money not null
    , "count" int not null
    , sales_date date not null
);

alter table sales
add constraint pk_sales primary key (id);

alter table sales
add constraint fk_product_sales foreign key (id_product)
      references products (id);
     
alter table sales
add constraint fk_vendor_sales foreign key (id_vendor)
      references vendors(id);
      
