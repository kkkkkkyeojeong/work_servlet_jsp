# no: 회원번호 / email: 이메일(아이디 용도) / password: 비밀번호 / name: 이름
CREATE TABLE users (
	no			INT 			NOT NULL	 PRIMARY KEY	AUTO_INCREMENT,
	email		VARCHAR(255)	NOT NULL,
	password 	VARCHAR(255)	NOT NULL,
	name		VARCHAR(255)	NOT NULL
);

DROP TABLE users; 

show tables;

INSERT INTO users (email, password, name) 
	VALUES ('aaa@naver.com', '1234', '홍길동');
INSERT INTO users (email, password, name) 
	VALUES ('bbb@naver.com', '5678', '김철수');
INSERT INTO users (email, password, name) 
	VALUES ('ccc@naver.com', '0011', '박영희');
	
select * from users;