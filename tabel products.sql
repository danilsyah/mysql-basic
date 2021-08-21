CREATE TABLE products(
	id VARCHAR(10) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	description TEXT,
	price INT UNSIGNED NOT NULL,
	quantity INT UNSIGNED NOT NULL DEFAULT 0,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE= INNODB

SHOW TABLES
DESC products

-- menambahkan data ke tabel 
INSERT INTO products(id, NAME, price, quantity)
VALUES ('P0001', 'Mie Ayam Original',15000, 100);

SELECT * FROM products

INSERT INTO products(id, NAME, description, price, quantity)
VALUES ('P0002','Mie ayam bakso', 'Mie ayam original + bakso', 20000, 100);

-- multi insert
INSERT INTO products(id,NAME,price, quantity)
VALUES ('P0006','Baso Gunung',18000,100),
	('P0007','Baso Ceker',25000,100),
	('P0008','Baso kikil',25000,100),
	('P0009','Baso beranak',23000,100),
	('P0010','Baso urat',20000,100),
	('P0011','Baso pangsit',10000,100),
	('P0012','Teh Botol',6000,60),
	('P0013','Teh Pucuk',5000,20),
	('P0014','Teh Obeng',3000,10),
	('P0015','Es Jeruk',7000,1),
	('P0016','Es Teler',10000,100),
	('P0017','Es Cendol',10000,100),
	('P0018','Kerupuk',3000,100),
	('P0019','Emping',2500,100),
	('P0020','Gorengan',1000,20);

-- menampilkan data products	
SELECT id, NAME, price, quantity FROM products

ALTER TABLE products
	ADD PRIMARY KEY (id);

DESCRIBE products

-- where clause
SELECT * FROM products WHERE quantity < 100;
SELECT * FROM products WHERE quantity = 100;
SELECT * FROM products WHERE id = 'P0004';

-- menambahkan kolom kategori
ALTER TABLE products
	ADD COLUMN category ENUM ('makanan','minuman','lain-lain')
	AFTER NAME;

DESCRIBE products

-- update data product
UPDATE products
SET category = "makanan"
WHERE id = "P0001";

-- mengubah beberapa kolom
UPDATE products
SET 	category = 'makanan',
	description = 'Mie ayam + ceker'
WHERE id = 'P0003';

UPDATE products
SET price = price + 1000
WHERE id = 'P0001';

SELECT * FROM products

-- MENGHAPUS DATA
DELETE FROM products WHERE id = 'P0020';

-- Membuat Alias di Kolom
SELECT id AS Kode,
	NAME AS Nama,
	category AS Kategori,
	description AS Deskripsi,
	price AS Harga,
	Quantity AS Jumlah
FROM products;

-- Membuat Alias Tabel
SELECT p.`id` AS Kode,
	p.`name` AS Nama,
	p.`category` AS Kategori,
	p.`description` AS Deskripsi,
	p.`price` AS Harga
FROM products AS p;

-- Operator where clause
-- =, != , <, >, <= , >=, <>
SELECT * FROM products WHERE category != 'makanan';
SELECT * FROM products WHERE quantity < 100;
SELECT * FROM products WHERE price > 10000;
SELECT * FROM products WHERE category <> 'minuman';

-- OR, AND
SELECT * FROM products WHERE quantity > 20 AND price < 10000;
SELECT * FROM products WHERE quantity <= 20 OR price < 10000;
-- yang di kurung akan di prioritaskan utama dalam pengolahan
SELECT * FROM products WHERE (category = 'makanan' OR quantity < 100) AND price < 10000;

-- LIKE Operasi Pencarian string
SELECT * FROM products WHERE NAME LIKE '%kil%';

-- NULL
SELECT * FROM products WHERE description IS NOT NULL;
SELECT * FROM products WHERE description IS NULL;

-- BETWEEN (menampilkan berdasarkan rentang nilai
SELECT * FROM products WHERE price BETWEEN 10000 AND 20000;
SELECT * FROM products WHERE price NOT BETWEEN 10000 AND 20000;

-- IN
SELECT * FROM products WHERE category IN ('makanan','minuman');
SELECT * FROM products WHERE category NOT IN ('makanan','minuman');

-- ORDER BY  mengurutkan data
SELECT id, category, price, NAME FROM products ORDER BY category ASC,price DESC ,NAME DESC;


-- Limit Clause
SELECT * FROM products ORDER BY price LIMIT 5;
-- Limit page
SELECT * FROM products ORDER BY id LIMIT 5,5;
SELECT * FROM products ORDER BY id LIMIT 10,5;

-- SELECT DISTINCT : memfilter duplicate 
SELECT DISTINCT category FROM products;

-- aggregate, matematika function
SELECT id, NAME, price, price DIV 1000 AS 'Price in K' FROM products;
SELECT MAX(price) AS 'harga termahal' FROM products;
SELECT id, NAME, category, price FROM products WHERE price DIV 1000 > 15;
SELECT AVG(price) AS 'harga rata-rata' FROM products;
SELECT COUNT(id) AS 'Total Product' FROM products;
SELECT MIN(price) AS 'harga termurah' FROM products;
SELECT SUM(quantity) AS 'total stock' FROM products; 

-- group by
SELECT SUM(quantity) AS 'Total stock', category FROM products GROUP BY category;
SELECT COUNT(id) AS 'Total Product', category FROM products GROUP BY category;
SELECT MAX(price) AS 'Product termahal', category FROM products GROUP BY category;
SELECT MIN(price) AS 'Product termurah', category FROM products GROUP BY category;
SELECT AVG(price) AS 'Rata-rata harga', category FROM products GROUP BY	category;

-- having
SELECT COUNT(id) AS total, category FROM products GROUP BY category HAVING total > 5 ;






