/*
Create Database Costco
Create Table Employees (
	Id int not null primary key identity(1,1),
	FirstName Nvarchar(20) not null,
	LastName Nvarchar(30) not null,
	Phone Nvarchar(15) not null,
	HireDate DateTime not null default getdate()
);
*/

Insert into Employees (Firstname, Lastname, Phone) Values ('Alex', 'Chan', '5135605531');
Insert into Employees (Firstname, Lastname, Phone) Values ('Alex', 'Chan', '5135605531');
