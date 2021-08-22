-- index berfungsi untuk mempercepat query data seperti pencarian data, tetapi efek samping nya memperlambat proses insert, update, delete
CREATE TABLE sellers (
	id INT NOT NULL AUTO_INCREMENT,
	NAME VARCHAR(100)NOT NULL,
	name2 VARCHAR(100),
	name3 VARCHAR(100),
	email VARCHAR(100)NOT NULL,
	PRIMARY KEY(id),
	UNIQUE KEY email_unique (email),
	INDEX name_index(NAME),
	INDEX name2_index(name2),
	INDEX name3_index(name3),
	INDEX name1_name2_name3_index(NAME, name2, name3)
)ENGINE = INNODB;

SHOW CREATE TABLE sellers;

DESC sellers

ALTER TABLE sellers
DROP INDEX name_index;

SELECT * FROM sellers WHERE NAME = 'x'; -- pencarian nama cepat
SELECT * FROM sellers WHERE NAME = 'x' AND name2 = 'x'; -- pencarian nama dan nama2 cepat
SELECT * FROM sellers WHERE NAME = 'x' AND name2 = 'x' AND name3 = 'x'; -- pencarian nama, nama2, nama3 cepat


