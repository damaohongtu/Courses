CREATE database websecurity;
use websecurity;
drop table if exists csdn;
create table csdn(
	id int not null auto_increment,
    username varchar(100),
    passwd varchar(100),
    email varchar(100),
    primary key(id)
);
alter table csdn auto_increment=1;
drop table if exists yahoo;
create table yahoo(
	id int not null auto_increment,
	email varchar(100),
    passwd varchar(100),
    primary key(id)
);
alter table yahoo auto_increment=1;