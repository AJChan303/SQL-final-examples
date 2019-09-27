Select concat(E.Lastname, ', ', E.Firstname) 'Name', J.Description, J.Salary
From Job J
left Join Employee E
on Jobid = J.id
Order by Description
