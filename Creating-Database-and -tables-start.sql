--CREATE DATABASE BootCampDb;
/*
Create Table Students (
	Id int not null primary key identity(1, 1),
	Firstname nvarchar(30) Not null,
	Lastname nvarchar(50) Not null,
	Email Nvarchar(255) null,
	Phone Nvarchar(15),
	DateEnrolled DateTime not null default getdate()
		
);
*/
 /*Insert into students (Firstname, Lastname) Values ('Alex', 'Chan');
Insert into students (Firstname, Lastname) Values ('Brailee', 'Begley');
Insert into students (Firstname, Lastname) Values ('Briana', 'Presley');
Insert into students (Firstname, Lastname) Values ('Glenn', 'Lindmark');
Insert into students (Firstname, Lastname) Values ('Jesse', 'Kyle');
Insert into students (Firstname, Lastname) Values ('Maggie', 'Schutzman');
Insert into students (Firstname, Lastname) Values ('Titus', 'Moore');
Insert into students (Firstname, Lastname) Values ('Marianne', 'Linardos');
Insert into students (Firstname, Lastname) Values ('Greg', 'Doud');


Create Table Bootcamps (
	Id int not null primary key identity (1, 1),
	Description nvarchar(80) not null,
);

Insert into Bootcamps (Description) Values ('.NET');
Insert into Bootcamps (Description) Values ('Java');

Alter Table Students
	add BootcampID int foreign key References Bootcamps(Id);
	
Update Students Set
	BootcampID = (Select ID from Bootcamps Where Description = 'Java')
	Where Firstname = 'Greg' and Lastname = 'Doud';

Update Students set
BootcampID = (Select ID From Bootcamps where description = '.net')

Update Students set
BootcampID = (Select ID From Bootcamps where description = 'Java')
Where Firstname = 'Greg' and Lastname = 'Doud';

Update Students set
BootcampID = (Select ID From Bootcamps where description = 'Java')
Where Firstname <> 'Greg' and Lastname <> 'Doud'; or use not()
*/
Select * From STudents
