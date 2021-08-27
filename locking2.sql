start transaction

select * from guestbooks g 

update guestbooks 
set title = 'di ubah oleh user 2'
where id = 9;

commit;


start transaction;

select * from products where id = 'P0002' for update;

update products
set quantity = quantity  - 10
where id = 'P0002';


commit;

rollback;

-- deadlock

start transaction;

select * from products where id = 'P0003' for update;

select * from products where id = 'P0002' for update;


-- lock table read
select * from products;

update products
set quantity = 100
where id = 'P0002';

-- lock tables write
select * from products p 

-- lock instance DDL





