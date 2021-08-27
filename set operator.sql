-- set operator

 create table guestbooks (
 	id int not null auto_increment,
 	email varchar(100),
 	title varchar(200),
 	content text,
 	primary key (id)
 )engine = innodb;
 
select * from guestbooks 

select * from customers c 

insert into guestbooks (email, title, content) 
values ("quest@gmail.com", "hello","hello"),
		("quest1@gmail.com", "hello","hello"),
		("ques2@gmail.com", "hello","hello"),
		("quest3@gmail.com", "hello","hello"),
		("danil@gmail.com", "hello","hello"),
		("danil@gmail.com", "hello","hello"),
		("danil@gmail.com", "hello","hello");
	
insert into guestbooks (email, title, content) 
values ("fika@gmail.com", "hello","hello"),
		("fika@gmail.com", "hello","hello");

-- union
select distinct email from customers
union
select distinct email from guestbooks;

-- union all
select distinct email from customers
union all
select distinct email from guestbooks ;

select emails.email, count(emails.email) from (select email from customers union all select email from guestbooks) as emails group by emails.email;

-- intersect
select distinct email from customers
where email in (select distinct email from guestbooks);

select distinct customers.email from customers
inner join guestbooks on (guestbooks.email = customers.email);

select distinct customers.email, guestbooks.email from customers
left join guestbooks on (customers.email = guestbooks.email)
where guestbooks.email is null;
