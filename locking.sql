-- locking

start transaction

select * from guestbooks g 

update guestbooks 
set title = 'diubah oleh user 1'
where id = 9;

commit;


-- locking record manual

start transaction;

select * from products where id = 'P0002' for update;

update products
set quantity = quantity - 10
where id = 'P0002';

commit;

-- deadlock
start transaction;

select * from products where id = 'P0002' for update;

select * from products where id = 'P0003' for update;

-- lock table read

lock tables products read;

update products
set quantity = 100
where id = 'P0002';

unlock tables;

-- lock table write

lock tables products write;

update products
set quantity = quantity - 10
where id = 'P0002';

unlock tables;

-- lock instance DDL

lock instance for backup;








