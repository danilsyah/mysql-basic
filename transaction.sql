-- transaction

start transaction;

insert into guestbooks (email,title,content)
values ('contoh@gmail.com','contoh','contoh'),
	('contoh2@gmail.com','contoh','contoh'),
	('contoh3@gmail.com','contoh', 'contoh');
	
select * from guestbooks g ;

commit;


start transaction;

delete from guestbooks ;

select * from guestbooks g 

rollback;