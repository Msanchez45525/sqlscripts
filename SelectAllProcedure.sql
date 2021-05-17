Create  or Alter Procedure SelectAllUserSafe
as 
begin
Select Id, Username, Firstname, Lastname, Phone, Email, isReviewer, IsAdmin	
	From Users;
end 
go
Exec SelectAllUserSafe;