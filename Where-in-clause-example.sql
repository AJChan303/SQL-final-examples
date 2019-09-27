
select E.Lastname, E.Firstname, J.Description, J.Salary
From Job J
Join Employee E
on Jobid = J.id
Where Lastname in (
					Select Lastname from em
					ployee where firstname = 'Amy');