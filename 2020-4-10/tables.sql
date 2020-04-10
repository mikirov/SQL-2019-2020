drop database if exists test1;
create database test1;

use test1;

create table class(
 id int primary key auto_increment not null,
 name varchar(50) not null,
 count int default 0
);

create table participant(
	id int primary key auto_increment not null,
    name varchar(50) not null,
    type ENUM('student', 'teacher'),
    class_id int not null,
    foreign key (class_id) references class(id)
);