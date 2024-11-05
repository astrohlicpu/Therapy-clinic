use TherapyClinicDB
go 

drop table if exists ClientRecord
go
create table dbo.ClientRecord(
    ClientRecordId int primary key identity,
    FirstName varchar(50) not null constraint ck_ClientRecord_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_ClientRecord_LastName_cannot_be_blank check(LastName <> ''),
    DOB date not null constraint ck_ClientRecord_DOB_needs_to_be_more_then_8_years_old check(datediff(year,DOB,getdate()) >=8 ),
    DateStarted date not null,
    DateFinished date null,
    Frequency varchar(12) not null constraint ck_ClientRecord_Frequency_must_be_in_weekly_bi_weekly_or_twice_a_week check(Frequency in ('weekly', 'bi-weekly', 'twice a week')),
    TherapyReason varchar(35) not null constraint ck_ClientRecord_TherapyReason_cannot_be_Borderline_Personality_Disorder_or_Schizophrenia check(TherapyReason not in ('Schizophrenia','Borderline Personality Disorder','BPD')),
    PrevDiagnoses varchar(100) not null,
    Progress tinyint not null constraint ck_ClientRecord_progress_can_only_be_between_1_and_5 check (Progress between 1 and 5),
    ProgressDesc as case Progress when 1 then 'Very worsened'
                        when 2 then 'Worsened'
                        when 3 then 'Stayed the same'
                        when 4 then 'Improved'
                        when 5 then 'Very improved' end ,
    constraint ck_ClientRecord_DateStartd_has_to_be_between_DOB_and_DateFinished check(DateStarted between DOB and DateFinished),
    constraint ck_ClientRecord_DateFinished_has_to_be_at_least_20_weeks_after_DateStarted check(datediff(week,DateStarted,DateFinished)>= 20)
)