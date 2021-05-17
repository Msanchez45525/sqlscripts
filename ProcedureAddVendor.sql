Create or Alter Procedure AddVendors
	@Code varchar(30) = null,
	@Name varchar(30) = null,
	@Address varchar(30) = null,
	@City varchar(30) = null,
	@State varchar(2) = null,
	@Zip varchar(10) = null,
	@phone varchar(12) = null,
	@email varchar(255) = null

	as 
	begin
	if exists (select 1 from Vendors where Code = @code)
	begin
		Print 'Vendor code already exists';
			return -1;
		end
		Insert vendors (Code, Name, Address,City, State,Zip, Phone, Email)
			values (@code, @Name, @Address, @City, @State, @Zip, @phone, @email);
		return 0
		end 
		go 
		exec AddVendors (								)
	select * from Vendors