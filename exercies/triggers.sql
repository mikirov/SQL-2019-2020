use school;

drop table if exists H_Students;

drop trigger if exists AddToHistoryInsert;
drop trigger if exists AddToHistoryUpdate;
drop trigger if exists AddToHistoryDelete;

create table H_Students(
    uid integer not null primary key auto_increment,
    EventType varchar(10) not null,
    EventDate datetime not null,
    studentId integer
);

create trigger AddToHistoryInsert
    after insert
    on Students
    for each row
    insert into H_Students(EventType, EventDate, studentId)
    values ('insert', NOW(), NEW.Id);

create trigger AddToHistoryUpdate
    after update
    on Students
    for each row
    insert into H_Students(EventType, EventDate, studentId)
    values ('update', NOW(), NEW.Id);

create trigger AddToHistoryDelete
    before delete
    on Students
    for each row
    insert into H_Students(EventType, EventDate, studentId)
    values ('delete', NOW(), OLD.Id);

