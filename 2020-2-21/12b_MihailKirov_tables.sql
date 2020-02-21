drop database if exists classbook;

create database classbook;
use classbook;

create table Grades(
	id int not null auto_increment primary key,
    grade_math int default 2,
    grade_subd int default 2,
    grade_bg int default 2
);

create table Student(
	id int not null auto_increment primary key,
	name varchar(50),
    age int,
    gpa double default 2,
    grade_id int unique,
    foreign key (grade_id) references Grades(id)
);

insert into Student (name, age) values ("Misho", 23);
insert into Student (name, age) values ("Toni", 18);
insert into Student (name, age) values ("Ivan", 26);

insert into Grades ( grade_bg, grade_math, grade_subd) values(3, 4, 5);
insert into Grades ( grade_bg, grade_math, grade_subd) values(4, 5, 6);
insert into Grades ( grade_bg, grade_math, grade_subd) values(2, 4, 5);

update Student set grade_id = 1 where Student.id = 1;
update Student set grade_id = 2 where Student.id = 2;
update Student set grade_id = 3 where Student.id = 3;

select * from Student;