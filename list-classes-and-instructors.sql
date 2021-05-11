SELECT c.id, code, subject, section, CONCAT(firstname, ' ' ,Lastname) 'Name'
from Class c
join Instructor i
	on c.InstructorId = i.Id
	where section between 300 and 399
	order by section desc