select c.Section, c.Subject, i.Firstname + ' ' + i.Lastname 'Instructor' from Class c
join Instructor i on c.id = i.id;