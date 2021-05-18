-- create procedure add 3 users in databse 1 user both admin/reviewer, 1 just reviewer not admin, 1 user not admin/reviewer
--create procedure that takes data from user does insert in database ... example add user

-- Procedure to insert user

Create or alter procedure AddUser
	@username varchar(30) = '',
	@password varchar(30) = '',
	@firstname varchar(30) = '',
	@lastname varchar(30) = '',
	@phone varchar(12) = null,
	@email varchar(255) = null,
	@isreviewer bit = false,
	@isadmin bit = false
as 
begin
	if @username = '' or @password = '' or
		@firstname = '' or @lastname = ''
	begin
		Print 'Required data is not provided!';
		return -1;
		end;
		INSERT into Users 
		(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
		values (@username, @password, @firstname, @lastname, @phone, @email, @isreviewer, @isadmin);
	return 0;
end
go

exec AddUser 'xx5', 'xx', 'xx', 'xx', null,null,0,0;

select* from Users
/*
-- create procedure add 3 users in databse 1 user both admin/reviewer, 1 just reviewer not admin, 1 user not admin/reviewer
--create procedure that takes data from user does insert in database ... example add user

-- Procedure to insert user

Create or alter procedure AddUser
	@username varchar(30) = '',
	@password varchar(30) = '',
	@firstname varchar(30) = '',
	@lastname varchar(30) = '',
	@phone varchar(12) = null,
	@email varchar(255) = null,
	@isreviewer bit = false,
	@isadmin bit = false
as 
begin
	if @username = '' or @password = '' or
		@firstname = '' or @lastname = ''
	begin
		Print 'Required data is not provided!';
		return -1;
		end;
		if exists (SELECT 1 from Users where Username = 'Msanchez')
		begin
		end;
		INSERT into Users 
		(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
		values (@username, @password, @firstname, @lastname, @phone, @email, @isreviewer, @isadmin);
	return 0;
end
go

exec AddUser 'xx2', 'xx', 'xx', 'xx', null,null,0,0;
*/

-- create procedure add 3 users in databse 1 user both admin/reviewer, 1 just reviewer not admin, 1 user not admin/reviewer
--create procedure that takes data from user does insert in database ... example add user

-- Procedure to insert user

Create or alter procedure AddUser
	@username varchar(30) = '',
	@password varchar(30) = '',
	@firstname varchar(30) = '',
	@lastname varchar(30) = '',
	@phone varchar(12) = null,
	@email varchar(255) = null,
	@isreviewer bit = false,
	@isadmin bit = false
as 
begin
	if @username = '' or @password = '' or
		@firstname = '' or @lastname = ''
	begin
		Print 'Required data is not provided!';
		return -1;
		end;
		if exists (SELECT 1 from Users where Username = 'Msanchez')
		begin
		Print 'UserName Already Exists - Select Another!'
		return -2;
		end;
		INSERT into Users 
		(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
		values (@username, @password, @firstname, @lastname, @phone, @email, @isreviewer, @isadmin);
	return 0;
end
go

exec AddUser 'xx2', 'xx', 'xx', 'xx', null,null,0,0;


-- Update User & check for ID before changing must supply ID of one to change


Create or alter procedure UpdateUser
	@id int = 0,
	@username varchar(30),
	@password varchar(30),
	@firstname varchar(30),
	@lastname varchar(30),
	@phone varchar(12),
	@email varchar(255),
	@isreviewer bit,
	@isadmin bit

	as
begin
	if not exists (select 1 from Users where Id =@id)
	begin
		print 'Not Found';
		return -3;
		end;
	update Users set
		Username = @username,
		Password = @password,
		Firstname = @firstname,
		Lastname = @lastname,
		Phone = @phone,
		email = @email,
		IsReviewer = @isreviewer,
		IsAdmin = @isadmin
		where Id = @id;

	return 0;
	end;
	go
	exec UpdateUser 1,'sa','sa','System','Admin','911', null, 1,1;

	select * from Users

			
