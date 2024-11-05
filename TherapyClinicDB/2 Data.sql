delete ClientRecord
go

insert ClientRecord(FirstName,LastName, DOB, DateStarted,DateFinished,Frequency,TherapyReason,PrevDiagnoses,Progress)
select 'John Michael', 'Doe', '1990-05-12', '2023-01-15', '2023-07-15', 'Weekly', 'Anxiety and stress', '', 4
union select 'Sarah Ann', 'Smith', '1985-09-22', '2023-03-10', null, 'Bi-weekly', 'Depression', 'Bipolar disorder', 1
union select 'Emily Rose', 'Johnson', '2002-11-03', '2023-04-01', '2023-09-25', 'Twice a week', 'Social anxiety', 'ADHD', 5
union select 'Daniel Lee', 'Brown', '2012-07-08', '2023-02-14', null, 'Weekly', 'Behavioural issues', '', 2
union select 'Margaret', 'Davis', '1956-04-17', '2023-01-22', '2023-10-01', 'Bi-weekly', 'Grief after loss', '', 3
union select 'Alex James', 'Miller', '1999-12-01', '2023-06-20', null, 'Twice a week', 'Career-related stress', 'Generalized anxiety', 2
union select 'Linda Marie', 'Clark', '1995-07-30', '2023-05-18', '2023-10-28', 'Weekly', 'Panic attacks', '', 1
union select 'David Jonathan', 'Wilson', '1988-03-15', '2023-04-10', null, 'Bi-weekly', 'Work-related stress', '', 4
union select 'Sophia Grace', 'Walker', '2009-10-21', '2023-02-28', null, 'Weekly', 'Behavioural issues', '', 3
union select 'Matthew Thomas', 'Scott', '1965-12-25', '2023-03-05', '2023-09-20', 'Bi-weekly', 'Grief after spouse''s death', '', 2


select * from ClientRecord