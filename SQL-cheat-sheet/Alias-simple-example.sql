Select E.Lastname, E.Firstname, J.Description, J.Salary
from Employee E
Join Job J
on E.jobid = J.ID