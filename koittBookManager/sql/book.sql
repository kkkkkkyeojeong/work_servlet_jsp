CREATE DATABASE bookmgr;

CREATE TABLE book (
	isbn	 	INT 			NOT NULL 	PRIMARY KEY AUTO_INCREMENT,
	title 		VARCHAR(30) 	NOT NULL,
	author 		VARCHAR(30) 	NOT NULL,
	publisher	VARCHAR(30) 	NOT NULL,
	price 		INT 			NOT NULL,
	description VARCHAR(255)	NOT NULL
);

show tables;

INSERT INTO book (title, author, publisher, price, description) 
values ('제목1', '저자1', '출판사1', 15000, '내용1');