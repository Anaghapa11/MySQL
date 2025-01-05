create database Company;
use Company;

-- Create the "Managers" table
create table Managers (
    Manager_Id int auto_increment key,
    First_name varchar(50) not null,
    Last_Name varchar(50) not null,
    DOB date not null,
    Age int check (Age>0),
    Last_update datetime not null,
    Gender char(1) not null check (Gender in ('M', 'F')),
    Department VARCHAR(50) NOT NULL,
    Salary decimal(10, 2) check(Salary>0)
);

insert into Managers (Manager_Id, First_name, Last_Name, DOB, Age, Last_update, Gender, Department, Salary) VALUES
(1, 'Alice', 'Christy', '1985-05-15', 38, current_timestamp, 'M', 'sales', 35000),
(2, 'Jane', 'Smith', '1990-03-22', 33, current_timestamp, 'F', 'HR', 15000),
(3, 'Alice', 'Johnson', '1982-10-12', 41,current_timestamp, 'F', 'IT', 45000),
(4, 'Bob', 'Williams', '1980-09-01', 43, current_timestamp, 'M', 'IT', 52300),
(5, 'Aaliya', 'Khan', '1995-12-30', 27, current_timestamp, 'F', 'Marketing', 25000),
(6, 'Chris', 'Evans', '1975-07-04', 48, current_timestamp, 'M', 'IT', 55000),
(7, 'Steve', 'Rogers', '1988-02-23', 35, current_timestamp, 'M', 'Finance', 29000),
(8, 'Natasha', 'Romanoff', '1980-11-15', 42, current_timestamp, 'F', 'Operations', 30000),
(9, 'Thor', 'Odinson', '1975-05-29', 48, current_timestamp, 'M', 'Sales', 70000),
(10, 'Bruce', 'Banner', '1985-11-28', 37, current_timestamp, 'M', 'Research', 62100);

select * from managers;

-- Retrieve the name and date of birth of the manager with Manager_Id 1
select First_name, Last_Name, DOB from Managers where Manager_Id = 1;

-- Display the annual income of all managers
select First_name, Last_Name, Salary * 12 as Annual_Income from Managers;

-- Display records of all managers except ‘Aaliya’
select * from Managers where First_name <> 'Aaliya';

-- Display details of managers whose department is IT and earns more than 25000 per month
select * from Managers where Department = 'IT' and Salary > 25000;

-- Display details of managers whose salary is between 10000 and 35000
select * from Managers where Salary between 10000 and 35000;


