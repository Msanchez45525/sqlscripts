SELECT *
	from Student s
	left Join Major m
		on S.MajorId = m.Id
	where GPA >= 3.5 and gpa < 4.0
		order by GPA desc, sat desc