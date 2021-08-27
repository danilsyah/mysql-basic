# mysql-basic
Belajar konsep dan dasar-dasar DBMS MySQL 

## Pengenalan Database Management System

- DBMS adalah aplikasi yang digunakan untuk me-manage data
- Tanpa menggunakan DBMS, untuk me-manage data, seperti data produk, data customer,  data penjualan, kita
	harus simpan dalam bentuk file (misalkan excel)
- DBMS biasanya berjalan sebagai aplikasi server yang digunakan untuk me-manage data, kita hanya tinggal memberi perintah
	ke DBMS untuk melakukan proses manajemen datanya, seperti menambah, mengubah, menghapus atau mengambil data.
- Contoh DBMS yang populer seperti MySQL, PostgreSQL, MongoDB, Oracle, Dll.
- Ada banyak sekali jenis-jenis DBMS, seperti Relational Database, Document Database, Key-Value Database, Dll.
test

### Cara Backup Database 
- open teminal ketikan perintah dibawah ini :
- $ mysqldump belajar_mysql --user root --password --result-file=E:\Ngoding\mysql-basic\mysql-basic\belajar_mysql.sql

### Cara Restore Database

- Cara Pertama
  - Buat database baru, contoh : belajar_mysql_import
  - open terminal
  - mysql --user=root --password belajar_mysql_import < E:\Ngoding\mysql-basic\mysql-basic\belajar_mysql.sql

- cara kedua :
  - buat sebuah database
  - masuk ke database yang dibuat
  - ketikan : mysql > source 'lokasi file backup'
    - contoh : mysql > source E:\Ngoding\mysql-basic\mysql-basic\belajar_mysql.sql