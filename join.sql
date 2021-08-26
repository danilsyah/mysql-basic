-- jenis-jenis join
-- 1. inner join / join = menampilkan data di table pertama dan kedua  yang saling bereleasi saja
-- 2. left join = menampilkan data di semua tabel pertama , jika ada data yang tidak berelasi di tabel kedua , maka hasilnya null
-- 3. right join = menampilkan data di semua tabel kedua, jika ada data yang tidak berelasi di tabel kedua , maka hasilnya null
-- 4. cross join

select * from products
inner join categories on (products.id_categories = categories.id)

select * from categories
left join products on (products.id_categories = categories.id)

select * from categories
right join products on (products.id_categories = categories.id)

-- cara penggunaan cross join , membuat perkalian
create table numbers(
	id int not null,
	primary key (id)
 )engine = innodb;

insert into numbers (id) values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
-- -- 
select numbers1.id, numbers2.id, (numbers1.id * numbers2.id) as hasil
from numbers as numbers1 
cross join numbers as numbers2 
order by numbers1.id, numbers2.id;

 select max(price) from products p ;


-- sub query

select max(cp.price) 
from (select price from products join categories  on (products.id_categories = categories.id)) as cp;

select *
from products
where price > (select avg(price) from products join categories on (products.id_categories = categories.id))

-- sub query
select avg(price) 
from products 
join categories on (products.id_categories = categories.id);
