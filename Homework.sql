/*use Master;
create database DBHMWK;
*/

Use DBHMWK;
create table Users( 

Id int Primary Key Identity (1,1),
Username varchar(30) not null unique,
Password varchar(30) not null,
FirstName varchar(30) not null,
Lastname varchar(30) not null,
Phone varchar(12),
Email varchar(255),
IsReviewer bit not null,
IsAdmin bit not null
);



Create Table Vendors(

Id Int Primary Key Identity (1,1),
Code varchar(30) not null Unique,
Name varchar(30) not null,
Address varchar(30) not null,
City varchar(30) not null,
State char(2) not null,
Zip varchar(5) not null,
Phone varchar(12),
email varchar(255)

);

CREATE table Products(
Id int primary key identity (1,1),
PartNbr varchar(30) not null Unique,
Name varchar(30) not null ,
Price decimal(11,2) not null,
Unit varchar(30) not null,
PhotoPath varchar(255),
VendorId int not null Foreign Key References  Vendors(Id)); 


Create Table Requests( 
Id Int Primary Key Identity (1,1),
Description varchar (80) not null,
Justification varchar(80) not null,
RejectionReason varchar(80),
DeliveryMode varchar(20) not null default 'Pickup',
Status varchar(10) not null Default 'NEW',
Total decimal(11,2) not null Default 0,
UserId int not null Foreign Key References Users(Id));



Create Table RequestLine(
Id Int Primary Key Identity (1,1),
RequestId Int not null Foreign Key References Requests(Id),
ProductId Int not null Foreign Key References Products(Id),
Quantity Int not null Default 1);



Insert into Users(Username, Password, FirstName, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('Msanchez', 'Password1', 'Matt', 'Sanchez', '813-503-8003', 'Msanchez@TQL.com', 1, 1),
			( 'MasterSmith', 'Bobby1', 'Bob', 'Smith', '555-346-5577', 'BSmithy@Facebook.com', 0,0),
			('DLimbacher', 'Dman1', 'David', 'Limbacher', '800-580-3101', 'Dlimbacher@tql.com', 1,0);


Insert into Vendors(Code, Name, Address, City, State, Zip, Phone, email)
	Values( 'AMZN', 'Amazon', '1 Amazon Way', 'Seattle', 'WA', '55555', '123-555-5567', 'Jbezos@amazon.com'),
		  ( 'WMT', 'Walmart', '500 Main St', 'Little Rock', 'AR', '33557', '800-555-0127', 'SamWalton@Walmart.com'),
		  ( 'MSFT', 'Microsoft', '1 Dos Ave', 'Seattle', 'WA', '44556', '555-555-1234', 'BillyGates@Microsoft.com');

Insert into Products( PartNbr, Name, Price, Unit, VendorId)
	values( 'Echo', 'Amazon Echo', 100, 1, (Select id from Vendors where code = 'AMZN')),
		  ('Dot', 'Amazon Dot', 50, 1,  (Select id from Vendors where code = 'AMZN')),
		  ('Home', 'Amazon Home', 150, 1, (Select id from Vendors where code = 'AMZN')),
		  ('CAT', 'Cat Food', 5, 1,  (Select id from Vendors where code = 'WMT')),
		  ('Oats', 'Quaker Oats', 2, 1, (Select id from Vendors where code = 'WMT')),
		  ('TP', 'Charmin TP', 10, 1, (Select Id from Vendors where code = 'WMT')),
		  ('MSFS', 'Microsoft Flight Sim', 200, 1, (Select id from Vendors where code = 'MSFT')),
		  ('GAME', 'Minecraft', 50, 1,  (Select id from Vendors where code = 'MSFT')),
		  ('HACK', 'Microsoft Hackers Net', 500, 1, (Select id from Vendors where code ='MSFT'));


			Select * from Vendors v
		   join Products p on v.Id=p.VendorId		
		  
		  -- Insert product where vendor ID is null.. change to not null!!

		  Insert Products ( PartNbr, Name, Price, Unit)
		  Values('Echo1', 'Echo Test', 100,1)

		  select * from Products


);


