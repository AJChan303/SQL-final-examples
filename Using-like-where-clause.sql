Declare @jobdescription nvarchar(50) = '___';




select E.Lastname, E.Firstname, J.Description, J.Salary
From Job J
Join Employee E
on Jobid = J.id
Where firstname like @jobdescription