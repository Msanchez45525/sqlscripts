--nvarchar(30) used for non character languages , chinese / Arabic
-- variable character varchar(30)

use master;
Create database Bootcamp;
use Bootcamp;
Create table Students (
	Id int primary key identity (1,1),
	Firstname varchar(30) not null, 
	Lastname varchar(30) not null,
	Address varchar(50) not null,
	City varchar(50) not null,
	State char(2) not null,
	Zip varchar(10) not null,
	AssessmentScore int not null
);

--

Create table Assessments (
	Id int primary key identity(1,1),
	StudentId int not null foreign key references Students(Id),
	Topic varchar(30) not null,
	Score int not null);


Insert into Students (Firstname, Lastname, Address, City, State, Zip, AssessmentScore)
	Values( 'Matt', 'Sanchez', 'Tarabrook Dr', 'Tampa', 'FL', 33618, 85)

Insert into Assessments( StudentId, Topic,Score)
	values((select ID from Students), 'Initial Assessment', 85)

	select * from Students
	select * from Assessments


	