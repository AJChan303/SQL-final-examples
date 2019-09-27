Select Firstname, Lastname, description
from Employee
join job
on jobid = job.id
where Firstname  = 'wylee';

Update employee set
Firstname = 'WyleE',
Lastname = 'Coyote'
where firstname = 'Dahmer' and Lastname = 'Jeffrey';