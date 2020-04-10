use test1;


delimiter $
create trigger insert_student after insert on participant
for each row
begin
update class set count = count + 1 where id = new.class_id;
end$
delimiter ;

delimiter $
create trigger update_student after update on participant
for each row
begin
update class set count = count -1 where id = old.class_id;
update class set  count = count + 1 where id = new.class_id;
end$
delimiter ;

delimiter $
create trigger delete_student after delete on participant
for each row
begin
update class set count = count - 1 where id = old.class_id;
end$
delimiter ;
