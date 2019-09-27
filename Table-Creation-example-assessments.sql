/* Assessments
	-PK Id
	-Technology
	-#  questions
	
Create Table Assements(
	Id int not null primary key identity(1,1),
	Technology Nvarchar(50) not null,
	NbrQuestions int not null default 10
); 
Insert into Assements (Technology, NbrQuestions) Values ('Git' ,5);
Insert into Assements (Technology) Values ('SQL');
Insert into Assements (Technology) Values ('C#');
Insert into Assements (Technology) Values ('JavaScript');
Insert into Assements (Technology) Values ('Angular');

Create Table AssessmentScores(
	Id int not null primary key identity ( 1,1),
	StudentId int not null Foreign Key References Students(Id),
	AssessmentId int not null Foreign Key References Assessments(Id),
	NbrCorrect int not null,
);

Insert into AssessmentScores (StudentID, AssessmentId, NbrCorrect) Values (9, 1, -1); --git
Insert into AssessmentScores (StudentID, AssessmentId, NbrCorrect) Values (9, 2, -4); --SQL
Insert into AssessmentScores (StudentID, AssessmentId, NbrCorrect) Values (9, 3, -2); --C#
Insert into AssessmentScores (StudentID, AssessmentId, NbrCorrect) Values (9, 4, -5); --JS
Insert into AssessmentScores (StudentID, AssessmentId, NbrCorrect) Values (9, 5, -7); --Ang
*/ --Cast(Makes whatever inside Whatever you declare "As Blank")
Select Concat(Lastname, ', ', Firstname) Name, A.NbrQuestions, Sc.NbrCorrect,Cast(((Cast(NbrCorrect as decimal)/ Cast(NbrQuestions as decimal)) * 100) as int) 'Score', A.Technology Assessment, B.Description Bootcamp
	From Students S 
	Join AssessmentScores Sc
		on S.id = sc.Studentid
	Join Assessments A
		on A.id = SC.AssessmentId
	Join Bootcamps B
		on B.id = S.bootcampid
	Where S.Firstname = 'Greg'
	

