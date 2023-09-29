create table vendors
(
      id int not null
    , "name" text not null
    , contacts text
    , constraint id_vendor primary key (id)
);

--drop table vendor;

alter table products 
add constraint ux_name_vendors unique("name");