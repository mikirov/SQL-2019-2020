use classbook;

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