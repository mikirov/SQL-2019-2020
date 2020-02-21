use classbook;

select St.name, G.grade_math, G.grade_subd, G.grade_bg
from Student St
inner join Grades G
on St.grade_id = G.id
where St.name = "Misho"; 


select St.name, G.grade_math, G.grade_subd, G.grade_bg
from Student St
inner join Grades G
on St.grade_id = G.id
where St.name like "a%";


select St.name, G.grade_math, G.grade_subd, G.grade_bg
from Student St
inner join Grades G
on St.grade_id = G.id
where gpa > 5;


select St.name, G.grade_math, G.grade_subd, G.grade_bg
from Student St
inner join Grades G
on St.grade_id = G.id
where ((grade_bg + grade_subd) / 2) > 4.5;