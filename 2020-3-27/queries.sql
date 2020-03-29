use ex2;

select st.name, g.name, g.grade from grades g inner join student st on st.id = g.student_id;

select avg(g.grade) from grades g where g.student_id = 1 and g.name like "SUBD";

select avg(g.grade) as average_grade, st.name from student st inner join grades g on g.student_id = st.id group by st.id;

select st.name, st.age, g.name, g.grade from student st inner join grade g on g.student_id = st.id where g.grade > 4;