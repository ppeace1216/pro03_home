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
create table user (id varchar(16) primary key, pw varchar(20) not null, name varchar(20) not null, tel varchar(15), email varchar(50));