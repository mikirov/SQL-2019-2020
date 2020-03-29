use ex2;

delimiter $;
create trigger insert_grade after insert on grades
for each row
begin
update student set average_grade = (select avg(grade) from grades where grades.student_id = new.student_id);
end;
delimiter ;

delimiter $;
create trigger update_grade after update on grades
for each row
begin
update student set average_grade = (select avg(grade) from grades where grades.student_id = new.student_id);
end;
delimiter ;

delimiter $;
create trigger delete_grade after delete on grades
for each row
begin
update student set average_grade = (select avg(grade) from grades where grades.student_id = old.student_id);
end;
delimiter ;
