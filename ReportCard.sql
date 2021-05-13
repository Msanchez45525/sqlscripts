select s.Firstname + ' ' + s.Lastname 'Student Name', c.Subject, sc.ClassGradeValue 'Grade'
	from student s
	join studentclass sc on s.Id=sc.StudentId
	join class c on c.id= sc.ClassId;