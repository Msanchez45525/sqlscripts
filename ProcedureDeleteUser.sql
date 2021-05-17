

Create or alter procedure DeleteUser
	@id int = 0

as
begin
	if not exists (select 1 from users where id = @id)
	begin
	print 'User not found';
	return -1;
	end
	delete from Users
		where Id = @id
		return 0;
		end;