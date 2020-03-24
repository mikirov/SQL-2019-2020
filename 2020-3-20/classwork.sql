
delimiter $;
create trigger insert_weight_data after insert on weight_data
for each row
begin
update person set weight = (select avg(weight) from weight_data where weight_data.person_id = new.person_id);
end;
delimiter ;

