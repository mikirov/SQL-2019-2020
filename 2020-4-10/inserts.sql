use test1;


insert into class(name) values("Class1");
insert into class(name) values("Class2");
insert into class(name) values("Class3");

insert into participant(name, type, class_id) values("Misho", 'student', 1);
insert into participant(name, type, class_id) values("Pesho", 'student', 1);
insert into participant(name, type, class_id) values("George", 'teacher', 1);

insert into participant(name, type, class_id) values("Misho", 'teacher', 2);