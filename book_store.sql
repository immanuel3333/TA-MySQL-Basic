CREATE DATABASE bookstore;
USE bookstore;
SHOW TABLES;

CREATE TABLE books (
id INT AUTO_INCREMENT PRIMARY KEY,
author1 VARCHAR(100) NOT NULL,
author2 VARCHAR(100) NOT NULL,
author3 VARCHAR(100) NOT NULL,
title VARCHAR(100),
`description` VARCHAR(255),
place_sell VARCHAR(3),
stock INT DEFAULT '0',
creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE books ADD price INT DEFAULT '0';
ALTER TABLE books ADD `status` ENUM('available', 'out of stock', 'limited');
ALTER TABLE books DROP COLUMN place_sell;

INSERT INTO books(id,author1,author2,author3,title,`description`,stock,creation_date,price,`status`)
VALUES 
(1,'Immanuel','Julius','Siburian','Matahari','Buku yang bagus',10,'2021-12-01',25000,'out of stock'),
(2,'Sepriana','Carolina','Panggabean','Bulan','Buku yang cantik',10,'2021-12-01',35000,'available'),
(3,'Sinthia','Marlina','Turnip','Bintang','Buku yang sempurna',10,'2021-12-01',50000,'limited');

SELECT * FROM books;
SELECT id AS ID, author1 AS A1, author2 AS a2, author3 AS A3 FROM books;
SELECT * FROM books WHERE id = 2;
SELECT * FROM books WHERE (author1 = 'Sinthia' AND author2 = 'Marlina');
SELECT * FROM books WHERE NOT author1 = 'Immanuel';
SELECT * FROM books LIMIT 2;
UPDATE books SET author1 = 'Silvany', price='100000' WHERE id = 2;
DELETE FROM books WHERE id=2;




DESC books;