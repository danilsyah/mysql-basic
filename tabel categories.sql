-- one to many relationship

create table categories(
	id varchar(10)not null,
	name varchar(100) not null,
	primary key (id)
) engine= innodb;

desc categories 

alter table products 
	drop column category;

desc products 

alter table products 
	add column id_categories varchar(10);

alter table products 
	add constraint fk_products_categories
		foreign key (id_categories) references categories(id);
	
show create table products 

insert into categories (id,name) values ('C001','makanan'),('C002','minuman'),('C003','lain-lain');

select * from categories c 

update products 
set id_categories = 'C001'
where id in ('P0002','P0003','P0004,','P0005','P0006','P0007','P0008','P0009','P0010','P0011');

select * 
from products as p
join categories as c on (p.id_categories = c.id)

insert into categories (id,name) values ('C004','oleh-oleh'),('C005','cemilan');

