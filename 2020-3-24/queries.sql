#TODO: create query that gets average weight of all women

#TODO: create query that gets average weight of all men
use school;

select avg(weight) as avg_weight from weight_data wd where wd.person_id = 1;
select avg(weight) from weight_data wd inner join person p on wd.person_id = p.id where p.gender = 'F';
select avg(weight) from weight_data wd inner join person p on wd.person_id = p.id where p.gender = 'M';
select avg(weight) from weight_data wd inner join person p on wd.person_id = p.id where p.age >= 20 and p.age <= 30 group by p.gender having p.gender = 'F';
