use test1;

select c.name as 'Име Клас', p.name as 'Име участващ', p.type as 'тип' from class c inner join participant p on c.id = p.class_id;

select p.name, c.name from participant p inner join class c on p.class_id = c.id;

select count(*) from participant p where p.type = 'teacher';

select c.name as 'Име Клас', count(p.id) as 'Брой хора в класа' from class c left join participant p on c.id = p.class_id group by c.name;

select c.name as 'Име Клас', count(p.id) as 'Брой ученици в класа' from class c left join participant p on c.id = p.class_id and p.type = 'student' group by c.name;

select c.name as 'Име Клас', count(p.id) as 'Брой учители в класа' from class c left join participant p on c.id = p.class_id and p.type = 'teacher' group by c.name ;

