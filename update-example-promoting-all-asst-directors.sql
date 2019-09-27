Update employee set
	Jobid = (Select id from job where Description = 'Director')
	Where jobid = (Select id from job where description = 'Asst Director');

Select * from employee
where Jobid = (select id from job where description = 'Asst Director')