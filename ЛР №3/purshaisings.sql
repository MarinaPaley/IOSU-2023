create table purshaisings
(
      id int not null
    , id_product int not null
    , id_vendor int not null
    , price money not null
    , "count" int not null
    , purshaising_date date not null
);

alter table purshaisings
add constraint pk_purshaisings primary key (id);

alter table purshaisings
add constraint fk_product_purshaisings foreign key (id_product)
      references products (id);
     
alter table purshaisings
add constraint fk_vendor_purshaisings foreign key (id_vendor)
      references vendors(id);
      