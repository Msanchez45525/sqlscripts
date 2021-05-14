use master;
Drop database if exists PrsDb;
Create database Prsdb;
use PrsDb;

--Start creating tables

use Prsdb;

Create table Users(
Id int primary key identity(1,1),
Username varchar(30) not null unique,
Password varchar(30) not null,
Firstname varchar(30) not null,
Lastname varchar(30) not null,
Phone varchar(12),
Email varchar(255),
IsReviewer bit not null,
IsAdmin bit not null,
);

create table Vendors(

Id int primary key identity (1,1) not null,
Code varchar(30) not null unique,
Name Varchar(30) not null,
Address Varchar(30) not null,
City varchar(30) not null,
State char(2) not null,
Zip varchar(5) not null,
Phone varchar(12),
Email varchar(255)
);

Create table Products(

Id int primary key identity (1,1) not null,
PartNbr varchar(30) not null unique,
Name Varchar(30) not null,
Price decimal(11,2) not null,
Unit varchar(30) not null,
PhotoPath varchar(255),
VendorId Int not null Foreign Key References Vendors(Id));

Create table Requests(
Id int primary key identity (1,1) not null,
Description Varchar(80) not null,
Justification varchar(80) not null,
RejectionReason varchar(80),
DeliveryMode varchar(20) not null Default 'Pickup',
Status varchar(10) not null default 'NEW',
Total decimal(11,2) not null default 0,
Userid int not null Foreign key references Users(Id));

Create table RequestsLine(
Id int primary key identity (1,1) not null,
RequestId int not null Foreign Key References Requests(id),
ProductId int not null Foreign Key References Products(id),
Quantity Int not null Default 1,);

/*
Insert into Users(Username, Password, Firstname, Lastname, Phone, Email, IsReviewer, IsAdmin)
	Values ('Msanchez', 'qwerty', 'Matt', 'Sanchez', '813-503-8003', 'msanchez@tql.com', 1, 1)

	Update Users set 
	Phone = '813-503-8003'
	where id = 1

	select * from Users
	*/

	Insert into Vendors (Code, Name, Address, City, State, Zip, Phone, Email)
		Values ('CBB', 'Colorado Box Beef', '123 Main St','Denver', 'CO', '12345', '247-555-1234', 'CBB@Beef.com') 

		select * from Vendors

	Insert into Products(PartNbr, Name, Price, Unit, PhotoPath, VendorId)
		Values('MOO', 'Waygu Beef', '1000', '1', 'NULL', 1)

