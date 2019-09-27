Select E.Lastname, E.Firstname, J.Description, J.Salary
From Job J
left Join Employee E
on Jobid = J.id
Where description = 'Asst. Supervisor'
Order by Description
