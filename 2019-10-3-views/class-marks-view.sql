USE school;
CREATE VIEW ClassMarks(
	Class,
	SubjectName,
	AverageMark
)
AS
SELECT st.ClassNum, sb.Name, AVG(m.Mark)
FROM StudentMarks m
LEFT JOIN Students st
ON m.StudentId = st.Id
LEFT JOIN Subjects sb
ON sb.Id = m.SubjectId
GROUP BY st.ClassNum, sb.Id, sb.Name;
