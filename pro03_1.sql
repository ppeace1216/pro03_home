use jeonju;
create table ncategory(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);
insert into ncategory(cateName) values ("month");
insert into ncategory(cateName) values ("tradition");
insert into ncategory(cateName) values ("nature");
insert into ncategory(cateName) values ("stay");
insert into ncategory(cateName) values ("jnotice");
CREATE TABLE notice(
	no INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200),
    subtitle varchar(500),
	content VARCHAR(1000),
    notipic varchar(200),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);
alter table notice add column cateNo int not null;
drop table user;
CREATE TABLE USER(
	id VARCHAR(30) PRIMARY KEY,
	pw VARCHAR(300) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	POINT INT DEFAULT 0,
	grade VARCHAR(4) DEFAULT "F",
	visted INT DEFAULT 1,
	tel VARCHAR(11),
	addr VARCHAR(150),
	email VARCHAR(100),
	birth DATE,
	regdate DATETIME DEFAULT NOW()
);

CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT, 
	tourno varchar(20), 
	cate varchar(20), 
	title VARCHAR(200), 
	subtitle varchar(500), 
	content VARCHAR(1000), 
	regdate DATETIME DEFAULT NOW(), 
	visited INT DEFAULT 0
);
desc tour;
create table pic(no INT PRIMARY KEY AUTO_INCREMENT, tourno varchar(10) not null, picname varchar(30), pos int default 1);
desc pic;
COMMIT;
