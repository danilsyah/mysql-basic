-- tabel relationship

create table wishlist(
	id int not null auto_increment,
	id_product varchar(10) not null,
	description text,
	primary key (id),
	constraint fk_wishlist_product foreign key (id_product) references products (id)
)engine = innodb;

show tables

desc wishlist 

show create table wishlist 

-- menghapus foreign key
alter table wishlist drop foreign key fk_wishlist_product

-- menambahkan foreign key dengan default ristrict 
alter table wishlist 
	add constraint fk_wishlist_product 
		foreign key (id_product) references products (id)

insert into wishlist (id_product, description) values ('P0003','pesan dengan pedas')

select * from wishlist 
		
-- mengubah behavior menghapus relasi
alter table wishlist 
	add constraint fk_wishlist_product
		foreign key (id_product) references products (id)
			on delete cascade on update cascade;
	
delete from products  where id = 'P0001'

-- join table , menampilkan data lebih dari 1 tabel
select w.id, p.id, p.name, w.description 
from wishlist as w 
	join products as p on w.id_product = p.id 
	

desc customers 

alter table wishlist 
	add column id_customer int;

desc wishlist 

-- membuat relasi ke tabel customer

alter table wishlist 
	add constraint fk_wishlist_customer
	foreign key (id_customer) references customers(id);

show create table wishlist 

update wishlist 
set id_customer = 3
where id = 7;

select * from wishlist w 

select * from customers c 

select w.id as 'nomor pesanan' , p.name, p.category ,c.first_name,c.last_name 
from wishlist as w 
join products as p on (w.id_product = p.id)
join customers as c on (w.id_customer = c.id) ;