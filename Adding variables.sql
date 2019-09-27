Declare @lowsalary int;
Declare @highsalary int;

Set @lowsalary = 90000;
Set @highsalary = 120000;

select E.Lastname, E.Firstname, J.Description, J.Salary
From Job J
Join Employee E
on Jobid = J.id
Where Salary >= @lowsalary and salary < @highsalary;