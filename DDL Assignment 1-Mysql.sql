-- CREATING DATABASE
Create DATABASE SCHOOL;

-- Use the database
USE SCHOOL;

-- CREATING THE TABLE STUDENT
create table Student (
Roll_no int primary key,
Name varchar(100),
Marks int,
Grade char(2)
);

-- inserting data
insert into Student (Roll_no,Name,Marks,Grade)
Values (1,'Tharuni',97,'A'),
(2,'Himaraj',80,'B'),
(3,'Shankar',70,'C');

-- Using select command to display the table
Select * from Student;

-- adding new column  contact
alter table student
add column Contact varchar(50);

-- Removing the Grade column from the table
alter table Student
drop Column Grade;

-- Renaming the student table to classten
Rename table Student to CLASSTEN;

-- Deleting all rows from the table
truncate table CLASSTEN;

-- Removing the table from the Database
drop table CLASSTEN;

-- delete database
drop database SCHOOL;

