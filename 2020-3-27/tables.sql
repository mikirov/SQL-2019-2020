drop database if exists ex2;
create database ex2;
use ex2;

create table student(
	id int primary key auto_increment not null,
    name varchar(50) not null,
    age int,
    average_grade float default 2
);

create table grades(
	id int primary key auto_increment not null,
    name ENUM('BG','Math', 'SUBD') ,
    grade int default 2,
    student_id int,
    foreign key (student_id) references student(id) on delete cascade
);

