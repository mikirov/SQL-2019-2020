use school;
select ST.Name, count(ST.Name)
from Students ST
inner join StudentMarks SM on ST.Id = SM.StudentId
group by ST.Name, SM.Mark, ST.Id, SM.ExamDate;