-- create table teachers 
create table teachers (
id int primary key,
name varchar(100),
subject varchar(50),
experience int,
salary decimal(10,2));

insert into teachers (id, name, subject, experience, salary) 
values
 (1, 'John Doe', 'Mathematics', 5, 50000.00), 
(2, 'Jane Smith', 'English', 8, 45000.00),
 (3, 'Bill Brown', 'Science', 12, 55000.00),
 (4, 'Emma White', 'History', 3, 40000.00), 
 (5, 'Sophia Green', 'Art', 7, 42000.00),
 (6, 'James Black', 'Physics', 15, 60000.00), 
 (7, 'Olivia Blue', 'Chemistry', 6, 46000.00),
 (8, 'Liam Red', 'Biology', 10, 48000.00);
 
 -- create before insert trigger
 delimiter //
 create trigger beforeinsertteachers
 before insert on teachers
 for each row
 begin
 if new.salary < 0 then
 signal sqlstate '45000' 
 set message_text = 'Salary cannot be negative';
 end if;
 end //
 delimiter ;
 
 -- create after insert trigger
 delimiter //
 create table teacher_log (
    log_id int auto_increment primary key,
    teacher_id int,
    action varchar(50),
    timestamp timestamp default current_timestamp
);
create trigger afterinsertteacher
after insert on teachers
for each row
begin
  insert on teacher_log (teacher_id, action, timestamp)
    values (NEW.id, 'INSERT', NOW());
end;
//
delimiter ;

-- create before teacher delete trigger
delimiter //
create trigger beforedeleteteacher
before delete on teachers
for each row
begin
if old.experience > 10 then
signal sqlstate '45000'
set message_text = 'Cannot delete teacher more than 10 years of experience';
end if;
end //
delimiter ;

-- create after delete teacher trigger
delimiter //
create trigger AfterDeleteteacher
after delete on teachers
for each row
begin
insert into teacher_log(teacher_id,action,timestamp)
values
(old.id,'DELETE',now());
end;
//
delimiter ;
