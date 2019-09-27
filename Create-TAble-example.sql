Create Table Department (
	Id int primary key identity (1,1)
	Name nvarchar(30) not null,
	City nvarchar(30) not null,
	State char(2), not null,
)
Go
Insert into Department (Name, city, state) Values ('Corporate', 'Cincinnati', 'OH')
Insert into Department (Name, city, state) Values ('Admninistration', 'Mason', 'OH')
Insert into Department (Name, city, state) Values ('HR', 'Dayton', 'OH')
Insert into Department (Name, city, state) Values ('Sales', 'Fr. Thomas', 'KY')

