

-- 5/15 Procedures
/*
Create or alter procedure FindUserByUserNameAndPassword
	@username varchar(30) = null,
	@password varchar(30) = null
as 
begin
	if @username = null
	begin
	Print '@Username is required'
	end

Select * 
from Users
	where Username = @username and Password = @password;
end;
go
exec FindUserByUserNameAndPassword 'msanchez' , 'qwerty';

*/

Create or alter procedure FindUserBtNameAndPassword
	@username varchar(30) = '',
	@password varchar(30) = ''
as 
begin
	if @username = ''
	begin
	Print '@Username isrequired!'
	return 
	end;
	if @password <> ' '
	begin
	Select * 
		from Users
			where Username = @username and Password = @password;
	end
	else
	begin
			select *
					From Users
						Where Username = @username;
	end
end;
go
exec FindUserByUserNameAndPassword 'msanchez';

	
