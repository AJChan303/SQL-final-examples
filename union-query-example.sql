Select E.Lastname, E.Firstname, J.Description, J.Salary, 'Yes' 'Sr. Exec'
From Job J
Join Employee E
on Jobid = J.id
Where description = 'President' or Description = 'VP'
Union 
Select E.Lastname, E.Firstname, J.Description, J.Salary, 'No' 'Sr. Exec'
From Job J
Join Employee E
on Jobid = J.id
Where not(description = 'President' or Description = 'VP')
order by salary desc

