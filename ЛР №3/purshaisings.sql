create table purshaisings
(
      id int not null
    , id_product int not null
    , id_vendor int not null
    , price money not null
    , "count" int not null
    , purshaising_date date not null
    , constraint id_purshaising primary key (id)
    , constraint fk_product_purshaising foreign key (id_product)
      references products (id)
    , constraint fk_vendor_purshaising foreign key (id_vendor)
      references vendors(id)
);