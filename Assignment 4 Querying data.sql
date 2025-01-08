-- Create the database
CREATE DATABASE PersonAndCountryDB;
use personandcountrydb;

-- crerating tables
create table Country (
    Id int primary key,
    Country_name varchar(100),
    Population int,
    Area float
);

create table Persons (
    Id int primary key,
    Fname varchar(50),
    Lname varchar(50),
    Population int,
    Rating float,
    Country_Id int,
    Country_name varchar(100),
    foreign key (Country_Id) references Country(Id)
);


-- inserting data
insert into Country (Id, Country_name, Population, Area) values
(1, 'USA', 331000000, 9833517),
(2, 'Canada', 37700000, 9984670),
(3, 'UK', 67800000, 243610),
(4, 'India', 1393409038, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83783942, 357022),
(7, 'France', 65273511, 551695),
(8, 'Italy', 60244639, 301340),
(9, 'Brazil', 212559417, 8515767),
(10, 'Japan', 126476461, 377975);

insert into Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) values
(1, 'John', 'Doe', 331000000, 4.8, 1, 'USA'),
(2, 'Jane', 'Smith', 331000000, 4.0, 1, 'USA'),
(3, 'Michael', 'Johnson', 37700000, 5.0, 2, 'Canada'),
(4, 'Emily', 'Davis', 67800000, 3.5, 3, 'UK'),
(5, 'William', 'Wilson', 1393409038, 4.9, 4, 'India'),
(6, 'Olivia', 'Martinez', 25600000, 2.0, 5, 'Australia'),
(7, 'James', 'Garcia', 83783942, 4.2, 6, 'Germany'),
(8, 'Sophia', 'Rodriguez', 65273511, 4.5, 7, 'France'),
(9, 'Isabella', 'Lee', 60244639, 4.7, 8, 'Italy'),
(10, 'Alexander', 'Williams', 212559417, 3.8, 9, 'Brazil');


-- the distinct country names from the persons table
select distinct Country_name from Persons;

-- Select first names and last names from the Persons table with aliases
select Fname as First_Name, Lname as Last_Name from Persons;

-- Finding all persons with a rating greater than 4.0
select * from Persons where Rating > 4.0;

-- Finding countries with a population greater than 10 lakhs
select * from Country where Population > 1000000;

-- Finding persons who are from 'USA' or have a rating greater than 4.5
select * from Persons where Country_name = 'USA' or Rating > 4.5;

-- Finding all persons where the country name is NULL
select * from Persons where Country_name is null;

-- Finding all persons from the countries 'USA', 'Canada', and 'UK'
select * from Persons where Country_name in ('USA', 'Canada', 'UK');

-- Finding all persons not from the countries 'India' and 'Australia'
select * from Persons where Country_name not in ('India', 'Australia');

-- Finding all countries with a population between 5 lakhs and 20 lakhs
select * from Country where Population between 500000 and 2000000;

-- Find all countries whose names do not start with 'C'
select * from Country where Country_name not like 'C%';
