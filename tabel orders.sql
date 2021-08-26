-- many to many

create table orders
(
	id int not null auto_increment,
	total int not null,
	order_date datetime not null default current_timestamp,
	primary key (id)
)engine = innodb;

create table orders_detail(
	id_product varchar(10) not null,
	id_order int not null,
	price int not null,
	quantity int not null,
	primary key (id_product, id_order)
)engine = innodb;

desc orders_detail 

alter table orders_detail 
add constraint fk_orders_detail_product
foreign key (id_product) references products(id);

alter table orders_detail
add constraint fk_orders_details_orders
foreign key (id_order) references orders(id);

show create table orders_detail 

select * from orders o

insert into orders(total) values (50000);

select * from products p 

insert into orders_detail (id_product, id_order, price, quantity) 
values ("P0004", 1, 25000, 1), ("P0007",1, 25000,1);

insert into orders_detail (id_product, id_order, price, quantity) 
values ("P0008", 2, 25000, 1), ("P0007",2, 25000,1);


insert into orders_detail (id_product, id_order, price, quantity) 
values ("P0008", 3, 25000, 1), ("P0007",3, 25000,1);

select * from orders_detail od 

select orders.id , products.name,orders_detail.quantity , orders_detail.price  from orders
join orders_detail on (orders_detail.id_order = orders.id)
join products on (orders_detail.id_product = products.id);

