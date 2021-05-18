		Create or Alter Procedure UpdateUsers
			@id int = 0,
			@username varchar(30),
			@Password varchar(30),
			@Firstname varchar(30),
			@lastname varchar(30),
			@phone varchar(12),
			@email varchar(255),
			@isReviewer bit,
			@isAdmin bit

	As
	Begin
	if not exists (select 1 from users where id = @id)
	begin print 'User Not Found';
	Return -3;
	end;
	update users set 
		Username = @username,
		Password = @Password,
		Firstname = @Firstname,
		Lastname = @lastname,
		Phone = @phone, 
		email = @email,
		IsReviewer = @isReviewer,
		IsAdmin = @isAdmin
		where id = @id;
end;

go
exec UpdateUsers 6, 'Nova', 'Nova1', 'Nasty', 'Nate', null, null, 1, 1;
