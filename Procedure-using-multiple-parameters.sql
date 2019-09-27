Create Procedure SalaryLTGT @lowsalary int, @highsalary int
As
Begin
	
	Select Concat(E.Lastname, ', ', E.Firstname) Name, Description, Format(Salary, 'c') Salary
	from employee e
	join job j
	on e.jobid = j.id
	Where Salary >= @lowsalary and salary <= @highsalary
	Order by name;
End
go
exec SalaryLTGT 100000, 130000;
go