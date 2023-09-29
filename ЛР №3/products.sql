create table products
(
      id int not null
    , "name" text not null
    , mass numeric(5, 2) not null
    , manufacture_date date not null
    , constraint id_products primary key (id)
);

--select *
--from products p ;

alter table products 
add constraint ux_name_products unique("name");
