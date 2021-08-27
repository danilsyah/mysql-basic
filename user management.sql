-- user management

create user 'danil'@'localhost';
create user 'haykal'@'%';

-- menghapus user
drop user 'danil'@'localhost';
drop user 'haykal'@'%';

-- membarikan hak akses
grant select on belajar_mysql.* to 'danil'@'localhost';
grant select, insert, update, delete on belajar_mysql.* to 'haykal'@'%';

-- melihat hak akses user
show grants for 'danil'@'localhost';
show grants for 'haykal'@'%';

-- mengubah dan menambahkan password user
set password for 'danil'@'localhost' = 'rahasia';
set password for 'haykal'@'%' = 'ganteng'; 