CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(100) NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100),
	PRIMARY KEY(id),
	UNIQUE KEY email_unique(email)
)ENGINE = INNODB;

DESC customers;

-- menghapus unique column
ALTER TABLE customers
DROP INDEX email_unique;

-- menambahkan unique
ALTER TABLE customers ADD UNIQUE INDEX email_unique(email);

INSERT INTO customers(email,first_name,last_name)VALUES('haykal@gmail.com','haykal','dafiansyah');

SELECT * FROM customers;