create or alter procedure UpdateUsers
	@Id int = 0,
	@username varchar(30),
	@Password varchar(30),
	@firstname varchar(30),
	@lastname varchar(30),
	@phone varchar(12),
	@email varchar(255),
	@isReviewer bit,
	@isAdmin bit
	
as
begin
if not exists (select 1 from Users where id = @id)
	begin
	print 'fuck back where u from';
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
		IsAdmin = @isreviewer
		where id = @id;
end;
go
exec UpdateUsers 9, 'Papaklump1', 'tigity', 'Sherman', 'Klump', null, null, 1, 1;

exec updateusers 12, 'Sanchita', 'Sanch1', 'Sancho', 'Panza', null, null, 0, 0

select * from Users

delete from users
	where id = 6


	Create or alter procedure AddUser

	@username varchar(30) ='',
	@password varchar(30)= '',
	@firstname varchar(30) = '',
	@lastname varchar(30) = '',
	@Phone varchar(12) = null,
	@email varchar(255) = null,
	@Isreviewer bit = false,
	@isAdmin bit = false

	as
	begin
	if @username =''or @Password= ''or @Firstname = ''or @Lastname = ''
	begin
	print 'data needed not supplied';
	return -1;
	end;
	insert into users (Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
		values (@username, @password, @firstname, @lastname, @phone, @email, @Isreviewer, @isAdmin)
	return 0;
	end;

go
exec AddUser 'Cnullman3', 'Null', 'Garrett', 'Jabrona', null, null, 1, 1;


