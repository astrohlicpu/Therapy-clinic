use TherapyClinicDB
go

-- 1) Number of clients per Frequency of appointments, ordered from highest to lowest.
select count(*) as NumClients, c.Frequency
from ClientRecord c
group by c.Frequency
order by NumClients desc

-- 2) The average, minimum, and maximum duration of therapy (in days) for adult clients who have completed therapy. Adults are defined as clients who were at least 20 years old when they began therapy.
select AvgDuration = avg(datediff(day,DateStarted,DateFinished)), MinDuration = min(datediff(day,DateStarted,DateFinished)), MaxDuration = max(datediff(day,DateStarted,DateFinished))
from ClientRecord c
where datediff(year,c.DOB,c.DateStarted) >=20

-- 3) Average improvement level, divided by age groups:  
--    - Group 1: 8–20 years  
--    - Group 2: 21–40 years  
--    - Group 3: 41–65 years  
--    - Group 4: 66+ years  
--    Results should be ordered from highest to lowest.
select 
from ClientRecord c 
-- 4) number of sessions completed for each client (for clients still in therapy calculated until the current date)
-- 5) A list of all clients in the following format:  
--    First and middle name last name. age at the start of therapy, date started – date finished, appointment frequency (reason for therapy).  
--    For clients still in therapy, mark them as ‘still attending.’