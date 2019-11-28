use school;

drop table if exists H_TimelineStudents;

drop trigger if exists AddToTimelineInsert;
drop trigger if exists AddToTimelineUpdate;
drop trigger if exists AddToTimelineDelete;

create table H_TimelineStudents(
    uid integer not null primary key auto_increment,
    BeginDate datetime not null,
    EndDate datetime,
    studentId integer not null,
	Name VARCHAR(150) NOT NULL,
	Num INTEGER NOT NULL,
	ClassNum INTEGER NOT NULL,
	ClassLetter CHAR(1) NOT NULL,
	Birthday DATE,
	EGN CHAR(10),
	EntranceExamResult NUMERIC(3,2)
);

delimiter $

create trigger AddToTimelineInsert
    after insert
    on Students
    for each row
    begin
    insert into H_TimelineStudents(BeginDate,
                                   EndDate,
                                   studentId,
                                   Name,
                                   Num,
                                   ClassNum,
                                   ClassLetter,
                                   Birthday,
                                   EGN,
                                   EntranceExamResult)
    values (Now(),
            null,
            NEW.Id,
            NEW.Name,
            NEW.Num,
            NEW.ClassNum,
            NEW.ClassLetter,
            NEW.Birthday,
            NEW.EGN,
            NEW.EntranceExamResult);
    end$

create trigger AddToTimelineUpdate
    after update
    on Students
    for each row
    begin

    update H_TimelineStudents
    set EndDate = Now()
    where studentId = NEW.Id and EndDate is null;


    insert into H_TimelineStudents(BeginDate,
                                   EndDate,
                                   studentId,
                                   Name,
                                   Num,
                                   ClassNum,
                                   ClassLetter,
                                   Birthday,
                                   EGN,
                                   EntranceExamResult)
    values (Now(),
            null,
            NEW.Id,
            NEW.Name,
            NEW.Num,
            NEW.ClassNum,
            NEW.ClassLetter,
            NEW.Birthday,
            NEW.EGN,
            NEW.EntranceExamResult);

end$

create trigger AddToTimelineDelete
    after delete
    on Students
    for each row
    begin

    update H_TimelineStudents
    set EndDate = Now()
    where studentId = OLD.Id and EndDate is null;

end$
delimiter ;

# create trigger AddToHistoryInsert
#     after insert
#     on Students
#     for each row
#     insert into H_Students(EventType, EventDate, studentId)
#     values ('insert', NOW(), NEW.Id);
