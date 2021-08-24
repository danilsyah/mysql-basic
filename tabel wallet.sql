-- one to one relationship
create table wallet(
	id int not null auto_increment,
	id_customer int not null,
	balance int not null default 0,
	primary key (id),
	unique key fk_id_customer_unique (id_customer),
	constraint fk_wallet_customer foreign key (id_customer) references customers (id)
)engine = innodb;

desc wallet

select * from customers c 

insert into wallet (id_customer)values(3)

select w.id, c.email , c.first_name, w.balance from wallet as w 
join customers as c on (w.id_customer = c.id)