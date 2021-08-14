-- membuat table
CREATE TABLE barang(
	id INT,
	nama VARCHAR(100) NOT NULL,
	harga INT NOT NULL DEFAULT 0,
	jumlah INT NOT NULL DEFAULT 0
)

SHOW TABLES
DESC barang
SHOW CREATE TABLE barang 

-- mengubah struktur tabel
ALTER TABLE barang 
	ADD COLUMN nama_column TEXT,
	DROP COLUMN nama,
	RENAME COLUMN nama TO nama_baru,
	MODIFY nama VARCHAR(100) AFTER jumlah,
	MODIFY nama VARCHAR(100) FIRST;
	
ALTER TABLE barang
	ADD COLUMN deskripsi TEXT;

ALTER TABLE barang
	MODIFY nama VARCHAR(200)
	
ALTER TABLE barang
	MODIFY harga INT(11) AFTER jumlah; 
	
ALTER TABLE barang
	MODIFY id INT NOT NULL,
	MODIFY nama VARCHAR(200) NOT NULL;

ALTER TABLE barang
	MODIFY jumlah INT NOT NULL DEFAULT 0,
	MODIFY harga INT NOT NULL DEFAULT 0;
	
ALTER TABLE barang
	ADD waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
	
-- menghapus table 
-- drop table barang