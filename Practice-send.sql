select c.id, code, subject, section, Lastname
	from class c
	join Instructor i 
	on c.InstructorId = i.Id
	where section between 200 and 400
	order by section desc;