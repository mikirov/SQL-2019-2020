USE school;
# CREATE VIEW BestMarksBySubject(
# 	Class,
# 	SubjectName,
# 	AverageMark
# )
# AS
SELECT st.Name, sb.Name, AVG(m.Mark)
FROM StudentMarks m
LEFT JOIN Students st
ON m.StudentId = st.Id
LEFT JOIN Subjects sb
ON sb.Id = m.SubjectId
group by sb.Id, sb.Name, st.Name
order by AVG(m.Mark) desc;
#GROUP BY st.Id, sb.Id, sb.Name, st.Name;
