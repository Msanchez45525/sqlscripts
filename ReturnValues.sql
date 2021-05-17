/*Create or Alter procedure FullName
	@firstname varchar(30),
	@lastname varchar (30)
as
begin
	declare @fn varchar(60)
	select concat(@firstname, ' ' , @Lastname) as 'fullname';
	end;
	go
	Declare @fullname varchar(60);
	execute @fullname = FullName @firstname = 'Noah', @lastname = 'Phense';
	print @fullname;
*/


-- exceptions error conditions built in system where we cant divide by 0
declare @int int =0;
Select 1/ @int;

